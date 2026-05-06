import React, { useEffect, useState } from 'react';
import { AuthProvider, useAuth } from './context/AuthContext';
import { LoginPage } from './pages/LoginPage';
import { DashboardPage } from './pages/DashboardPage';
import './index.css';

// Timeout de segurança: se ficar mais de 12s em loading, mostra opção de retry
const LOADING_TIMEOUT_MS = 12000;

function AppContent() {
  const { user, profile, loading, error, signOut } = useAuth();
  const [loadingTimedOut, setLoadingTimedOut] = useState(false);

  useEffect(() => {
    if (!loading) {
      setLoadingTimedOut(false);
      return;
    }
    const timer = setTimeout(() => {
      setLoadingTimedOut(true);
    }, LOADING_TIMEOUT_MS);
    return () => clearTimeout(timer);
  }, [loading]);

  if (loading) {
    if (loadingTimedOut) {
      return (
        <div className="loading-overlay" style={{ minHeight: '100vh', flexDirection: 'column', gap: 16, padding: 20, textAlign: 'center' }}>
          <div style={{ fontSize: '2.5rem' }}>⚠️</div>
          <h2 style={{ color: 'var(--color-danger)' }}>Conexão Lenta</h2>
          <p style={{ maxWidth: 360, color: 'var(--color-text-muted)', fontSize: '0.9rem' }}>
            O servidor está demorando para responder. Verifique sua conexão e tente novamente.
          </p>
          <button className="btn btn-primary" onClick={() => window.location.reload()}>
            🔄 Tentar Novamente
          </button>
        </div>
      );
    }
    return (
      <div className="loading-overlay" style={{ minHeight: '100vh', flexDirection: 'column', gap: 16 }}>
        <div style={{ fontSize: '2.5rem' }}>📚</div>
        <div className="spinner" style={{ width: 32, height: 32 }}></div>
        <p style={{ color: 'var(--color-text-muted)', fontSize: '0.9rem' }}>Carregando BiblioEscolar...</p>
      </div>
    );
  }

  // Se houver um erro crítico de perfil (usuário logado mas banco falhou)
  if (user && error) {
    return (
      <div className="loading-overlay" style={{ minHeight: '100vh', flexDirection: 'column', gap: 16, padding: 20, textAlign: 'center' }}>
        <div style={{ fontSize: '2.5rem' }}>⚠️</div>
        <h2 style={{ color: 'var(--color-danger)' }}>Erro de Acesso</h2>
        <p style={{ maxWidth: 400 }}>{error}</p>
        <button className="btn btn-primary" onClick={() => window.location.reload()}>Tentar Novamente</button>
        <button className="btn btn-ghost" onClick={signOut}>Sair</button>
      </div>
    );
  }

  // Se não houver usuário OU o perfil ainda não estiver carregado (e não estivermos em loading)
  // Nota: O refactoring do AuthContext garante que se houver user, ele tentará carregar o profile.
  if (!user || !profile) return <LoginPage />;

  return <DashboardPage />;
}

function App() {
  return (
    <AuthProvider>
      <AppContent />
    </AuthProvider>
  );
}

export default App;

