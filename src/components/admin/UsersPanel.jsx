import React, { useEffect, useState, useCallback } from 'react';
import { supabase } from '../../lib/supabase';
import { useAuth } from '../../context/AuthContext';

const CLASS_YEARS = ['1º Ano', '2º Ano', '3º Ano'];

// Hook para carregar cursos ativos
function useCourses() {
  const [courses, setCourses] = useState([]);
  useEffect(() => {
    supabase
      .from('courses')
      .select('id, name')
      .eq('active', true)
      .order('name')
      .then(({ data }) => setCourses(data ?? []));
  }, []);
  return courses;
}

// ─── Modal de Cadastro de Aluno ───────────────────────────────────────────────
function CreateStudentModal({ onClose, onSave, toast }) {
  const courses = useCourses();
  const [formData, setFormData] = useState({
    email: '',
    full_name: '',
    enrollment_number: '',
    class_year: '',
    course_id: '',
    password: '',
  });
  const [saving, setSaving] = useState(false);

  const handleChange = (field, value) =>
    setFormData(prev => ({ ...prev, [field]: value }));

  const handleSubmit = async (e) => {
    e.preventDefault();
    if (!formData.email.trim() || !formData.full_name.trim()) return;
    setSaving(true);
    try {
      // Criar usuário no Auth
      const { data: authData, error: authError } = await supabase.auth.admin
        ? null // admin SDK não disponível no cliente
        : { data: null, error: { message: 'Cadastro direto não disponível via cliente.' } };

      // Alternativa: chamar função RPC ou edge function.
      // Como não temos acesso admin no client, usamos signUp normal e depois atualizamos o perfil.
      const { data: signUpData, error: signUpError } = await supabase.auth.signUp({
        email: formData.email.trim(),
        password: formData.password || 'Alterar@123',
        options: {
          data: {
            full_name: formData.full_name.trim(),
          },
        },
      });

      if (signUpError) throw signUpError;

      const userId = signUpData?.user?.id;
      if (!userId) throw new Error('Não foi possível obter o ID do usuário criado.');

      // Atualizar perfil com role student + turma + curso + matrícula
      const { error: profileError } = await supabase
        .from('profiles')
        .update({
          full_name: formData.full_name.trim(),
          role: 'student',
          enrollment_number: formData.enrollment_number ? parseInt(formData.enrollment_number, 10) : null,
          class_year: formData.class_year || null,
          course_id: formData.course_id || null,
          updated_at: new Date().toISOString(),
        })
        .eq('id', userId);

      if (profileError) throw profileError;

      if (toast) toast('Aluno cadastrado com sucesso! Senha padrão: Alterar@123', 'success');
      onSave();
    } catch (err) {
      console.error(err);
      if (toast) toast('Erro ao cadastrar aluno: ' + err.message, 'error');
    } finally {
      setSaving(false);
    }
  };

  return (
    <div className="modal-overlay">
      <div className="modal" style={{ maxWidth: 520 }}>
        <div className="modal-header">
          <h2 className="modal-title">🎓 Cadastrar Novo Aluno</h2>
          <button className="btn btn-ghost btn-sm" onClick={onClose}>✕</button>
        </div>
        <form onSubmit={handleSubmit}>
          <div className="modal-body">
            <div style={{ background: 'rgba(74,144,226,0.08)', border: '1px solid rgba(74,144,226,0.2)', borderRadius: 'var(--radius-md)', padding: 14, marginBottom: 20 }}>
              <p style={{ fontSize: '0.82rem', color: 'var(--color-text-muted)' }}>
                📌 O aluno receberá a senha padrão <strong>Alterar@123</strong> e deverá alterá-la no primeiro acesso.
              </p>
            </div>

            <div className="form-group" style={{ marginBottom: 16 }}>
              <label className="form-label" style={{ display: 'block', marginBottom: 8 }}>
                E-mail <span style={{ color: 'var(--color-danger)' }}>*</span>
              </label>
              <input
                type="email"
                className="form-input"
                required
                value={formData.email}
                onChange={e => handleChange('email', e.target.value)}
                placeholder="aluno@escola.edu.br"
              />
            </div>

            <div className="form-group" style={{ marginBottom: 16 }}>
              <label className="form-label" style={{ display: 'block', marginBottom: 8 }}>
                Nome Completo <span style={{ color: 'var(--color-danger)' }}>*</span>
              </label>
              <input
                type="text"
                className="form-input"
                required
                value={formData.full_name}
                onChange={e => handleChange('full_name', e.target.value)}
                placeholder="Ex: Maria da Silva"
              />
            </div>

            <div className="form-group" style={{ marginBottom: 16 }}>
              <label className="form-label" style={{ display: 'block', marginBottom: 8 }}>Matrícula</label>
              <input
                type="number"
                className="form-input"
                value={formData.enrollment_number}
                onChange={e => handleChange('enrollment_number', e.target.value)}
                placeholder="Ex: 20240001"
                min="1"
              />
            </div>

            <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: 16, marginBottom: 16 }}>
              <div className="form-group">
                <label className="form-label" style={{ display: 'block', marginBottom: 8 }}>Turma</label>
                <select
                  className="form-input"
                  value={formData.class_year}
                  onChange={e => handleChange('class_year', e.target.value)}
                >
                  <option value="">Selecionar...</option>
                  {CLASS_YEARS.map(y => (
                    <option key={y} value={y}>{y}</option>
                  ))}
                </select>
              </div>
              <div className="form-group">
                <label className="form-label" style={{ display: 'block', marginBottom: 8 }}>Curso</label>
                <select
                  className="form-input"
                  value={formData.course_id}
                  onChange={e => handleChange('course_id', e.target.value)}
                >
                  <option value="">Selecionar...</option>
                  {courses.map(c => (
                    <option key={c.id} value={c.id}>{c.name}</option>
                  ))}
                </select>
              </div>
            </div>
          </div>
          <div className="modal-footer">
            <button type="button" className="btn btn-ghost" onClick={onClose} disabled={saving}>
              Cancelar
            </button>
            <button type="submit" className="btn btn-primary" disabled={saving}>
              {saving ? 'Cadastrando...' : '✅ Cadastrar Aluno'}
            </button>
          </div>
        </form>
      </div>
    </div>
  );
}

// ─── Modal de Edição de Usuário ────────────────────────────────────────────────
function EditUserModal({ user, onClose, onSave, toast, isOperator }) {
  const courses = useCourses();
  const [formData, setFormData] = useState({
    full_name: user?.full_name || '',
    role: user?.role || 'student',
    enrollment_number: user?.enrollment_number ?? '',
    class_year: user?.class_year || '',
    course_id: user?.course_id || '',
  });
  const [saving, setSaving] = useState(false);

  const isStudent = formData.role === 'student';

  const handleSubmit = async (e) => {
    e.preventDefault();
    setSaving(true);
    try {
      const updateData = {
        full_name: formData.full_name,
        role: formData.role,
        updated_at: new Date().toISOString(),
      };

      // Só salva matrícula, turma e curso se for aluno
      if (formData.role === 'student') {
        updateData.enrollment_number = formData.enrollment_number ? parseInt(formData.enrollment_number, 10) : null;
        updateData.class_year = formData.class_year || null;
        updateData.course_id = formData.course_id || null;
      } else {
        updateData.enrollment_number = null;
        updateData.class_year = null;
        updateData.course_id = null;
      }

      const { error } = await supabase
        .from('profiles')
        .update(updateData)
        .eq('id', user.id);

      if (error) throw error;

      if (toast) toast('Usuário atualizado com sucesso!', 'success');
      onSave();
    } catch (error) {
      console.error('Erro ao atualizar usuário:', error);
      if (toast) toast('Erro ao atualizar usuário: ' + error.message, 'error');
    } finally {
      setSaving(false);
    }
  };

  return (
    <div className="modal-overlay">
      <div className="modal" style={{ maxWidth: 520 }}>
        <div className="modal-header">
          <h2 className="modal-title">✏️ Editar Usuário</h2>
          <button className="btn btn-ghost btn-sm" onClick={onClose}>✕</button>
        </div>
        <form onSubmit={handleSubmit}>
          <div className="modal-body">
            <div className="form-group" style={{ marginBottom: 16 }}>
              <label className="form-label" style={{ display: 'block', marginBottom: 8 }}>E-mail (Não editável)</label>
              <input
                type="text"
                className="form-input"
                value={user.email}
                disabled
                style={{ opacity: 0.7, cursor: 'not-allowed' }}
              />
            </div>

            <div className="form-group" style={{ marginBottom: 16 }}>
              <label className="form-label" style={{ display: 'block', marginBottom: 8 }}>Nome Completo</label>
              <input
                type="text"
                className="form-input"
                required
                value={formData.full_name}
                onChange={e => setFormData({ ...formData, full_name: e.target.value })}
                placeholder="Ex: João Silva"
              />
            </div>

            <div className="form-group" style={{ marginBottom: 16 }}>
              <label className="form-label" style={{ display: 'block', marginBottom: 8 }}>Função / Papel</label>
              <select
                className="form-input"
                value={formData.role}
                onChange={e => setFormData({ ...formData, role: e.target.value })}
                disabled={isOperator}
                style={isOperator ? { opacity: 0.7, cursor: 'not-allowed' } : {}}
              >
                <option value="admin">Administrador</option>
                <option value="operator">Operador</option>
                <option value="student">Aluno</option>
              </select>
              {isOperator && <small style={{ color: 'var(--color-text-muted)' }}>Operadores só podem gerenciar alunos.</small>}
            </div>

            {isStudent && (
              <>
              <div className="form-group" style={{ marginTop: 16, marginBottom: 16 }}>
                <label className="form-label" style={{ display: 'block', marginBottom: 8 }}>Matrícula</label>
                <input
                  type="number"
                  className="form-input"
                  value={formData.enrollment_number}
                  onChange={e => setFormData({ ...formData, enrollment_number: e.target.value })}
                  placeholder="Ex: 20240001"
                  min="1"
                />
              </div>
              <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: 16 }}>
                <div className="form-group">
                  <label className="form-label" style={{ display: 'block', marginBottom: 8 }}>Turma</label>
                  <select
                    className="form-input"
                    value={formData.class_year}
                    onChange={e => setFormData({ ...formData, class_year: e.target.value })}
                  >
                    <option value="">Sem turma</option>
                    {CLASS_YEARS.map(y => (
                      <option key={y} value={y}>{y}</option>
                    ))}
                  </select>
                </div>
                <div className="form-group">
                  <label className="form-label" style={{ display: 'block', marginBottom: 8 }}>Curso</label>
                  <select
                    className="form-input"
                    value={formData.course_id}
                    onChange={e => setFormData({ ...formData, course_id: e.target.value })}
                  >
                    <option value="">Sem curso</option>
                    {courses.map(c => (
                      <option key={c.id} value={c.id}>{c.name}</option>
                    ))}
                  </select>
                </div>
              </div>
              </>
            )}
          </div>
          <div className="modal-footer">
            <button type="button" className="btn btn-ghost" onClick={onClose} disabled={saving}>
              Cancelar
            </button>
            <button type="submit" className="btn btn-primary" disabled={saving}>
              {saving ? 'Salvando...' : 'Salvar Alterações'}
            </button>
          </div>
        </form>
      </div>
    </div>
  );
}

// ─── Painel Principal de Usuários ─────────────────────────────────────────────
export function UsersPanel({ toast }) {
  const { profile: currentUser, fetchProfile } = useAuth();
  const [users, setUsers] = useState([]);
  const [loading, setLoading] = useState(true);
  const [showCreate, setShowCreate] = useState(false);
  const [editingUser, setEditingUser] = useState(null);
  const [search, setSearch] = useState('');
  const [roleFilter, setRoleFilter] = useState('all');

  const loadUsers = useCallback(async () => {
    setLoading(true);
    let query = supabase
      .from('profiles')
      .select('*, courses(name)')
      .order('full_name');

    if (currentUser?.role === 'operator') {
      query = query.eq('role', 'student');
    }

    const { data } = await query;
    setUsers(data ?? []);
    setLoading(false);
  }, [currentUser]);

  useEffect(() => { loadUsers(); }, [loadUsers]);

  const filtered = users.filter(u => {
    const matchesSearch = 
      u.full_name?.toLowerCase().includes(search.toLowerCase()) ||
      u.email?.toLowerCase().includes(search.toLowerCase()) ||
      u.courses?.name?.toLowerCase().includes(search.toLowerCase()) ||
      u.class_year?.toLowerCase().includes(search.toLowerCase()) ||
      String(u.enrollment_number ?? '').includes(search);
    
    const matchesRole = roleFilter === 'all' || u.role === roleFilter;

    return matchesSearch && matchesRole;
  });

  const stats = {
    total: users.length,
    students: users.filter(u => u.role === 'student').length,
    admins: users.filter(u => u.role === 'admin').length,
    operators: users.filter(u => u.role === 'operator').length,
  };

  const roleLabels = { admin: 'Administrador', operator: 'Operador', student: 'Aluno' };
  const roleBadge = { admin: 'badge-orange', operator: 'badge-blue', student: 'badge-green' };

  const isOperator = currentUser?.role === 'operator';
  const pageTitle = isOperator ? '👥 Alunos' : '👥 Usuários';
  const pageSubtitle = isOperator ? 'Gerencie o cadastro e dados dos alunos' : 'Gerencie administradores, operadores e alunos';
  const createBtnLabel = isOperator ? '+ Cadastrar Aluno' : '+ Cadastrar Aluno';

  return (
    <div>
      <div className="page-header" style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'flex-start', flexWrap: 'wrap', gap: 16 }}>
        <div>
          <h1 className="page-title">{pageTitle}</h1>
          <p className="page-subtitle">{pageSubtitle}</p>
        </div>
        <button className="btn btn-primary" onClick={() => setShowCreate(true)}>
          {createBtnLabel}
        </button>
      </div>

      <div style={{ display: 'grid', gridTemplateColumns: 'repeat(auto-fit, minmax(140px, 1fr))', gap: 16, marginBottom: 24 }}>
        <div className="card" style={{ padding: '16px 20px', display: 'flex', flexDirection: 'column', gap: 4 }}>
          <span style={{ fontSize: '0.75rem', fontWeight: 600, color: 'var(--color-text-muted)', textTransform: 'uppercase', letterSpacing: '0.05em' }}>Total</span>
          <span style={{ fontSize: '1.5rem', fontWeight: 700, color: 'var(--color-primary)' }}>{stats.total}</span>
        </div>
        <div className="card" style={{ padding: '16px 20px', display: 'flex', flexDirection: 'column', gap: 4 }}>
          <span style={{ fontSize: '0.75rem', fontWeight: 600, color: 'var(--color-text-muted)', textTransform: 'uppercase', letterSpacing: '0.05em' }}>Alunos</span>
          <span style={{ fontSize: '1.5rem', fontWeight: 700, color: 'var(--color-success)' }}>{stats.students}</span>
        </div>
        {!isOperator && (
          <>
            <div className="card" style={{ padding: '16px 20px', display: 'flex', flexDirection: 'column', gap: 4 }}>
              <span style={{ fontSize: '0.75rem', fontWeight: 600, color: 'var(--color-text-muted)', textTransform: 'uppercase', letterSpacing: '0.05em' }}>Administradores</span>
              <span style={{ fontSize: '1.5rem', fontWeight: 700, color: 'var(--color-warning)' }}>{stats.admins}</span>
            </div>
            <div className="card" style={{ padding: '16px 20px', display: 'flex', flexDirection: 'column', gap: 4 }}>
              <span style={{ fontSize: '0.75rem', fontWeight: 600, color: 'var(--color-text-muted)', textTransform: 'uppercase', letterSpacing: '0.05em' }}>Operadores</span>
              <span style={{ fontSize: '1.5rem', fontWeight: 700, color: 'var(--color-info)' }}>{stats.operators}</span>
            </div>
          </>
        )}
      </div>

      <div className="card" style={{ marginBottom: 24 }}>
        <div style={{ display: 'flex', gap: 12, alignItems: 'center', flexWrap: 'wrap' }}>
          <div className="search-bar" style={{ flex: 1, minWidth: 280, marginBottom: 0 }}>
            <span className="search-bar-icon">🔍</span>
            <input
              id="users-search-input"
              type="text"
              className="form-input search-input"
              placeholder="Buscar por nome, e-mail, curso ou turma..."
              value={search}
              onChange={e => setSearch(e.target.value)}
            />
          </div>
          
          {!isOperator && (
            <div style={{ display: 'flex', alignItems: 'center', gap: 8 }}>
              <span style={{ fontSize: '0.85rem', color: 'var(--color-text-muted)', whiteSpace: 'nowrap' }}>Filtrar por:</span>
              <select 
                className="form-input" 
                style={{ width: 'auto', minWidth: 160, height: 42 }}
                value={roleFilter}
                onChange={e => setRoleFilter(e.target.value)}
              >
                <option value="all">Todos os tipos</option>
                <option value="admin">Administradores</option>
                <option value="operator">Operadores</option>
                <option value="student">Alunos</option>
              </select>
            </div>
          )}
        </div>
      </div>

      {loading ? (
        <div className="loading-overlay"><div className="spinner"></div> Carregando...</div>
      ) : filtered.length === 0 ? (
        <div className="empty-state">
          <div className="empty-state-icon">👥</div>
          <h3>Nenhum usuário encontrado</h3>
          <p>Tente outros termos de busca.</p>
        </div>
      ) : (
        <div className="card">
          <div className="table-wrapper">
            <table>
              <thead>
                <tr>
                  <th>Matrícula</th>
                  <th>Nome</th>
                  <th>E-mail</th>
                  <th>Função</th>
                  <th>Turma</th>
                  <th>Curso</th>
                  <th>Criado em</th>
                  <th>Ações</th>
                </tr>
              </thead>
              <tbody>
                {filtered.map(user => (
                  <tr key={user.id}>
                    <td style={{ color: 'var(--color-text-muted)', fontSize: '0.85rem', fontFamily: 'monospace' }}>
                      {user.enrollment_number || <span style={{ opacity: 0.4 }}>—</span>}
                    </td>
                    <td>
                      <div style={{ display: 'flex', alignItems: 'center', gap: 10 }}>
                        <div className="user-avatar" style={{ width: 32, height: 32, fontSize: '0.75rem', flexShrink: 0 }}>
                          {user.full_name?.split(' ').map(n => n[0]).slice(0, 2).join('')}
                        </div>
                        <strong>{user.full_name}</strong>
                      </div>
                    </td>
                    <td style={{ color: 'var(--color-text-muted)' }}>{user.email}</td>
                    <td>
                      <span className={`badge ${roleBadge[user.role] ?? 'badge-gray'}`}>
                        {roleLabels[user.role] ?? user.role}
                      </span>
                    </td>
                    <td style={{ color: 'var(--color-text-muted)', fontSize: '0.85rem' }}>
                      {user.class_year || <span style={{ opacity: 0.4 }}>—</span>}
                    </td>
                    <td style={{ color: 'var(--color-text-muted)', fontSize: '0.85rem' }}>
                      {user.courses?.name || <span style={{ opacity: 0.4 }}>—</span>}
                    </td>
                    <td style={{ color: 'var(--color-text-muted)', fontSize: '0.82rem' }}>
                      {new Date(user.created_at).toLocaleDateString('pt-BR')}
                    </td>
                    <td>
                      <button
                        className="btn btn-ghost btn-sm"
                        title="Editar Usuário"
                        onClick={() => setEditingUser(user)}
                      >
                        ✏️
                      </button>
                    </td>
                  </tr>
                ))}
              </tbody>
            </table>
          </div>
        </div>
      )}

      {showCreate && (
        <CreateStudentModal
          onClose={() => setShowCreate(false)}
          onSave={() => { setShowCreate(false); loadUsers(); }}
          toast={toast}
        />
      )}

      {editingUser && (
        <EditUserModal
          user={editingUser}
          onClose={() => setEditingUser(null)}
          onSave={() => {
            if (editingUser.id === currentUser?.id) {
              fetchProfile(currentUser.id);
            }
            setEditingUser(null);
            loadUsers();
          }}
          toast={toast}
          isOperator={isOperator}
        />
      )}
    </div>
  );
}
