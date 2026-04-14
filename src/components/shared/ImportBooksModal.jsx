import React, { useState, useRef, useCallback } from 'react';
import * as XLSX from 'xlsx';
import { supabase } from '../../lib/supabase';

// ───────────────────────────────────────────────
// Mapeamento automático de colunas (PT e EN)
// ───────────────────────────────────────────────
const COLUMN_MAP = {
  title: ['título', 'titulo', 'title', 'nome', 'name', 'livro', 'book'],
  author: ['autor', 'author', 'autora', 'autores'],
  tombstone_number: ['tombo', 'nº tombo', 'no tombo', 'num tombo', 'tombstone', 'registro', 'reg', 'number'],
  shelf_location: ['estante', 'localização', 'localizacao', 'shelf', 'location', 'local', 'cota', 'classif', 'classificação'],
  isbn: ['isbn'],
  publisher: ['editora', 'editor', 'publisher', 'pub'],
  publication_year: ['ano', 'year', 'ano publicação', 'ano publicacao'],
  genre: ['gênero', 'genero', 'genre', 'categoria', 'category', 'assunto', 'subject'],
  quantity: ['quant', 'quantidade', 'quantity', 'qtd', 'qt', 'exemplares', 'ex'],
};

function guessColumnMapping(headers) {
  const mapping = {};
  headers.forEach((h, idx) => {
    const normalized = String(h ?? '').toLowerCase().trim()
      .normalize('NFD').replace(/[\u0300-\u036f]/g, ''); // remove acentos ptr comparação
    for (const [field, aliases] of Object.entries(COLUMN_MAP)) {
      if (!mapping[field]) {
        const noAccent = normalized;
        if (aliases.some(a => {
          const an = a.normalize('NFD').replace(/[\u0300-\u036f]/g, '');
          return noAccent === an || noAccent.includes(an);
        })) {
          mapping[field] = idx;
        }
      }
    }
  });
  return mapping;
}

function readFileAsWorkbook(file) {
  return new Promise((resolve, reject) => {
    const reader = new FileReader();
    reader.onload = (e) => {
      try {
        const data = new Uint8Array(e.target.result);
        const wb = XLSX.read(data, { type: 'array' });
        resolve(wb);
      } catch (err) { reject(err); }
    };
    reader.onerror = reject;
    reader.readAsArrayBuffer(file);
  });
}

function parseWorksheet(ws) {
  const raw = XLSX.utils.sheet_to_json(ws, { header: 1, defval: '' });
  return raw;
}

// Detecta a linha de cabeçalho (pode haver linhas em branco antes)
function detectHeaderRow(rows, minCols = 2) {
  for (let i = 0; i < Math.min(rows.length, 10); i++) {
    const row = rows[i];
    const nonEmpty = row.filter(c => String(c ?? '').trim() !== '').length;
    const hasText = row.some(c => isNaN(c) && String(c ?? '').trim().length > 1);
    if (nonEmpty >= minCols && hasText) return i;
  }
  return 0;
}

// Converte linha de dados para objeto de livro
function rowToBook(row, mapping) {
  const get = (field) => {
    const idx = mapping[field];
    if (idx === undefined) return '';
    return String(row[idx] ?? '').trim();
  };

  // Limpa o tombo (alguns têm múltiplos separados por / ou espaço)
  const rawTombo = get('tombstone_number');
  const tombstone_number = rawTombo.split(/[/,\s]+/)[0].trim(); // pega apenas o primeiro

  const qty = parseInt(get('quantity'), 10);

  return {
    title: get('title'),
    author: get('author') || '',
    tombstone_number,
    shelf_location: get('shelf_location') || '',
    isbn: get('isbn') || null,
    publisher: get('publisher') || null,
    publication_year: parseInt(get('publication_year'), 10) || null,
    genre: get('genre') || null,
    quantity: isNaN(qty) || qty < 1 ? 1 : qty,
    available_quantity: isNaN(qty) || qty < 1 ? 1 : qty,
    description: null,
  };
}

// ───────────────────────────────────────────────
// Componente ColumnMappingTable
// ───────────────────────────────────────────────
const FIELD_LABELS = {
  title: 'Título *',
  author: 'Autor',
  tombstone_number: 'Nº Tombo *',
  shelf_location: 'Estante',
  isbn: 'ISBN',
  publisher: 'Editora',
  publication_year: 'Ano',
  genre: 'Gênero',
  quantity: 'Quantidade',
};

function ColumnMappingTable({ headers, mapping, onMappingChange }) {
  return (
    <div style={{ marginBottom: 20 }}>
      <p style={{ fontWeight: 700, marginBottom: 10, fontSize: '0.875rem' }}>
        🗂️ Mapeamento de Colunas
      </p>
      <p style={{ fontSize: '0.78rem', color: 'var(--color-text-muted)', marginBottom: 12 }}>
        O sistema detectou automaticamente as colunas. Corrija se necessário.
      </p>
      <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: '10px 20px' }}>
        {Object.entries(FIELD_LABELS).map(([field, label]) => (
          <div key={field} className="form-group" style={{ marginBottom: 0 }}>
            <label className="form-label" style={{ fontSize: '0.72rem' }}>{label}</label>
            <select
              className="form-input form-select"
              style={{ padding: '8px 32px 8px 12px', fontSize: '0.83rem' }}
              value={mapping[field] ?? ''}
              onChange={e => onMappingChange(field, e.target.value === '' ? undefined : Number(e.target.value))}
            >
              <option value="">(não importar)</option>
              {headers.map((h, i) => (
                <option key={i} value={i}>Col {i + 1}: {String(h).substring(0, 30)}</option>
              ))}
            </select>
          </div>
        ))}
      </div>
    </div>
  );
}

// ───────────────────────────────────────────────
// Modal principal de importação
// ───────────────────────────────────────────────
export function ImportBooksModal({ onClose, onSuccess, toast }) {
  const fileRef = useRef(null);
  const [step, setStep] = useState('upload'); // upload | preview | importing | done
  const [fileName, setFileName] = useState('');
  const [headers, setHeaders] = useState([]);
  const [dataRows, setDataRows] = useState([]);
  const [mapping, setMapping] = useState({});
  const [preview, setPreview] = useState([]);
  const [sheets, setSheets] = useState([]);
  const [selectedSheet, setSelectedSheet] = useState(0);
  const [workbook, setWorkbook] = useState(null);
  const [importResults, setImportResults] = useState({ ok: 0, skipped: 0, errors: [] });
  const [importing, setImporting] = useState(false);
  const [progress, setProgress] = useState(0);

  const processSheet = useCallback((wb, sheetIdx) => {
    const sheetName = wb.SheetNames[sheetIdx];
    const ws = wb.Sheets[sheetName];
    const rows = parseWorksheet(ws);
    const headerIdx = detectHeaderRow(rows);
    const hRow = rows[headerIdx];
    const dRows = rows.slice(headerIdx + 1).filter(r =>
      r.some(c => String(c ?? '').trim() !== '')
    );
    const autoMap = guessColumnMapping(hRow);
    setHeaders(hRow);
    setDataRows(dRows);
    setMapping(autoMap);
    buildPreview(dRows, autoMap);
  }, []);

  function buildPreview(rows, map) {
    const p = rows.slice(0, 8).map(r => rowToBook(r, map));
    setPreview(p);
  }

  async function handleFile(file) {
    if (!file) return;
    setFileName(file.name);
    try {
      const wb = await readFileAsWorkbook(file);
      setWorkbook(wb);
      setSheets(wb.SheetNames);
      setSelectedSheet(0);
      processSheet(wb, 0);
      setStep('preview');
    } catch {
      toast('Erro ao ler o arquivo. Use XLS, XLSX ou CSV.', 'error');
    }
  }

  function handleDrop(e) {
    e.preventDefault();
    const file = e.dataTransfer.files[0];
    if (file) handleFile(file);
  }

  function handleMappingChange(field, value) {
    const newMap = { ...mapping, [field]: value };
    if (value === undefined) delete newMap[field];
    setMapping(newMap);
    buildPreview(dataRows, newMap);
  }

  function handleSheetChange(idx) {
    setSelectedSheet(idx);
    processSheet(workbook, idx);
  }

  async function handleImport() {
    setImporting(true);
    setStep('importing');
    let ok = 0, skipped = 0;
    const errors = [];
    const batchSize = 20;
    const books = dataRows
      .map(r => rowToBook(r, mapping))
      .filter(b => b.title.trim() !== '' || b.tombstone_number !== '');

    for (let i = 0; i < books.length; i += batchSize) {
      const batch = books.slice(i, i + batchSize);
      const { data, error } = await supabase
        .from('books')
        .upsert(batch, { onConflict: 'tombstone_number', ignoreDuplicates: false });
      if (error) {
        errors.push(`Lote ${Math.floor(i / batchSize) + 1}: ${error.message}`);
        skipped += batch.length;
      } else {
        ok += batch.length;
      }
      setProgress(Math.round(((i + batchSize) / books.length) * 100));
    }

    setImportResults({ ok, skipped, errors });
    setImporting(false);
    setStep('done');
  }

  return (
    <div className="modal-overlay">
      <div className="modal modal-lg" style={{ maxWidth: 760, maxHeight: '90vh', overflowY: 'auto' }}>
        <div className="modal-header">
          <h2 className="modal-title">📂 Importar Livros</h2>
          <button className="btn btn-ghost btn-sm" onClick={onClose} disabled={importing}>✕</button>
        </div>

        {/* ── STEP: UPLOAD ── */}
        {step === 'upload' && (
          <div>
            <p style={{ color: 'var(--color-text-muted)', marginBottom: 20, fontSize: '0.875rem' }}>
              Importe livros em massa via planilha Excel (.xlsx, .xls) ou CSV. Campos não preenchidos serão ignorados.
            </p>

            <div
              onDrop={handleDrop}
              onDragOver={e => e.preventDefault()}
              onClick={() => fileRef.current?.click()}
              style={{
                border: '2px dashed var(--color-border)',
                borderRadius: 'var(--radius-lg)',
                padding: '48px 24px',
                textAlign: 'center',
                cursor: 'pointer',
                transition: 'var(--transition)',
                background: 'var(--color-bg-elevated)',
              }}
              onMouseEnter={e => e.currentTarget.style.borderColor = 'var(--color-primary)'}
              onMouseLeave={e => e.currentTarget.style.borderColor = 'var(--color-border)'}
            >
              <div style={{ fontSize: '2.5rem', marginBottom: 12 }}>📁</div>
              <p style={{ fontWeight: 700, marginBottom: 6 }}>Arraste um arquivo aqui</p>
              <p style={{ color: 'var(--color-text-muted)', fontSize: '0.875rem' }}>
                ou clique para selecionar — .xlsx, .xls, .csv
              </p>
              <input
                ref={fileRef}
                type="file"
                accept=".xlsx,.xls,.csv"
                style={{ display: 'none' }}
                onChange={e => handleFile(e.target.files[0])}
              />
            </div>

            {/* Modelo de exemplo */}
            <div style={{ marginTop: 20, background: 'var(--color-bg-elevated)', borderRadius: 'var(--radius-md)', padding: 16 }}>
              <p style={{ fontWeight: 700, marginBottom: 8, fontSize: '0.83rem' }}>📋 Colunas reconhecidas automaticamente:</p>
              <div style={{ display: 'flex', flexWrap: 'wrap', gap: 6 }}>
                {['Quant.', 'Nº Tombo', 'Estante', 'Título', 'Autor', 'ISBN', 'Editora', 'Ano', 'Gênero'].map(c => (
                  <span key={c} className="badge badge-blue">{c}</span>
                ))}
              </div>
              <p style={{ fontSize: '0.75rem', color: 'var(--color-text-muted)', marginTop: 8 }}>
                Nomes parciais também são reconhecidos (ex: "Tombo", "Autora", "Estante")
              </p>
            </div>
          </div>
        )}

        {/* ── STEP: PREVIEW ── */}
        {step === 'preview' && (
          <div>
            <div style={{ display: 'flex', alignItems: 'center', gap: 12, marginBottom: 16 }}>
              <span style={{ fontSize: '1.2rem' }}>📄</span>
              <div>
                <p style={{ fontWeight: 700 }}>{fileName}</p>
                <p style={{ fontSize: '0.8rem', color: 'var(--color-text-muted)' }}>
                  {dataRows.length} linhas encontradas
                </p>
              </div>
              <button className="btn btn-ghost btn-sm" onClick={() => setStep('upload')}>← Trocar arquivo</button>
            </div>

            {/* Seleção de aba/sheet */}
            {sheets.length > 1 && (
              <div className="form-group">
                <label className="form-label">Aba da planilha</label>
                <select className="form-input form-select" value={selectedSheet} onChange={e => handleSheetChange(Number(e.target.value))}>
                  {sheets.map((s, i) => <option key={i} value={i}>{s}</option>)}
                </select>
              </div>
            )}

            <ColumnMappingTable headers={headers} mapping={mapping} onMappingChange={handleMappingChange} />

            {/* Preview das primeiras linhas */}
            <div style={{ marginBottom: 20 }}>
              <p style={{ fontWeight: 700, marginBottom: 10, fontSize: '0.875rem' }}>
                👁️ Pré-visualização (8 primeiras linhas)
              </p>
              <div className="table-wrapper" style={{ maxHeight: 220, overflowY: 'auto' }}>
                <table>
                  <thead>
                    <tr>
                      <th>Título</th>
                      <th>Autor</th>
                      <th>Tombo</th>
                      <th>Estante</th>
                      <th>Qtd</th>
                    </tr>
                  </thead>
                  <tbody>
                    {preview.map((b, i) => (
                      <tr key={i} style={{ opacity: b.title ? 1 : 0.4 }}>
                        <td style={{ maxWidth: 200 }}>
                          <strong>{b.title || <em style={{ color: 'var(--color-text-muted)' }}>vazio</em>}</strong>
                        </td>
                        <td style={{ color: 'var(--color-text-muted)', fontSize: '0.82rem' }}>{b.author || '-'}</td>
                        <td>
                          {b.tombstone_number
                            ? <span className="badge badge-blue">{b.tombstone_number}</span>
                            : <span className="badge badge-gray">−</span>
                          }
                        </td>
                        <td style={{ fontSize: '0.82rem' }}>{b.shelf_location || '-'}</td>
                        <td style={{ textAlign: 'center' }}>{b.quantity}</td>
                      </tr>
                    ))}
                  </tbody>
                </table>
              </div>
            </div>

            <div style={{
              background: 'rgba(72,187,120,0.08)',
              border: '1px solid rgba(72,187,120,0.2)',
              borderRadius: 'var(--radius-md)',
              padding: '12px 16px',
              fontSize: '0.83rem',
              marginBottom: 8,
            }}>
              ✅ Serão importados <strong>{dataRows.filter(r => r.some(c => String(c ?? '').trim())).length}</strong> livros.
              Tombos duplicados serão <strong>atualizados</strong> (upsert).
            </div>
          </div>
        )}

        {/* ── STEP: IMPORTING ── */}
        {step === 'importing' && (
          <div style={{ textAlign: 'center', padding: '40px 0' }}>
            <div style={{ fontSize: '2.5rem', marginBottom: 16 }}>⏳</div>
            <p style={{ fontWeight: 700, marginBottom: 16 }}>Importando livros...</p>
            <div style={{ background: 'var(--color-bg-elevated)', borderRadius: 100, height: 8, overflow: 'hidden', maxWidth: 400, margin: '0 auto 12px' }}>
              <div style={{
                height: '100%',
                background: 'linear-gradient(90deg, var(--color-primary), var(--color-accent))',
                width: `${progress}%`,
                transition: 'width 0.3s ease',
                borderRadius: 100,
              }} />
            </div>
            <p style={{ color: 'var(--color-text-muted)', fontSize: '0.875rem' }}>{progress}% concluído</p>
          </div>
        )}

        {/* ── STEP: DONE ── */}
        {step === 'done' && (
          <div style={{ textAlign: 'center', padding: '20px 0' }}>
            <div style={{ fontSize: '3rem', marginBottom: 12 }}>
              {importResults.errors.length === 0 ? '🎉' : '⚠️'}
            </div>
            <p style={{ fontWeight: 800, fontSize: '1.15rem', marginBottom: 8 }}>
              Importação concluída!
            </p>
            <div style={{ display: 'flex', gap: 16, justifyContent: 'center', marginBottom: 20, flexWrap: 'wrap' }}>
              <div className="stat-card" style={{ padding: '16px 24px', minWidth: 120 }}>
                <div className="stat-icon green">✅</div>
                <div className="stat-info">
                  <h3>{importResults.ok}</h3>
                  <p>Importados</p>
                </div>
              </div>
              {importResults.skipped > 0 && (
                <div className="stat-card" style={{ padding: '16px 24px', minWidth: 120 }}>
                  <div className="stat-icon orange">⚠️</div>
                  <div className="stat-info">
                    <h3>{importResults.skipped}</h3>
                    <p>Com erro</p>
                  </div>
                </div>
              )}
            </div>
            {importResults.errors.length > 0 && (
              <div style={{ background: 'rgba(252,129,129,0.1)', border: '1px solid rgba(252,129,129,0.2)', borderRadius: 'var(--radius-md)', padding: 16, textAlign: 'left', maxHeight: 120, overflowY: 'auto' }}>
                {importResults.errors.map((e, i) => (
                  <p key={i} style={{ fontSize: '0.8rem', color: 'var(--color-danger)', marginBottom: 4 }}>• {e}</p>
                ))}
              </div>
            )}
          </div>
        )}

        {/* Rodapé de ações */}
        <div className="modal-footer">
          {step === 'done' ? (
            <button className="btn btn-primary btn-full" onClick={() => { onSuccess(); onClose(); }}>
              ✓ Fechar e atualizar acervo
            </button>
          ) : step === 'preview' ? (
            <>
              <button className="btn btn-ghost" onClick={onClose}>Cancelar</button>
              <button
                className="btn btn-success"
                onClick={handleImport}
                disabled={!mapping.title && !mapping.tombstone_number}
              >
                📥 Importar {dataRows.length} livros
              </button>
            </>
          ) : step === 'upload' ? (
            <button className="btn btn-ghost" onClick={onClose}>Cancelar</button>
          ) : null}
        </div>
      </div>
    </div>
  );
}
