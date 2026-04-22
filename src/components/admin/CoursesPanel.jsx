import React, { useEffect, useState, useCallback } from 'react';
import { supabase } from '../../lib/supabase';

function CourseFormModal({ course, onClose, onSave, toast }) {
  const isEdit = Boolean(course);
  const [name, setName] = useState(course?.name || '');
  const [active, setActive] = useState(course?.active ?? true);
  const [saving, setSaving] = useState(false);

  const handleSubmit = async (e) => {
    e.preventDefault();
    if (!name.trim()) return;
    setSaving(true);
    try {
      if (isEdit) {
        const { error } = await supabase
          .from('courses')
          .update({ name: name.trim(), active, updated_at: new Date().toISOString() })
          .eq('id', course.id);
        if (error) throw error;
        toast?.success('Curso atualizado com sucesso!');
      } else {
        const { error } = await supabase
          .from('courses')
          .insert({ name: name.trim(), active });
        if (error) throw error;
        toast?.success('Curso cadastrado com sucesso!');
      }
      onSave();
    } catch (err) {
      console.error(err);
      toast?.error(err.message.includes('unique') ? 'Já existe um curso com esse nome.' : 'Erro ao salvar curso: ' + err.message);
    } finally {
      setSaving(false);
    }
  };

  return (
    <div className="modal-overlay">
      <div className="modal">
        <div className="modal-header">
          <h2 className="modal-title">{isEdit ? '✏️ Editar Curso' : '📋 Novo Curso'}</h2>
          <button className="btn btn-ghost btn-sm" onClick={onClose}>✕</button>
        </div>
        <form onSubmit={handleSubmit}>
          <div className="modal-body">
            <div className="form-group" style={{ marginBottom: 16 }}>
              <label className="form-label" style={{ display: 'block', marginBottom: 8 }}>
                Nome do Curso <span style={{ color: 'var(--color-danger)' }}>*</span>
              </label>
              <input
                type="text"
                className="form-input"
                required
                value={name}
                onChange={e => setName(e.target.value)}
                placeholder="Ex: Técnico em Informática"
                autoFocus
              />
            </div>
            <div className="form-group" style={{ marginBottom: 8 }}>
              <label style={{ display: 'flex', alignItems: 'center', gap: 10, cursor: 'pointer', userSelect: 'none' }}>
                <input
                  type="checkbox"
                  checked={active}
                  onChange={e => setActive(e.target.checked)}
                  style={{ width: 16, height: 16, accentColor: 'var(--color-primary)', cursor: 'pointer' }}
                />
                <span className="form-label" style={{ marginBottom: 0 }}>Curso ativo</span>
              </label>
              <small style={{ color: 'var(--color-text-muted)', marginTop: 4, display: 'block' }}>
                Cursos inativos não aparecem nas opções de cadastro de alunos.
              </small>
            </div>
          </div>
          <div className="modal-footer">
            <button type="button" className="btn btn-ghost" onClick={onClose} disabled={saving}>
              Cancelar
            </button>
            <button type="submit" className="btn btn-primary" disabled={saving}>
              {saving ? 'Salvando...' : isEdit ? 'Salvar Alterações' : 'Cadastrar Curso'}
            </button>
          </div>
        </form>
      </div>
    </div>
  );
}

function DeleteCourseModal({ course, onClose, onConfirm, loading }) {
  return (
    <div className="modal-overlay">
      <div className="modal" style={{ maxWidth: 440 }}>
        <div className="modal-header">
          <h2 className="modal-title">🗑️ Excluir Curso</h2>
          <button className="btn btn-ghost btn-sm" onClick={onClose}>✕</button>
        </div>
        <div className="modal-body">
          <p style={{ marginBottom: 12 }}>
            Tem certeza que deseja excluir o curso <strong>"{course?.name}"</strong>?
          </p>
          <div style={{ background: 'rgba(239,68,68,0.08)', border: '1px solid rgba(239,68,68,0.2)', borderRadius: 'var(--radius-md)', padding: 14 }}>
            <p style={{ fontSize: '0.85rem', color: 'var(--color-text-muted)' }}>
              ⚠️ Esta ação não pode ser desfeita. Alunos vinculados a este curso terão o vínculo removido automaticamente.
            </p>
          </div>
        </div>
        <div className="modal-footer">
          <button className="btn btn-ghost" onClick={onClose} disabled={loading}>Cancelar</button>
          <button
            className="btn btn-danger"
            onClick={onConfirm}
            disabled={loading}
            style={{ background: 'var(--color-danger)', color: '#fff' }}
          >
            {loading ? 'Excluindo...' : 'Excluir Curso'}
          </button>
        </div>
      </div>
    </div>
  );
}

export function CoursesPanel({ toast }) {
  const [courses, setCourses] = useState([]);
  const [loading, setLoading] = useState(true);
  const [showForm, setShowForm] = useState(false);
  const [editingCourse, setEditingCourse] = useState(null);
  const [deletingCourse, setDeletingCourse] = useState(null);
  const [deleting, setDeleting] = useState(false);
  const [search, setSearch] = useState('');

  const loadCourses = useCallback(async () => {
    setLoading(true);
    const { data, error } = await supabase
      .from('courses')
      .select('*')
      .order('name');
    if (error) console.error(error);
    setCourses(data ?? []);
    setLoading(false);
  }, []);

  useEffect(() => { loadCourses(); }, [loadCourses]);

  const handleDelete = async () => {
    if (!deletingCourse) return;
    setDeleting(true);
    try {
      const { error } = await supabase.from('courses').delete().eq('id', deletingCourse.id);
      if (error) throw error;
      toast?.success('Curso excluído com sucesso!');
      setDeletingCourse(null);
      loadCourses();
    } catch (err) {
      toast?.error('Erro ao excluir curso: ' + err.message);
    } finally {
      setDeleting(false);
    }
  };

  const filtered = courses.filter(c =>
    c.name.toLowerCase().includes(search.toLowerCase())
  );

  return (
    <div>
      <div className="page-header" style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'flex-start', flexWrap: 'wrap', gap: 16 }}>
        <div>
          <h1 className="page-title">📋 Cursos</h1>
          <p className="page-subtitle">Gerencie os cursos técnicos disponíveis para vinculação aos alunos</p>
        </div>
        <button className="btn btn-primary" onClick={() => setShowForm(true)}>
          + Novo Curso
        </button>
      </div>

      <div className="card" style={{ marginBottom: 24 }}>
        <div className="search-bar">
          <span className="search-bar-icon">🔍</span>
          <input
            type="text"
            className="form-input search-input"
            placeholder="Buscar curso..."
            value={search}
            onChange={e => setSearch(e.target.value)}
          />
        </div>
        <p style={{ fontSize: '0.78rem', color: 'var(--color-text-muted)', marginTop: 10 }}>
          {courses.length} curso(s) cadastrado(s)
        </p>
      </div>

      {loading ? (
        <div className="loading-overlay"><div className="spinner"></div> Carregando...</div>
      ) : filtered.length === 0 ? (
        <div className="empty-state">
          <div className="empty-state-icon">📋</div>
          <h3>Nenhum curso encontrado</h3>
          <p>Clique em "+ Novo Curso" para cadastrar o primeiro.</p>
        </div>
      ) : (
        <div className="card">
          <div className="table-wrapper">
            <table>
              <thead>
                <tr>
                  <th>Nome do Curso</th>
                  <th>Status</th>
                  <th>Criado em</th>
                  <th>Ações</th>
                </tr>
              </thead>
              <tbody>
                {filtered.map(course => (
                  <tr key={course.id}>
                    <td>
                      <div style={{ display: 'flex', alignItems: 'center', gap: 10 }}>
                        <span style={{ fontSize: '1.1rem' }}>🎓</span>
                        <strong>{course.name}</strong>
                      </div>
                    </td>
                    <td>
                      <span className={`badge ${course.active ? 'badge-green' : 'badge-gray'}`}>
                        {course.active ? 'Ativo' : 'Inativo'}
                      </span>
                    </td>
                    <td style={{ color: 'var(--color-text-muted)', fontSize: '0.82rem' }}>
                      {new Date(course.created_at).toLocaleDateString('pt-BR')}
                    </td>
                    <td>
                      <div style={{ display: 'flex', gap: 6 }}>
                        <button
                          className="btn btn-ghost btn-sm"
                          title="Editar"
                          onClick={() => setEditingCourse(course)}
                        >
                          ✏️
                        </button>
                        <button
                          className="btn btn-ghost btn-sm"
                          title="Excluir"
                          onClick={() => setDeletingCourse(course)}
                          style={{ color: 'var(--color-danger)' }}
                        >
                          🗑️
                        </button>
                      </div>
                    </td>
                  </tr>
                ))}
              </tbody>
            </table>
          </div>
        </div>
      )}

      {(showForm || editingCourse) && (
        <CourseFormModal
          course={editingCourse || null}
          onClose={() => { setShowForm(false); setEditingCourse(null); }}
          onSave={() => { setShowForm(false); setEditingCourse(null); loadCourses(); }}
          toast={toast}
        />
      )}

      {deletingCourse && (
        <DeleteCourseModal
          course={deletingCourse}
          onClose={() => setDeletingCourse(null)}
          onConfirm={handleDelete}
          loading={deleting}
        />
      )}
    </div>
  );
}
