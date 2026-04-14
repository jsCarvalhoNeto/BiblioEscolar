import React, { useEffect, useState, useCallback } from 'react';
import { supabase } from '../../lib/supabase';

function formatDate(dateStr) {
  if (!dateStr) return '-';
  return new Date(dateStr + 'T00:00:00').toLocaleDateString('pt-BR');
}

function isOverdue(dueDateStr, status) {
  if (status === 'returned') return false;
  return new Date(dueDateStr + 'T00:00:00') < new Date();
}

function ReturnModal({ loan, onClose, onSuccess, toast }) {
  const [loading, setLoading] = useState(false);

  async function handleReturn() {
    setLoading(true);
    const today = new Date().toISOString().split('T')[0];
    const { error } = await supabase
      .from('loans')
      .update({ status: 'returned', return_date: today })
      .eq('id', loan.id);
    if (error) {
      toast(error.message, 'error');
    } else {
      toast('Devolução registrada com sucesso!', 'success');
      onSuccess();
    }
    setLoading(false);
  }

  return (
    <div className="modal-overlay">
      <div className="modal">
        <div className="modal-header">
          <h2 className="modal-title">📥 Registrar Devolução</h2>
          <button className="btn btn-ghost btn-sm" onClick={onClose}>✕</button>
        </div>
        <p style={{ color: 'var(--color-text-muted)', marginBottom: 20 }}>
          Confirme a devolução do livro abaixo:
        </p>
        <div style={{ background: 'var(--color-bg-elevated)', borderRadius: 'var(--radius-md)', padding: 16, marginBottom: 20 }}>
          <p style={{ fontWeight: 700 }}>{loan.book?.title}</p>
          <p style={{ fontSize: '0.82rem', color: 'var(--color-text-muted)', marginBottom: 8 }}>Por {loan.book?.author}</p>
          <p style={{ fontSize: '0.82rem' }}>Aluno: <strong>{loan.student_name}</strong></p>
          <p style={{ fontSize: '0.82rem' }}>Devolução prevista: <strong>{formatDate(loan.return_due_date)}</strong></p>
          {loan.observations && <p style={{ fontSize: '0.82rem', marginTop: 8, color: 'var(--color-text-light)' }}>OBS: {loan.observations}</p>}
        </div>
        <div className="modal-footer">
          <button className="btn btn-ghost" onClick={onClose}>Cancelar</button>
          <button className="btn btn-success" onClick={handleReturn} disabled={loading}>
            {loading ? <><span className="spinner" style={{ width: 16, height: 16 }}></span> Registrando...</> : '✓ Confirmar Devolução'}
          </button>
        </div>
      </div>
    </div>
  );
}

export function LoansManagementPanel({ toast }) {
  const [loans, setLoans] = useState([]);
  const [loading, setLoading] = useState(true);
  const [filter, setFilter] = useState('active');
  const [search, setSearch] = useState('');
  const [returningLoan, setReturningLoan] = useState(null);

  const loadLoans = useCallback(async () => {
    setLoading(true);
    let query = supabase
      .from('loans')
      .select('*, book:books(title, author, tombstone_number, shelf_location)')
      .order('loan_date', { ascending: false });

    if (filter !== 'all') query = query.eq('status', filter);

    const { data } = await query;
    setLoans(data ?? []);
    setLoading(false);
  }, [filter]);

  useEffect(() => { loadLoans(); }, [loadLoans]);

  const filtered = loans.filter(l =>
    l.student_name?.toLowerCase().includes(search.toLowerCase()) ||
    l.book?.title?.toLowerCase().includes(search.toLowerCase()) ||
    l.book?.tombstone_number?.toLowerCase().includes(search.toLowerCase())
  );

  const handleReturnSuccess = async () => {
    setReturningLoan(null);
    await loadLoans();
  };

  const statusLabel = { active: 'Ativos', overdue: 'Em Atraso', returned: 'Devolvidos', all: 'Todos' };

  return (
    <div>
      <div className="page-header">
        <h1 className="page-title">🔄 Gerenciar Locações</h1>
        <p className="page-subtitle">Visualize e gerencie os empréstimos de livros</p>
      </div>

      <div className="card" style={{ marginBottom: 24 }}>
        <div style={{ display: 'flex', gap: 12, flexWrap: 'wrap', marginBottom: 16 }}>
          {['all', 'active', 'overdue', 'returned'].map(s => (
            <button
              key={s}
              className={`btn btn-sm ${filter === s ? 'btn-primary' : 'btn-ghost'}`}
              onClick={() => setFilter(s)}
            >
              {statusLabel[s]}
            </button>
          ))}
        </div>
        <div className="search-bar">
          <span className="search-bar-icon">🔍</span>
          <input
            id="loans-search-input"
            type="text"
            className="form-input search-input"
            placeholder="Buscar por aluno, livro ou tombo..."
            value={search}
            onChange={e => setSearch(e.target.value)}
          />
        </div>
      </div>

      {loading ? (
        <div className="loading-overlay"><div className="spinner"></div> Carregando...</div>
      ) : filtered.length === 0 ? (
        <div className="empty-state">
          <div className="empty-state-icon">📭</div>
          <h3>Nenhuma locação encontrada</h3>
          <p>Tente alterar os filtros ou buscar por outro termo.</p>
        </div>
      ) : (
        <div className="card">
          <div className="table-wrapper">
            <table>
              <thead>
                <tr>
                  <th>Livro</th>
                  <th>Aluno</th>
                  <th>Tombo</th>
                  <th>Estante</th>
                  <th>Empréstimo</th>
                  <th>Devolução</th>
                  <th>OBS</th>
                  <th>Status</th>
                  <th>Ação</th>
                </tr>
              </thead>
              <tbody>
                {filtered.map(loan => {
                  const overdue = isOverdue(loan.return_due_date, loan.status);
                  const status = loan.status === 'returned' ? 'returned'
                    : overdue ? 'overdue' : 'active';
                  return (
                    <tr key={loan.id}>
                      <td>
                        <strong style={{ display: 'block', maxWidth: 200 }}>{loan.book?.title}</strong>
                        <small style={{ color: 'var(--color-text-muted)' }}>{loan.book?.author}</small>
                      </td>
                      <td>{loan.student_name}</td>
                      <td><span className="badge badge-blue">{loan.book?.tombstone_number}</span></td>
                      <td><span className="book-meta-item shelf-tag" style={{ fontSize: '0.75rem' }}>📍 {loan.book?.shelf_location}</span></td>
                      <td>{formatDate(loan.loan_date)}</td>
                      <td style={{ fontWeight: overdue ? 700 : 400, color: overdue ? 'var(--color-danger)' : 'inherit' }}>
                        {formatDate(loan.return_due_date)}
                        {overdue && <span style={{ display: 'block', fontSize: '0.7rem', color: 'var(--color-danger)' }}>ATRASADO</span>}
                      </td>
                      <td style={{ maxWidth: 120, fontSize: '0.8rem', color: 'var(--color-text-muted)' }}>
                        {loan.observations ?? '-'}
                      </td>
                      <td>
                        {status === 'returned' && <span className="badge badge-green">✓ Devolvido</span>}
                        {status === 'overdue' && <span className="badge badge-red">⚠ Atrasado</span>}
                        {status === 'active' && <span className="badge badge-blue">📖 Ativo</span>}
                      </td>
                      <td>
                        {loan.status !== 'returned' && (
                          <button
                            className="btn btn-sm btn-success"
                            onClick={() => setReturningLoan(loan)}
                          >
                            📥 Devolver
                          </button>
                        )}
                        {loan.status === 'returned' && (
                          <span style={{ fontSize: '0.78rem', color: 'var(--color-text-muted)' }}>
                            {formatDate(loan.return_date)}
                          </span>
                        )}
                      </td>
                    </tr>
                  );
                })}
              </tbody>
            </table>
          </div>
        </div>
      )}

      {returningLoan && (
        <ReturnModal
          loan={returningLoan}
          onClose={() => setReturningLoan(null)}
          onSuccess={handleReturnSuccess}
          toast={toast}
        />
      )}
    </div>
  );
}
