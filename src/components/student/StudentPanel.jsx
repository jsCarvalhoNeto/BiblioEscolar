import React, { useEffect, useState } from 'react';
import { supabase } from '../../lib/supabase';
import { useAuth } from '../../context/AuthContext';

function formatDate(dateStr) {
  if (!dateStr) return '-';
  return new Date(dateStr + 'T00:00:00').toLocaleDateString('pt-BR');
}

function isOverdue(dueDateStr) {
  return new Date(dueDateStr + 'T00:00:00') < new Date();
}

export function StudentPanel() {
  const { profile } = useAuth();
  const [loans, setLoans] = useState([]);
  const [books, setBooks] = useState([]);
  const [loading, setLoading] = useState(true);
  const [tab, setTab] = useState('loans');
  const [search, setSearch] = useState('');

  useEffect(() => {
    async function load() {
      setLoading(true);
      const [{ data: loansData }, { data: booksData }] = await Promise.all([
        supabase
          .from('loans')
          .select('*, book:books(title, author, tombstone_number, shelf_location, genre)')
          .eq('student_id', profile.id)
          .order('loan_date', { ascending: false }),
        supabase
          .from('books')
          .select('*')
          .gt('available_quantity', 0)
          .order('title'),
      ]);
      setLoans(loansData ?? []);
      setBooks(booksData ?? []);
      setLoading(false);
    }
    load();
  }, [profile.id]);

  const filteredBooks = books.filter(b =>
    b.title?.toLowerCase().includes(search.toLowerCase()) ||
    b.author?.toLowerCase().includes(search.toLowerCase()) ||
    b.genre?.toLowerCase().includes(search.toLowerCase())
  );

  const activeLoans = loans.filter(l => l.status !== 'returned');
  const returnedLoans = loans.filter(l => l.status === 'returned');

  return (
    <div>
      <div className="page-header">
        <h1 className="page-title">Olá, {profile.full_name.split(' ')[0]}! 👋</h1>
        <p className="page-subtitle">Bem-vindo ao sistema da biblioteca</p>
      </div>

      {/* Cards de resumo */}
      <div className="stats-grid" style={{ marginBottom: 28 }}>
        <div className="stat-card">
          <div className="stat-icon blue">📖</div>
          <div className="stat-info">
            <h3>{activeLoans.length}</h3>
            <p>Livros em mão</p>
          </div>
        </div>
        <div className="stat-card">
          <div className="stat-icon orange">⚠️</div>
          <div className="stat-info">
            <h3>{activeLoans.filter(l => isOverdue(l.return_due_date)).length}</h3>
            <p>Com atraso</p>
          </div>
        </div>
        <div className="stat-card">
          <div className="stat-icon green">✅</div>
          <div className="stat-info">
            <h3>{returnedLoans.length}</h3>
            <p>Devolvidos</p>
          </div>
        </div>
        <div className="stat-card">
          <div className="stat-icon blue">📚</div>
          <div className="stat-info">
            <h3>{books.length}</h3>
            <p>Disponíveis</p>
          </div>
        </div>
      </div>

      {/* Tabs */}
      <div style={{ display: 'flex', gap: 8, marginBottom: 20 }}>
        <button className={`btn ${tab === 'loans' ? 'btn-primary' : 'btn-ghost'}`} onClick={() => setTab('loans')}>
          📖 Meus Empréstimos
        </button>
        <button className={`btn ${tab === 'catalog' ? 'btn-primary' : 'btn-ghost'}`} onClick={() => setTab('catalog')}>
          🗂️ Catálogo
        </button>
      </div>

      {loading ? (
        <div className="loading-overlay"><div className="spinner"></div> Carregando...</div>
      ) : tab === 'loans' ? (
        <div>
          {loans.length === 0 ? (
            <div className="empty-state">
              <div className="empty-state-icon">📭</div>
              <h3>Nenhum empréstimo</h3>
              <p>Você não tem livros emprestados no momento. Explore o catálogo!</p>
            </div>
          ) : (
            <>
              {activeLoans.length > 0 && (
                <>
                  <p style={{ fontWeight: 700, marginBottom: 12, color: 'var(--color-text-light)', fontSize: '0.85rem', textTransform: 'uppercase', letterSpacing: '0.8px' }}>
                    Em andamento ({activeLoans.length})
                  </p>
                  {activeLoans.map(loan => {
                    const overdue = isOverdue(loan.return_due_date);
                    return (
                      <div key={loan.id} className="loan-card" style={{ borderLeft: overdue ? '3px solid var(--color-danger)' : '3px solid var(--color-primary)' }}>
                        <div className="loan-card-left">
                          <h3>{loan.book?.title}</h3>
                          <p>Por {loan.book?.author}</p>
                          <div style={{ display: 'flex', gap: 8, flexWrap: 'wrap', marginBottom: 8 }}>
                            <span className="book-meta-item shelf-tag" style={{ fontSize: '0.75rem' }}>📍 {loan.book?.shelf_location}</span>
                            <span className="book-meta-item tombstone-tag" style={{ fontSize: '0.75rem' }}>🔖 {loan.book?.tombstone_number}</span>
                          </div>
                          <div className="loan-dates">
                            <div className="loan-date-item">
                              <p className="loan-date-label">Empréstimo</p>
                              <p className="loan-date-value">{formatDate(loan.loan_date)}</p>
                            </div>
                            <div className="loan-date-item">
                              <p className="loan-date-label">Devolução prevista</p>
                              <p className="loan-date-value" style={{ color: overdue ? 'var(--color-danger)' : 'inherit' }}>
                                {formatDate(loan.return_due_date)}
                                {overdue && ' ⚠️'}
                              </p>
                            </div>
                          </div>
                        </div>
                        <div>
                          {overdue
                            ? <span className="badge badge-red">⚠ Atrasado</span>
                            : <span className="badge badge-blue">📖 Ativo</span>
                          }
                        </div>
                      </div>
                    );
                  })}
                </>
              )}

              {returnedLoans.length > 0 && (
                <>
                  <p style={{ fontWeight: 700, margin: '24px 0 12px', color: 'var(--color-text-light)', fontSize: '0.85rem', textTransform: 'uppercase', letterSpacing: '0.8px' }}>
                    Histórico ({returnedLoans.length})
                  </p>
                  {returnedLoans.map(loan => (
                    <div key={loan.id} className="loan-card" style={{ opacity: 0.7, borderLeft: '3px solid var(--color-accent)' }}>
                      <div className="loan-card-left">
                        <h3>{loan.book?.title}</h3>
                        <p>Por {loan.book?.author}</p>
                        <div className="loan-dates">
                          <div className="loan-date-item">
                            <p className="loan-date-label">Devolvido em</p>
                            <p className="loan-date-value">{formatDate(loan.return_date)}</p>
                          </div>
                        </div>
                      </div>
                      <span className="badge badge-green">✓ Devolvido</span>
                    </div>
                  ))}
                </>
              )}
            </>
          )}
        </div>
      ) : (
        <div>
          <div className="card" style={{ marginBottom: 20 }}>
            <div className="search-bar">
              <span className="search-bar-icon">🔍</span>
              <input
                id="student-catalog-search"
                type="text"
                className="form-input search-input"
                placeholder="Buscar por título, autor ou gênero..."
                value={search}
                onChange={e => setSearch(e.target.value)}
              />
            </div>
          </div>

          {filteredBooks.length === 0 ? (
            <div className="empty-state">
              <div className="empty-state-icon">😔</div>
              <h3>Nenhum livro disponível</h3>
              <p>{search ? 'Tente outros termos.' : 'Todos os livros estão emprestados no momento.'}</p>
            </div>
          ) : (
            <div style={{ display: 'flex', flexDirection: 'column', gap: 12 }}>
              {filteredBooks.map(book => (
                <div key={book.id} className="book-result-card">
                  <div className="book-cover-placeholder">📖</div>
                  <div className="book-info">
                    <h3>{book.title}</h3>
                    <p className="book-author">Por {book.author}</p>
                    <div className="book-meta">
                      <span className="book-meta-item shelf-tag">📍 Estante: {book.shelf_location}</span>
                      <span className="book-meta-item tombstone-tag">🔖 Tombo: {book.tombstone_number}</span>
                      {book.genre && <span className="book-meta-item">🏷️ {book.genre}</span>}
                      <span className="badge badge-green">✓ Disponível ({book.available_quantity})</span>
                    </div>
                    {book.description && (
                      <p style={{ fontSize: '0.8rem', color: 'var(--color-text-muted)', marginTop: 8, lineHeight: 1.5 }}>
                        {book.description}
                      </p>
                    )}
                  </div>
                </div>
              ))}
            </div>
          )}
        </div>
      )}
    </div>
  );
}
