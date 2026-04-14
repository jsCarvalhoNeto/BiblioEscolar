import React, { useState } from 'react';
import { supabase } from '../../lib/supabase';
import { useAuth } from '../../context/AuthContext';

export function BookFormModal({ book, onClose, onSuccess, toast }) {
  const { profile } = useAuth();
  const [form, setForm] = useState({
    title: book?.title ?? '',
    author: book?.author ?? '',
    isbn: book?.isbn ?? '',
    shelf_location: book?.shelf_location ?? '',
    tombstone_number: book?.tombstone_number ?? '',
    publisher: book?.publisher ?? '',
    publication_year: book?.publication_year ?? '',
    genre: book?.genre ?? '',
    quantity: book?.quantity ?? 1,
    description: book?.description ?? '',
  });
  const [loading, setLoading] = useState(false);

  const set = (field, value) => setForm(f => ({ ...f, [field]: value }));

  async function handleSubmit(e) {
    e.preventDefault();
    setLoading(true);

    const payload = {
      ...form,
      quantity: Number(form.quantity),
      publication_year: form.publication_year ? Number(form.publication_year) : null,
    };

    let error;
    if (book) {
      // Na edição, não mexemos na available_quantity diretamente aqui para evitar bugs de concorrência simples
      // Mas se a quantidade total aumentar, poderíamos aumentar a disponível. 
      // Por simplicidade técnica neste momento, atualizamos apenas os metadados.
      ({ error } = await supabase.from('books').update(payload).eq('id', book.id));
    } else {
      payload.available_quantity = Number(form.quantity);
      ({ error } = await supabase.from('books').insert(payload));
    }

    if (error) {
      toast(error.message, 'error');
    } else {
      toast(book ? 'Livro atualizado!' : 'Livro cadastrado com sucesso!', 'success');
      onSuccess();
    }
    setLoading(false);
  }

  return (
    <div className="modal-overlay">
      <div className="modal modal-lg">
        <div className="modal-header">
          <h2 className="modal-title">{book ? '✏️ Editar Livro' : '📚 Cadastrar Livro'}</h2>
          <button className="btn btn-ghost btn-sm" onClick={onClose}>✕</button>
        </div>
        <form onSubmit={handleSubmit}>
          <div className="form-row">
            <div className="form-group" style={{ gridColumn: '1 / -1' }}>
              <label className="form-label" htmlFor="book-title">Título *</label>
              <input id="book-title" type="text" className="form-input" placeholder="Título do livro" value={form.title} onChange={e => set('title', e.target.value)} required />
            </div>
            <div className="form-group">
              <label className="form-label" htmlFor="book-author">Autor *</label>
              <input id="book-author" type="text" className="form-input" placeholder="Nome do autor" value={form.author} onChange={e => set('author', e.target.value)} required />
            </div>
            <div className="form-group">
              <label className="form-label" htmlFor="book-isbn">ISBN</label>
              <input id="book-isbn" type="text" className="form-input" placeholder="978-..." value={form.isbn} onChange={e => set('isbn', e.target.value)} />
            </div>
            <div className="form-group">
              <label className="form-label" htmlFor="book-tombstone">Nº Tombo *</label>
              <input id="book-tombstone" type="text" className="form-input" placeholder="Ex: LV-0001" value={form.tombstone_number} onChange={e => set('tombstone_number', e.target.value)} required />
            </div>
            <div className="form-group">
              <label className="form-label" htmlFor="book-shelf">Localização / Estante *</label>
              <input id="book-shelf" type="text" className="form-input" placeholder="Ex: A3 – Ficção" value={form.shelf_location} onChange={e => set('shelf_location', e.target.value)} required />
            </div>
            <div className="form-group">
              <label className="form-label" htmlFor="book-publisher">Editora</label>
              <input id="book-publisher" type="text" className="form-input" placeholder="Nome da editora" value={form.publisher} onChange={e => set('publisher', e.target.value)} />
            </div>
            <div className="form-group">
              <label className="form-label" htmlFor="book-year">Ano de Publicação</label>
              <input id="book-year" type="number" className="form-input" placeholder="Ex: 2020" value={form.publication_year} onChange={e => set('publication_year', e.target.value)} min="1800" max="2030" />
            </div>
            <div className="form-group">
              <label className="form-label" htmlFor="book-genre">Gênero / Categoria</label>
              <input id="book-genre" type="text" className="form-input" placeholder="Ex: Ficção Científica" value={form.genre} onChange={e => set('genre', e.target.value)} />
            </div>
            <div className="form-group">
              <label className="form-label" htmlFor="book-quantity">Quantidade no Acervo *</label>
              <input id="book-quantity" type="number" className="form-input" min="1" value={form.quantity} onChange={e => set('quantity', e.target.value)} required />
            </div>
            <div className="form-group" style={{ gridColumn: '1 / -1' }}>
              <label className="form-label" htmlFor="book-desc">Descrição / Sinopse</label>
              <text area id="book-desc" className="form-input form-textarea" placeholder="Breve sinopse ou descrição..." value={form.description} onChange={e => set('description', e.target.value)} />
            </div>
          </div>
          <div className="modal-footer">
            <button type="button" className="btn btn-ghost" onClick={onClose}>Cancelar</button>
            <button type="submit" className="btn btn-primary" disabled={loading}>
              {loading ? <><span className="spinner" style={{ width: 16, height: 16 }}></span> Salvando...</> : book ? '✓ Salvar Alterações' : '📚 Cadastrar Livro'}
            </button>
          </div>
        </form>
      </div>
    </div>
  );
}
