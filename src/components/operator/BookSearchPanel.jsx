import React, { useEffect, useState, useCallback } from 'react';
import { supabase } from '../../lib/supabase';
import { useAuth } from '../../context/AuthContext';
import { BookFormModal } from '../shared/BookFormModal';

function formatDate(dateStr) {
  if (!dateStr) return '-';
  return new Date(dateStr + 'T00:00:00').toLocaleDateString('pt-BR');
}

function BookResultCard({ book, onSelect, onEdit, onDelete, canManage }) {
  const available = book.available_quantity > 0;
  return (
    <div className="book-result-card">
      <div className="book-cover-placeholder">📖</div>
      <div className="book-info" style={{ flex: 1 }}>
        <h3>{book.title}</h3>
        <p className="book-author">Por {book.author}</p>
        <div className="book-meta">
          <span className="book-meta-item shelf-tag">
            📍 Estante: <strong>{book.shelf_location}</strong>
          </span>
          <span className="book-meta-item tombstone-tag">
            🔖 Tombo: <strong>{book.tombstone_number}</strong>
          </span>
          {book.genre && (
            <span className="book-meta-item">🏷️ {book.genre}</span>
          )}
          {book.publication_year && (
            <span className="book-meta-item">📅 {book.publication_year}</span>
          )}
          <span className={`badge ${available ? 'badge-green' : 'badge-red'}`}>
            {available ? `✓ Disponível (${book.available_quantity}/${book.quantity})` : '✗ Indisponível'}
          </span>
        </div>
      </div>
      <div style={{ display: 'flex', flexDirection: 'column', gap: 8, flexShrink: 0 }}>
        <button
          className="btn btn-primary btn-sm"
          onClick={() => onSelect(book)}
          disabled={!available}
        >
          📋 Locar
        </button>
        {canManage && (
          <div style={{ display: 'flex', gap: 8 }}>
            <button
              className="btn btn-outline btn-sm"
              style={{ flex: 1, padding: '6px' }}
              onClick={() => onEdit(book)}
              title="Editar Livro"
            >
              ✏️
            </button>
            <button
              className="btn btn-danger btn-sm"
              style={{ flex: 1, padding: '6px' }}
              onClick={() => onDelete(book)}
              title="Excluir Livro"
            >
              🗑️
            </button>
          </div>
        )}
      </div>
    </div>
  );
}

function LoanModal({ book, onClose, onSuccess, toast }) {
  const { profile } = useAuth();
  const [studentName, setStudentName] = useState('');
  const [dueDate, setDueDate] = useState('');
  const [obs, setObs] = useState('');
  const [loading, setLoading] = useState(false);

  // Data atual e data mínima de devolução (amanhã)
  const today = new Date().toISOString().split('T')[0];
  const minDue = new Date(Date.now() + 86400000).toISOString().split('T')[0];

  async function handleSubmit(e) {
    e.preventDefault();
    if (!studentName.trim()) return;
    setLoading(true);
    const { error } = await supabase.from('loans').insert({
      book_id: book.id,
      student_name: studentName.trim(),
      operator_id: profile.id,
      loan_date: today,
      return_due_date: dueDate,
      observations: obs.trim() || null,
      status: 'active',
    });
    if (error) {
      toast(error.message, 'error');
    } else {
      toast(`Locação de "${book.title}" registrada com sucesso!`, 'success');
      onSuccess();
    }
    setLoading(false);
  }

  return (
    <div className="modal-overlay">
      <div className="modal">
        <div className="modal-header">
          <h2 className="modal-title">📋 Registrar Locação</h2>
          <button className="btn btn-ghost btn-sm" onClick={onClose}>✕</button>
        </div>

        {/* Resumo do livro */}
        <div style={{
          background: 'var(--color-bg-elevated)',
          border: '1px solid var(--color-border)',
          borderRadius: 'var(--radius-md)',
          padding: '16px',
          marginBottom: '20px',
        }}>
          <p style={{ fontWeight: 700, fontSize: '0.95rem' }}>{book.title}</p>
          <p style={{ fontSize: '0.82rem', color: 'var(--color-text-muted)', marginBottom: 8 }}>Por {book.author}</p>
          <div style={{ display: 'flex', gap: 8, flexWrap: 'wrap' }}>
            <span className="book-meta-item shelf-tag">📍 {book.shelf_location}</span>
            <span className="book-meta-item tombstone-tag">🔖 Tombo {book.tombstone_number}</span>
          </div>
        </div>

        <form onSubmit={handleSubmit}>
          <div className="form-group">
            <label className="form-label" htmlFor="loan-student-name">Nome Completo do Aluno *</label>
            <input
              id="loan-student-name"
              type="text"
              className="form-input"
              placeholder="Ex: João Carlos da Silva"
              value={studentName}
              onChange={e => setStudentName(e.target.value)}
              required
              autoFocus
            />
          </div>

          <div className="loan-dates-row">
            <div className="form-group">
              <label className="form-label" htmlFor="loan-date">Data do Empréstimo</label>
              <input
                id="loan-date"
                type="date"
                className="form-input"
                value={today}
                readOnly
                style={{ opacity: 0.7, cursor: 'not-allowed' }}
              />
            </div>
            <div className="form-group">
              <label className="form-label" htmlFor="loan-due-date">Data de Devolução *</label>
              <input
                id="loan-due-date"
                type="date"
                className="form-input"
                min={minDue}
                value={dueDate}
                onChange={e => setDueDate(e.target.value)}
                required
              />
            </div>
          </div>

          <div className="form-group">
            <label className="form-label" htmlFor="loan-obs">Observações</label>
            <textarea
              id="loan-obs"
              className="form-input form-textarea"
              placeholder="Condição do livro, observações especiais..."
              value={obs}
              onChange={e => setObs(e.target.value)}
            />
          </div>

          <div className="modal-footer">
            <button type="button" className="btn btn-ghost" onClick={onClose}>Cancelar</button>
            <button type="submit" className="btn btn-success" disabled={loading}>
              {loading ? <><span className="spinner" style={{ width: 16, height: 16 }}></span> Registrando...</> : '✓ Confirmar Locação'}
            </button>
          </div>
        </form>
      </div>
    </div>
  );
}

export function BookSearchPanel({ toast }) {
  const { profile } = useAuth();
  const [query, setQuery] = useState('');
  const [results, setResults] = useState([]);
  const [loading, setLoading] = useState(false);
  const [searched, setSearched] = useState(false);
  const [selectedBook, setSelectedBook] = useState(null);
  const [editingBook, setEditingBook] = useState(null);
  const [showEditModal, setShowEditModal] = useState(false);

  const canManage = profile?.role === 'admin' || profile?.role === 'operator';

  const search = useCallback(async (q) => {
    if (!q.trim()) { setResults([]); setSearched(false); return; }
    setLoading(true);
    setSearched(true);
    const { data } = await supabase
      .from('books')
      .select('*')
      .or(`title.ilike.%${q}%,author.ilike.%${q}%,tombstone_number.ilike.%${q}%,isbn.ilike.%${q}%`)
      .order('title');
    setResults(data ?? []);
    setLoading(false);
  }, []);

  useEffect(() => {
    const timer = setTimeout(() => search(query), 400);
    return () => clearTimeout(timer);
  }, [query, search]);

  async function handleLoanSuccess() {
    setSelectedBook(null);
    await search(query);
  }

  async function handleDelete(book) {
    if (!window.confirm(`Tem certeza que deseja excluir o livro "${book.title}"? Esta ação não pode ser desfeita.`)) return;
    const { error } = await supabase.from('books').delete().eq('id', book.id);
    if (error) {
      toast(error.message, 'error');
    } else {
      toast('Livro excluído com sucesso!', 'info');
      search(query);
    }
  }

  function handleEditSuccess() {
    setShowEditModal(false);
    setEditingBook(null);
    search(query);
  }

  return (
    <div>
      <div className="page-header">
        <h1 className="page-title">🔍 Buscar Livros</h1>
        <p className="page-subtitle">Pesquise por título, autor, ISBN ou número de tombo</p>
      </div>

      <div className="card" style={{ marginBottom: 24 }}>
        <div className="search-bar">
          <span className="search-bar-icon">🔍</span>
          <input
            id="book-search-input"
            type="text"
            className="form-input search-input"
            placeholder="Digite o título, autor ou número do tombo..."
            value={query}
            onChange={e => setQuery(e.target.value)}
            autoFocus
          />
        </div>
        {query && (
          <p style={{ fontSize: '0.8rem', color: 'var(--color-text-muted)', marginTop: 8 }}>
            {loading ? 'Buscando...' : `${results.length} resultado(s) encontrado(s)`}
          </p>
        )}
      </div>

      {loading && (
        <div className="loading-overlay">
          <div className="spinner"></div>
          <span>Buscando livros...</span>
        </div>
      )}

      {!loading && searched && results.length === 0 && (
        <div className="empty-state">
          <div className="empty-state-icon">📭</div>
          <h3>Nenhum livro encontrado</h3>
          <p>Tente pesquisar com outros termos ou verifique o número do tombo.</p>
        </div>
      )}

      {!loading && !searched && (
        <div className="empty-state">
          <div className="empty-state-icon">📚</div>
          <h3>Pesquise o acervo</h3>
          <p>Digite no campo acima para encontrar livros por título, autor ou tombo.</p>
        </div>
      )}

      {!loading && results.length > 0 && (
        <div style={{ display: 'flex', flexDirection: 'column', gap: 12 }}>
          {results.map(book => (
            <BookResultCard
              key={book.id}
              book={book}
              onSelect={setSelectedBook}
              onEdit={(b) => { setEditingBook(b); setShowEditModal(true); }}
              onDelete={handleDelete}
              canManage={canManage}
            />
          ))}
        </div>
      )}

      {showEditModal && (
        <BookFormModal
          book={editingBook}
          onClose={() => { setShowEditModal(false); setEditingBook(null); }}
          onSuccess={handleEditSuccess}
          toast={toast}
        />
      )}

      {selectedBook && (
        <LoanModal
          book={selectedBook}
          onClose={() => setSelectedBook(null)}
          onSuccess={handleLoanSuccess}
          toast={toast}
        />
      )}
    </div>
  );
}
