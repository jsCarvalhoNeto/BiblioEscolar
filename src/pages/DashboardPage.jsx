import React, { useState } from 'react';
import { useAuth } from '../context/AuthContext';
import { Sidebar } from '../components/Sidebar';
import { DashboardStats } from '../components/dashboard/DashboardStats';
import { RecentLoans } from '../components/dashboard/RecentLoans';
import { BookSearchPanel } from '../components/operator/BookSearchPanel';
import { LoansManagementPanel } from '../components/operator/LoansManagementPanel';
import { BooksPanel } from '../components/shared/BooksPanel';
import { UsersPanel } from '../components/admin/UsersPanel';
import { StudentPanel } from '../components/student/StudentPanel';
import { ToastContainer } from '../components/ToastContainer';
import { useToast } from '../hooks/useToast';

function AdminDashboard({ tab, setTab, toast }) {
  return (
    <div className="dashboard">
      <Sidebar activeTab={tab} setActiveTab={setTab} />
      <main className="main-content">
        {tab === 'dashboard' && (
          <div>
            <div className="page-header">
              <h1 className="page-title">Dashboard</h1>
              <p className="page-subtitle">Visão geral da biblioteca</p>
            </div>
            <DashboardStats />
            <RecentLoans />
          </div>
        )}
        {tab === 'books' && <BooksPanel toast={toast} isAdmin />}
        {tab === 'loans' && <LoansManagementPanel toast={toast} />}
        {tab === 'users' && <UsersPanel toast={toast} />}
      </main>
    </div>
  );
}

function OperatorDashboard({ tab, setTab, toast }) {
  return (
    <div className="dashboard">
      <Sidebar activeTab={tab} setActiveTab={setTab} />
      <main className="main-content">
        {tab === 'dashboard' && (
          <div>
            <div className="page-header">
              <h1 className="page-title">Painel do Operador</h1>
              <p className="page-subtitle">Gerencie os empréstimos da biblioteca</p>
            </div>
            <DashboardStats />
            <RecentLoans />
          </div>
        )}
        {tab === 'search' && <BookSearchPanel toast={toast} />}
        {tab === 'loans' && <LoansManagementPanel toast={toast} />}
        {tab === 'books' && <BooksPanel toast={toast} isAdmin={false} />}
        {tab === 'users' && <UsersPanel toast={toast} />}
      </main>
    </div>
  );
}

function StudentDashboard() {
  const { profile } = useAuth();
  return (
    <div className="dashboard">
      <Sidebar activeTab="catalog" setActiveTab={() => {}} />
      <main className="main-content">
        <StudentPanel />
      </main>
    </div>
  );
}

export function DashboardPage() {
  const { profile } = useAuth();
  const { toasts, toast } = useToast();

  const defaultTab = profile?.role === 'student' ? 'catalog' : 'dashboard';
  const [tab, setTab] = useState(defaultTab);

  if (!profile) return null;

  return (
    <>
      {profile.role === 'admin' && <AdminDashboard tab={tab} setTab={setTab} toast={toast} />}
      {profile.role === 'operator' && <OperatorDashboard tab={tab} setTab={setTab} toast={toast} />}
      {profile.role === 'student' && <StudentDashboard />}
      <ToastContainer toasts={toasts} />
    </>
  );
}
