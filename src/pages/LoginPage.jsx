import React, { useState } from 'react';
import { useAuth } from '../context/AuthContext';
import { useTheme } from '../context/ThemeContext';
import logo from '../assets/logo.png';

export function LoginPage() {
  const { signIn } = useAuth();
  const { theme, toggleTheme } = useTheme();
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const [error, setError] = useState('');
  const [loading, setLoading] = useState(false);

  async function handleSubmit(e) {
    e.preventDefault();
    setError('');
    setLoading(true);
    const { error: signInError } = await signIn(email, password);
    if (signInError) {
      if (signInError.message?.includes('email_provider_disabled') || signInError.code === 'email_provider_disabled') {
        setError('Login por e-mail está desabilitado no servidor. Contate o administrador do sistema.');
      } else if (signInError.message?.includes('Invalid login credentials') || signInError.status === 400) {
        setError('E-mail ou senha inválidos. Verifique os dados e tente novamente.');
      } else if (signInError.message?.includes('Email not confirmed')) {
        setError('E-mail não confirmado. Verifique sua caixa de entrada.');
      } else {
        setError(signInError.message ?? 'Erro ao conectar. Tente novamente.');
      }
    }
    setLoading(false);
  }

  return (
    <div className="login-container">
      <div style={{ position: 'fixed', top: 20, right: 20 }}>
        <button 
          className="btn btn-ghost" 
          onClick={toggleTheme}
          style={{ padding: '8px 16px', borderRadius: '30px' }}
        >
          {theme === 'light' ? '🌙 Dark Mode' : '☀️ Light Mode'}
        </button>
      </div>
      <div className="login-card">
        <div className="login-logo">
          <img src={logo} alt="BiblioEscolar Logo" className="login-logo-img" />
          <div className="login-logo-text">
            <h1>BiblioEscolar</h1>
            <span>Sistema de Biblioteca Escolar</span>
          </div>
        </div>
        <p className="login-subtitle">Acesse sua conta para continuar</p>

        {error && (
          <div className="login-error">
            <span>⚠️</span> {error}
          </div>
        )}

        <form onSubmit={handleSubmit}>
          <div className="form-group">
            <label className="form-label" htmlFor="login-email">E-mail</label>
            <input
              id="login-email"
              type="email"
              className="form-input"
              placeholder="seu@email.com"
              value={email}
              onChange={e => setEmail(e.target.value)}
              required
              autoComplete="email"
            />
          </div>

          <div className="form-group">
            <label className="form-label" htmlFor="login-password">Senha</label>
            <input
              id="login-password"
              type="password"
              className="form-input"
              placeholder="••••••••"
              value={password}
              onChange={e => setPassword(e.target.value)}
              required
              autoComplete="current-password"
            />
          </div>

          <button
            type="submit"
            className="btn btn-primary btn-full btn-lg"
            disabled={loading}
          >
            {loading ? (
              <><span className="spinner" style={{ width: 18, height: 18 }}></span> Entrando...</>
            ) : (
              'Entrar'
            )}
          </button>
        </form>

        <p style={{ textAlign: 'center', marginTop: 20, fontSize: '0.8rem', color: 'var(--color-text-muted)' }}>
          Sistema exclusivo para membros da instituição
        </p>
      </div>
    </div>
  );
}
