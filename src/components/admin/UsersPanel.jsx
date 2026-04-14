import React, { useEffect, useState, useCallback } from 'react';
import { supabase } from '../../lib/supabase';
import { useAuth } from '../../context/AuthContext';

function UserInfoModal({ onClose, isOperator }) {
  const title = isOperator ? "👤 Cadastrar Novo Aluno" : "👤 Criar Novo Usuário";
  const typeLabel = isOperator ? "alunos" : "usuários";
  
  return (
    <div className="modal-overlay">
      <div className="modal">
        <div className="modal-header">
          <h2 className="modal-title">{title}</h2>
          <button className="btn btn-ghost btn-sm" onClick={onClose}>✕</button>
        </div>
        <div style={{ background: 'rgba(74,144,226,0.08)', border: '1px solid rgba(74,144,226,0.2)', borderRadius: 'var(--radius-md)', padding: 20, marginBottom: 20 }}>
          <p style={{ fontWeight: 700, marginBottom: 8 }}>📋 Como cadastrar {typeLabel}:</p>
          <p style={{ fontSize: '0.875rem', color: 'var(--color-text-light)', lineHeight: 1.7 }}>
            Por diretrizes de segurança, o cadastro de contas deve ser feito via painel administrativo ou pelo próprio aluno:
          </p>
          <ol style={{ fontSize: '0.875rem', color: 'var(--color-text-light)', lineHeight: 2, marginTop: 10, paddingLeft: 20 }}>
            {isOperator ? (
              <>
                <li>Peça para o aluno se cadastrar no site (se disponível)</li>
                <li>Ou solicite ao Administrador a criação da conta via Supabase</li>
                <li>Após a conta ser criada, você poderá editar o nome e confirmar o papel de "Aluno" nesta lista.</li>
              </>
            ) : (
              <>
                <li>Acesse o <strong>Supabase Dashboard → Authentication → Users</strong></li>
                <li>Clique em <strong>"Add user"</strong></li>
                <li>Preencha e-mail e senha</li>
                <li>Após criar, atualize o papel e nome aqui ou via SQL:</li>
              </>
            )}
          </ol>
        </div>
        <div style={{ background: 'var(--color-bg-elevated)', borderRadius: 'var(--radius-md)', padding: 16, fontFamily: 'monospace', fontSize: '0.82rem', color: 'var(--color-accent)', lineHeight: 1.8 }}>
          <p style={{ color: 'var(--color-text-muted)', marginBottom: 8, fontFamily: 'inherit', fontSize: '0.72rem' }}>
            -- Atualizar papel após criar usuário:
          </p>
          <p>UPDATE public.profiles</p>
          <p>SET role = <span style={{ color: '#f6ad55' }}>'operator'</span>, full_name = <span style={{ color: '#f6ad55' }}>'Nome Completo'</span></p>
          <p>WHERE email = <span style={{ color: '#f6ad55' }}>'novo@email.com'</span>;</p>
        </div>
        <div className="modal-footer">
          {!isOperator && (
            <a
              href="https://supabase.com/dashboard/project/dwggoaxuvohvugxxromm/auth/users"
              target="_blank"
              rel="noreferrer"
              className="btn btn-primary"
            >
              🔗 Abrir Supabase Dashboard
            </a>
          )}
          <button className="btn btn-ghost" onClick={onClose}>Fechar</button>
        </div>
      </div>
    </div>
  );
}

function EditUserModal({ user, onClose, onSave, toast, isOperator }) {
  const [formData, setFormData] = useState({
    full_name: user?.full_name || '',
    role: user?.role || 'student'
  });
  const [saving, setSaving] = useState(false);

  const handleSubmit = async (e) => {
    e.preventDefault();
    setSaving(true);
    try {
      const { error } = await supabase
        .from('profiles')
        .update({
          full_name: formData.full_name,
          role: formData.role,
          updated_at: new Date().toISOString()
        })
        .eq('id', user.id);

      if (error) throw error;
      
      toast?.success('Usuário atualizado com sucesso!');
      onSave();
    } catch (error) {
      console.error('Erro ao atualizar usuário:', error);
      toast?.error('Erro ao atualizar usuário: ' + error.message);
    } finally {
      setSaving(false);
    }
  };

  return (
    <div className="modal-overlay">
      <div className="modal">
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

export function UsersPanel({ toast }) {
  const { profile: currentUser, fetchProfile } = useAuth();
  const [users, setUsers] = useState([]);
  const [loading, setLoading] = useState(true);
  const [showInfo, setShowInfo] = useState(false);
  const [editingUser, setEditingUser] = useState(null);
  const [search, setSearch] = useState('');

  const loadUsers = useCallback(async () => {
    setLoading(true);
    let query = supabase
      .from('profiles')
      .select('*')
      .order('full_name');
      
    if (currentUser?.role === 'operator') {
      query = query.eq('role', 'student');
    }
    
    const { data } = await query;
    setUsers(data ?? []);
    setLoading(false);
  }, [currentUser]);

  useEffect(() => { loadUsers(); }, [loadUsers]);

  const filtered = users.filter(u =>
    u.full_name?.toLowerCase().includes(search.toLowerCase()) ||
    u.email?.toLowerCase().includes(search.toLowerCase())
  );

  const roleLabels = { admin: 'Administrador', operator: 'Operador', student: 'Aluno' };
  const roleBadge = { admin: 'badge-orange', operator: 'badge-blue', student: 'badge-green' };

  const isOperator = currentUser?.role === 'operator';
  const pageTitle = isOperator ? "👥 Alunos" : "👥 Usuários";
  const pageSubtitle = isOperator ? "Gerencie o cadastro e dados dos alunos" : "Gerencie administradores, operadores e alunos";
  const createBtnLabel = isOperator ? "+ Cadastrar Aluno" : "+ Criar Usuário";

  return (
    <div>
      <div className="page-header" style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'flex-start', flexWrap: 'wrap', gap: 16 }}>
        <div>
          <h1 className="page-title">{pageTitle}</h1>
          <p className="page-subtitle">{pageSubtitle}</p>
        </div>
        <button className="btn btn-primary" onClick={() => setShowInfo(true)}>
          {createBtnLabel}
        </button>
      </div>

      <div className="card" style={{ marginBottom: 24 }}>
        <div className="search-bar">
          <span className="search-bar-icon">🔍</span>
          <input
            id="users-search-input"
            type="text"
            className="form-input search-input"
            placeholder="Buscar por nome ou e-mail..."
            value={search}
            onChange={e => setSearch(e.target.value)}
          />
        </div>
        <p style={{ fontSize: '0.78rem', color: 'var(--color-text-muted)', marginTop: 10 }}>
          {users.length} usuário(s) cadastrado(s) no sistema
        </p>
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
                  <th>Nome</th>
                  <th>E-mail</th>
                  <th>Função</th>
                  <th>Criado em</th>
                  <th>Ações</th>
                </tr>
              </thead>
              <tbody>
                {filtered.map(user => (
                  <tr key={user.id}>
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

      {showInfo && (
        <UserInfoModal onClose={() => setShowInfo(false)} isOperator={isOperator} />
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
