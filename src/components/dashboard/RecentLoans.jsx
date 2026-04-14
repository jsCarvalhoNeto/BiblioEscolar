import React, { useEffect, useState } from 'react';
import { supabase } from '../../lib/supabase';

function formatDate(dateStr) {
  if (!dateStr) return '-';
  return new Date(dateStr + 'T00:00:00').toLocaleDateString('pt-BR');
}

function isOverdue(dueDateStr, status) {
  if (status === 'returned') return false;
  return new Date(dueDateStr + 'T00:00:00') < new Date();
}

export function RecentLoans() {
  const [loans, setLoans] = useState([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    supabase
      .from('loans')
      .select('*, book:books(title, author, tombstone_number)')
      .order('created_at', { ascending: false })
      .limit(8)
      .then(({ data }) => {
        setLoans(data ?? []);
        setLoading(false);
      });
  }, []);

  if (loading) return <div className="loading-overlay"><div className="spinner"></div> Carregando...</div>;

  return (
    <div className="card">
      <div className="card-header">
        <div>
          <p className="card-title">Locações Recentes</p>
          <p className="card-subtitle">Últimos 8 registros</p>
        </div>
      </div>
      {loans.length === 0 ? (
        <div className="empty-state">
          <div className="empty-state-icon">📭</div>
          <h3>Nenhuma locação registrada</h3>
          <p>As locações aparecerão aqui assim que forem criadas.</p>
        </div>
      ) : (
        <div className="table-wrapper">
          <table>
            <thead>
              <tr>
                <th>Livro</th>
                <th>Aluno</th>
                <th>Tombo</th>
                <th>Empréstimo</th>
                <th>Devolução</th>
                <th>Status</th>
              </tr>
            </thead>
            <tbody>
              {loans.map(loan => {
                const overdue = isOverdue(loan.return_due_date, loan.status);
                const status = loan.status === 'returned' ? 'returned'
                  : overdue ? 'overdue' : 'active';
                return (
                  <tr key={loan.id}>
                    <td>
                      <strong>{loan.book?.title ?? '-'}</strong>
                      <div style={{ fontSize: '0.78rem', color: 'var(--color-text-muted)' }}>{loan.book?.author}</div>
                    </td>
                    <td>{loan.student_name}</td>
                    <td><span className="badge badge-blue">{loan.book?.tombstone_number}</span></td>
                    <td>{formatDate(loan.loan_date)}</td>
                    <td>{formatDate(loan.return_due_date)}</td>
                    <td>
                      {status === 'returned' && <span className="badge badge-green">✓ Devolvido</span>}
                      {status === 'overdue' && <span className="badge badge-red">⚠ Atrasado</span>}
                      {status === 'active' && <span className="badge badge-blue">📖 Ativo</span>}
                    </td>
                  </tr>
                );
              })}
            </tbody>
          </table>
        </div>
      )}
    </div>
  );
}
