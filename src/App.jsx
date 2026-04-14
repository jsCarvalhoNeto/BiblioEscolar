import React from 'react';
import { AuthProvider, useAuth } from './context/AuthContext';
import { LoginPage } from './pages/LoginPage';
import { DashboardPage } from './pages/DashboardPage';
import './index.css';

function AppContent() {
  const { user, profile, loading } = useAuth();

  if (loading) {
    return (
      <div className="loading-overlay" style={{ minHeight: '100vh', flexDirection: 'column', gap: 16 }}>
        <div style={{ fontSize: '2.5rem' }}>📚</div>
        <div className="spinner" style={{ width: 32, height: 32 }}></div>
        <p style={{ color: 'var(--color-text-muted)', fontSize: '0.9rem' }}>Carregando BiblioEscolar...</p>
      </div>
    );
  }

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
