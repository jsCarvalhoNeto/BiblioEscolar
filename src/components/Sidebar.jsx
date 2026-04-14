import React from 'react';
import { useAuth } from '../context/AuthContext';
import { useTheme } from '../context/ThemeContext';
import logo from '../assets/logo.png';

export function Sidebar({ activeTab, setActiveTab }) {
  const { profile, signOut } = useAuth();
  const { theme, toggleTheme } = useTheme();

  const roleLabels = { admin: 'Administrador', operator: 'Operador', student: 'Aluno' };
  const initials = profile?.full_name?.split(' ').map(n => n[0]).slice(0, 2).join('') ?? '?';

  const adminNav = [
    { id: 'dashboard', icon: '📊', label: 'Dashboard' },
    { id: 'books', icon: '📚', label: 'Acervo de Livros' },
    { id: 'loans', icon: '🔄', label: 'Locações' },
    { id: 'users', icon: '👥', label: 'Usuários' },
  ];

  const operatorNav = [
    { id: 'dashboard', icon: '📊', label: 'Dashboard' },
    { id: 'search', icon: '🔍', label: 'Buscar Livros' },
    { id: 'loans', icon: '🔄', label: 'Gerenciar Locações' },
    { id: 'books', icon: '📚', label: 'Acervo' },
    { id: 'users', icon: '👥', label: 'Alunos' },
  ];

  const studentNav = [
    { id: 'catalog', icon: '🗂️', label: 'Catálogo' },
    { id: 'my-loans', icon: '📖', label: 'Meus Empréstimos' },
  ];

  const navItems = profile?.role === 'admin' ? adminNav
    : profile?.role === 'operator' ? operatorNav
    : studentNav;

  return (
    <aside className="sidebar">
      <div className="sidebar-header">
        <div className="sidebar-logo">
          <img src={logo} alt="BiblioEscolar Logo" className="sidebar-logo-img" />
          <div className="sidebar-logo-text">
            <h2>BiblioEscolar</h2>
            <small>{roleLabels[profile?.role] ?? ''}</small>
          </div>
        </div>
      </div>

      <nav className="sidebar-nav">
        <p className="nav-section-title">Menu</p>
        {navItems.map(item => (
          <button
            key={item.id}
            className={`nav-item${activeTab === item.id ? ' active' : ''}`}
            onClick={() => setActiveTab(item.id)}
          >
            <span className="nav-icon">{item.icon}</span>
            {item.label}
          </button>
        ))}
      </nav>

      <div className="sidebar-footer">
        <div style={{ display: 'flex', justifyContent: 'center', marginBottom: 12 }}>
          <button 
            className="btn btn-ghost btn-sm btn-full" 
            onClick={toggleTheme}
            style={{ display: 'flex', gap: 8, fontSize: '0.8rem' }}
          >
            {theme === 'light' ? '🌙 Modo Escuro' : '☀️ Modo Claro'}
          </button>
        </div>
        <div className="user-card">
          <div className="user-avatar">{initials}</div>
          <div className="user-info">
            <h4>{profile?.full_name ?? 'Usuário'}</h4>
            <small>{roleLabels[profile?.role] ?? ''}</small>
          </div>
          <button
            className="btn btn-icon btn-ghost"
            onClick={signOut}
            title="Sair"
            style={{ padding: '6px', fontSize: '1rem' }}
          >
            🚪
          </button>
        </div>
      </div>
    </aside>
  );
}
