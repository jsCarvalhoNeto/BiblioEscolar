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
  const [filter, setFilter] = useState('all');

  useEffect(() => {
    setLoading(true);
    let query = supabase
      .from('loans')
      .select('*, book:books(title, author, tombstone_number), operator:profiles!operator_id(full_name)')
      .order('created_at', { ascending: false });

    if (filter === 'active') {
      query = query.eq('status', 'active');
    } else if (filter === 'returned') {
      query = query.eq('status', 'returned');
    } else if (filter === 'overdue') {
      query = query.eq('status', 'active').lt('return_due_date', new Date().toISOString().split('T')[0]);
    }

    query.limit(8).then(({ data }) => {
      setLoans(data ?? []);
      setLoading(false);
    });
  }, [filter]);

  if (loading) return <div className="loading-overlay" style={{ height: '300px' }}><div className="spinner"></div> Carregando...</div>;

  const filterLabels = {
    all: 'Últimos 8 registros',
    active: 'Últimas 8 locações ativas',
    returned: 'Últimas 8 locações devolvidas',
    overdue: 'Últimas 8 locações em atraso'
  };

  const emptyMessages = {
    all: 'As locações aparecerão aqui assim que forem criadas.',
    active: 'Não há locações ativas no momento.',
    returned: 'As locações devolvidas aparecerão nesta lista.',
    overdue: 'Não há locações em atraso no sistema.'
  };

  return (
    <div className="card">
      <div className="card-header" style={{ flexWrap: 'wrap', gap: 16 }}>
        <div>
          <p className="card-title">Locações Recentes</p>
          <p className="card-subtitle">{filterLabels[filter]}</p>
        </div>
        <div className="filter-tabs">
          <button 
            className={`filter-tab ${filter === 'all' ? 'active' : ''}`}
            onClick={() => setFilter('all')}
          >
            Todos
          </button>
          <button 
            className={`filter-tab ${filter === 'active' ? 'active' : ''}`}
            onClick={() => setFilter('active')}
          >
            Ativos
          </button>
          <button 
            className={`filter-tab ${filter === 'returned' ? 'active' : ''}`}
            onClick={() => setFilter('returned')}
          >
            Devolvidos
          </button>
          <button 
            className={`filter-tab ${filter === 'overdue' ? 'active' : ''}`}
            onClick={() => setFilter('overdue')}
          >
            Em Atraso
          </button>
        </div>
      </div>
      {loans.length === 0 ? (
        <div className="empty-state">
          <div className="empty-state-icon">📭</div>
          <h3>Nenhuma locação encontrada</h3>
          <p>{emptyMessages[filter]}</p>
        </div>
      ) : (

        <div className="table-wrapper">
          <table>
            <thead>
              <tr>
                <th>Livro</th>
                <th>Aluno</th>
                <th>Operador</th>
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
                    <td style={{ fontSize: '0.85rem', color: 'var(--color-text-muted)' }}>{loan.operator?.full_name?.split(' ')[0] || '-'}</td>
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
