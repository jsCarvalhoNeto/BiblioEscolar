import React, { useEffect, useState, useCallback } from 'react';
import { supabase } from '../../lib/supabase';
import { useAuth } from '../../context/AuthContext';
import { BookFormModal } from './BookFormModal';

export function BooksPanel({ toast, isAdmin }) {
  const [books, setBooks] = useState([]);
  const [loading, setLoading] = useState(true);
  const [search, setSearch] = useState('');
  const [editingBook, setEditingBook] = useState(null);
  const [showForm, setShowForm] = useState(false);
  const [showImport, setShowImport] = useState(false);

  const loadBooks = useCallback(async () => {
    setLoading(true);
    const { data } = await supabase.from('books').select('*').order('title');
    setBooks(data ?? []);
    setLoading(false);
  }, []);

  useEffect(() => { loadBooks(); }, [loadBooks]);

  const filtered = books.filter(b =>
    b.title?.toLowerCase().includes(search.toLowerCase()) ||
    b.author?.toLowerCase().includes(search.toLowerCase()) ||
    b.tombstone_number?.toLowerCase().includes(search.toLowerCase())
  );

  async function handleDelete(book) {
    if (!window.confirm(`Deletar "${book.title}"? Esta ação não pode ser desfeita.`)) return;
    const { error } = await supabase.from('books').delete().eq('id', book.id);
    if (error) toast(error.message, 'error');
    else { toast('Livro removido.', 'info'); loadBooks(); }
  }

  function handleSuccess() {
    setEditingBook(null);
    setShowForm(false);
    loadBooks();
  }

  return (
    <div>
      <div className="page-header" style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'flex-start', flexWrap: 'wrap', gap: 16 }}>
        <div>
          <h1 className="page-title">📚 Acervo de Livros</h1>
          <p className="page-subtitle">Gerencie o catálogo de livros da biblioteca</p>
        </div>
        <div style={{ display: 'flex', gap: 10 }}>
          <button className="btn btn-outline" onClick={() => setShowImport(true)} title="Importar planilha Excel ou CSV">
            📂 Importar Planilha
          </button>
          <button className="btn btn-primary" onClick={() => setShowForm(true)}>
            + Cadastrar Livro
          </button>
        </div>
      </div>

      <div className="card" style={{ marginBottom: 24 }}>
        <div className="search-bar">
          <span className="search-bar-icon">🔍</span>
          <input
            id="books-catalog-search"
            type="text"
            className="form-input search-input"
            placeholder="Buscar por título, autor ou tombo..."
            value={search}
            onChange={e => setSearch(e.target.value)}
          />
        </div>
      </div>

      {loading ? (
        <div className="loading-overlay"><div className="spinner"></div> Carregando acervo...</div>
      ) : filtered.length === 0 ? (
        <div className="empty-state">
          <div className="empty-state-icon">📭</div>
          <h3>Nenhum livro encontrado</h3>
          <p>{search ? 'Tente outros termos de busca.' : 'Cadastre o primeiro livro clicando no botão acima.'}</p>
        </div>
      ) : (
        <div className="card">
          <div className="table-wrapper">
            <table>
              <thead>
                <tr>
                  <th>Título</th>
                  <th>Autor</th>
                  <th>Tombo</th>
                  <th>Estante</th>
                  <th>Gênero</th>
                  <th>Disponível</th>
                  <th>Ações</th>
                </tr>
              </thead>
              <tbody>
                {filtered.map(book => (
                  <tr key={book.id}>
                    <td>
                      <strong>{book.title}</strong>
                      {book.isbn && <div style={{ fontSize: '0.75rem', color: 'var(--color-text-muted)' }}>ISBN: {book.isbn}</div>}
                    </td>
                    <td>{book.author}</td>
                    <td><span className="badge badge-blue">{book.tombstone_number}</span></td>
                    <td><span className="book-meta-item shelf-tag" style={{ fontSize: '0.75rem' }}>📍 {book.shelf_location}</span></td>
                    <td>{book.genre ?? '-'}</td>
                    <td>
                      <span className={`badge ${book.available_quantity > 0 ? 'badge-green' : 'badge-red'}`}>
                        {book.available_quantity}/{book.quantity}
                      </span>
                    </td>
                    <td>
                      <div style={{ display: 'flex', gap: 8 }}>
                        <button className="btn btn-sm btn-ghost" onClick={() => { setEditingBook(book); setShowForm(true); }}>
                          ✏️
                        </button>
                        {isAdmin && (
                          <button className="btn btn-sm btn-danger" onClick={() => handleDelete(book)}>
                            🗑️
                          </button>
                        )}
                      </div>
                    </td>
                  </tr>
                ))}
              </tbody>
            </table>
          </div>
        </div>
      )}

      {showForm && (
        <BookFormModal
          book={editingBook}
          onClose={() => { setShowForm(false); setEditingBook(null); }}
          onSuccess={handleSuccess}
          toast={toast}
        />
      )}

      {showImport && (
        <ImportBooksModal
          onClose={() => setShowImport(false)}
          onSuccess={() => { toast(`Importação concluída! Acervo atualizado.`, 'success'); loadBooks(); }}
          toast={toast}
        />
      )}
    </div>
  );
}
