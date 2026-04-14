import React, { useEffect, useState } from 'react';
import { supabase } from '../../lib/supabase';

export function DashboardStats({ role }) {
  const [stats, setStats] = useState({ books: 0, loans: 0, overdue: 0, returned: 0 });
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    async function load() {
      const [{ count: books }, { count: loans }, { count: overdue }, { count: returned }] = await Promise.all([
        supabase.from('books').select('*', { count: 'exact', head: true }),
        supabase.from('loans').select('*', { count: 'exact', head: true }).eq('status', 'active'),
        supabase.from('loans').select('*', { count: 'exact', head: true }).eq('status', 'overdue'),
        supabase.from('loans').select('*', { count: 'exact', head: true }).eq('status', 'returned'),
      ]);
      setStats({ books: books ?? 0, loans: loans ?? 0, overdue: overdue ?? 0, returned: returned ?? 0 });
      setLoading(false);
    }
    load();
  }, []);

  const items = [
    { icon: '📚', label: 'Livros no Acervo', value: stats.books, color: 'blue' },
    { icon: '🔄', label: 'Locações Ativas', value: stats.loans, color: 'green' },
    { icon: '⚠️', label: 'Em Atraso', value: stats.overdue, color: 'orange' },
    { icon: '✅', label: 'Devolvidos', value: stats.returned, color: 'gray' },
  ];

  if (loading) return (
    <div className="stats-grid" style={{ marginBottom: 28 }}>
      {[1,2,3,4].map(i => (
        <div key={i} className="stat-card" style={{ opacity: 0.5 }}>
          <div className="stat-icon blue" style={{ background: 'var(--color-bg-elevated)' }}></div>
          <div className="stat-info">
            <h3 style={{ background: 'var(--color-bg-elevated)', color: 'transparent', borderRadius: 4 }}>000</h3>
            <p style={{ background: 'var(--color-bg-elevated)', color: 'transparent', borderRadius: 4, marginTop: 6 }}>Carregando...</p>
          </div>
        </div>
      ))}
    </div>
  );

  return (
    <div className="stats-grid">
      {items.map(item => (
        <div key={item.label} className="stat-card">
          <div className={`stat-icon ${item.color}`}>{item.icon}</div>
          <div className="stat-info">
            <h3>{item.value}</h3>
            <p>{item.label}</p>
          </div>
        </div>
      ))}
    </div>
  );
}
