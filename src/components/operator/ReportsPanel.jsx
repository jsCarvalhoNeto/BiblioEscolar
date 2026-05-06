import React, { useState, useEffect } from 'react';
import { supabase } from '../../lib/supabase';
import { jsPDF } from 'jspdf';
import autoTable from 'jspdf-autotable';
import logo from '../../assets/logo.png';

function formatDate(dateStr) {
  if (!dateStr) return '-';
  return new Date(dateStr + 'T00:00:00').toLocaleDateString('pt-BR');
}

export function ReportsPanel({ toast }) {
  const [activeReport, setActiveReport] = useState('overdue'); // 'overdue', 'top_books', 'top_users'
  const [loading, setLoading] = useState(false);
  
  // Data states
  const [overdueLoans, setOverdueLoans] = useState([]);
  const [topBooks, setTopBooks] = useState([]);
  const [topUsers, setTopUsers] = useState([]);
  
  // Filters
  const [courseFilter, setCourseFilter] = useState('all');
  const [seriesFilter, setSeriesFilter] = useState('all');
  const [courses, setCourses] = useState([]);

  useEffect(() => {
    loadCourses();
  }, []);

  const loadCourses = async () => {
    const { data } = await supabase.from('courses').select('id, name').eq('active', true).order('name');
    if (data) setCourses(data);
  };

  useEffect(() => {
    loadReportData();
  }, [activeReport, courseFilter, seriesFilter]);

  const loadReportData = async () => {
    setLoading(true);
    
    const hasFilter = courseFilter !== 'all' || seriesFilter !== 'all';
    const studentJoin = hasFilter 
      ? ', student:profiles!loans_student_id_fkey!inner(class_year, course_id)' 
      : '';
    
    if (activeReport === 'overdue') {
      const today = new Date().toISOString().split('T')[0];
      let query = supabase
        .from('loans')
        .select(`*, book:books(title, author, tombstone_number)${studentJoin}`)
        .eq('status', 'active')
        .lt('return_due_date', today)
        .order('return_due_date', { ascending: true });
        
      if (courseFilter !== 'all') query = query.eq('student.course_id', courseFilter);
      if (seriesFilter !== 'all') query = query.eq('student.class_year', seriesFilter);
        
      const { data, error } = await query;
        
      if (error) {
        toast('Erro ao carregar locações em atraso', 'error');
      } else {
        setOverdueLoans(data || []);
      }
    } else if (activeReport === 'top_books') {
      // Carregar todas as locações para agregar
      let query = supabase
        .from('loans')
        .select(`book_id, book:books(title, author)${studentJoin}`);
        
      if (courseFilter !== 'all') query = query.eq('student.course_id', courseFilter);
      if (seriesFilter !== 'all') query = query.eq('student.class_year', seriesFilter);
        
      const { data, error } = await query;
        
      if (error) {
        toast('Erro ao carregar os livros mais locados', 'error');
      } else {
        const counts = {};
        data?.forEach(loan => {
          if (loan.book_id) {
            if (!counts[loan.book_id]) {
              counts[loan.book_id] = { count: 0, title: loan.book?.title, author: loan.book?.author };
            }
            counts[loan.book_id].count += 1;
          }
        });
        
        const sorted = Object.values(counts).sort((a, b) => b.count - a.count).slice(0, 10);
        setTopBooks(sorted);
      }
    } else if (activeReport === 'top_users') {
      // Carregar todas as locações para agregar
      let query = supabase
        .from('loans')
        .select(`student_name${studentJoin}`);
        
      if (courseFilter !== 'all') query = query.eq('student.course_id', courseFilter);
      if (seriesFilter !== 'all') query = query.eq('student.class_year', seriesFilter);
        
      const { data, error } = await query;
        
      if (error) {
        toast('Erro ao carregar os usuários', 'error');
      } else {
        const counts = {};
        data?.forEach(loan => {
          const key = loan.student_name;
          if (key) {
            if (!counts[key]) {
              counts[key] = { count: 0, name: loan.student_name };
            }
            counts[key].count += 1;
          }
        });
        
        const sorted = Object.values(counts).sort((a, b) => b.count - a.count).slice(0, 10);
        setTopUsers(sorted);
      }
    }
    
    setLoading(false);
  };

  const handleExportPDF = () => {
    const doc = new jsPDF();
    
    const img = new Image();
    img.src = logo;
    
    img.onload = () => {
      const pageWidth = doc.internal.pageSize.getWidth();
      
      // Adiciona a logo centralizada, mantendo a proporção correta
      const imgHeight = 18;
      const imgRatio = img.width / img.height;
      const imgWidth = imgHeight * imgRatio;
      
      const imgX = (pageWidth - imgWidth) / 2;
      doc.addImage(img, 'PNG', imgX, 10, imgWidth, imgHeight);
      
      doc.setFontSize(18);
      let title = "";
      if (activeReport === 'overdue') title = "Relatorio - Locacoes em Atraso";
      else if (activeReport === 'top_books') title = "Relatorio - Livros Mais Locados";
      else if (activeReport === 'top_users') title = "Relatorio - Alunos Que Mais Locaram";
      
      doc.text(title, pageWidth / 2, 40, { align: 'center' });
      doc.setFontSize(11);
      doc.text(`Gerado em: ${new Date().toLocaleDateString('pt-BR')}`, pageWidth / 2, 48, { align: 'center' });

      if (activeReport === 'overdue') {
        const tableColumn = ["Livro", "Autor", "Aluno", "Tombo", "Devolucao", "Status"];
        const tableRows = [];
        
        overdueLoans.forEach(loan => {
          const rowData = [
            loan.book?.title || '-',
            loan.book?.author || '-',
            loan.student_name || '-',
            loan.book?.tombstone_number || '-',
            formatDate(loan.return_due_date),
            "Atrasado"
          ];
          tableRows.push(rowData);
        });
        
        autoTable(doc, {
          head: [tableColumn],
          body: tableRows,
          startY: 55,
          styles: { fontSize: 9 }
        });
      } else if (activeReport === 'top_books') {
        const tableColumn = ["Posicao", "Titulo", "Autor", "Locacoes"];
        const tableRows = [];
        
        topBooks.forEach((book, index) => {
          const rowData = [
            `#${index + 1}`,
            book.title || '-',
            book.author || '-',
            book.count
          ];
          tableRows.push(rowData);
        });
        
        autoTable(doc, {
          head: [tableColumn],
          body: tableRows,
          startY: 55,
          styles: { fontSize: 10 }
        });
      } else if (activeReport === 'top_users') {
        const tableColumn = ["Posicao", "Aluno", "Locacoes"];
        const tableRows = [];
        
        topUsers.forEach((user, index) => {
          const rowData = [
            `#${index + 1}`,
            user.name || '-',
            user.count
          ];
          tableRows.push(rowData);
        });
        
        autoTable(doc, {
          head: [tableColumn],
          body: tableRows,
          startY: 55,
          styles: { fontSize: 10 }
        });
      }
      
      doc.save(`${title.replace(/ /g, '_').toLowerCase()}.pdf`);
    };
  };

  const handlePrint = () => {
    window.print();
  };

  return (
    <div className="reports-container">
      <div className="print-only">
        <img src={logo} alt="BiblioEdu Logo" />
        <div>
          <h2>Relatório do Sistema</h2>
          <p>Gerado em: {new Date().toLocaleDateString('pt-BR')}</p>
        </div>
      </div>

      <div className="page-header no-print">
        <h1 className="page-title">📈 Relatórios</h1>
        <p className="page-subtitle">Visualize métricas e dados de locações</p>
      </div>

      <div className="card no-print" style={{ marginBottom: 24, display: 'flex', justifyContent: 'space-between', alignItems: 'center', flexWrap: 'wrap', gap: '16px' }}>
        <div style={{ display: 'flex', gap: 12, flexWrap: 'wrap' }}>
          <button
            className={`btn btn-sm ${activeReport === 'overdue' ? 'btn-primary' : 'btn-ghost'}`}
            onClick={() => setActiveReport('overdue')}
          >
            Locações em Atraso
          </button>
          <button
            className={`btn btn-sm ${activeReport === 'top_books' ? 'btn-primary' : 'btn-ghost'}`}
            onClick={() => setActiveReport('top_books')}
          >
            Livros Mais Locados
          </button>
          <button
            className={`btn btn-sm ${activeReport === 'top_users' ? 'btn-primary' : 'btn-ghost'}`}
            onClick={() => setActiveReport('top_users')}
          >
            Alunos que Mais Locaram
          </button>
        </div>
        
        <div style={{ display: 'flex', gap: 8 }}>
          <button
            className="btn btn-sm btn-ghost"
            onClick={handlePrint}
            disabled={loading || (activeReport === 'overdue' && overdueLoans.length === 0) || (activeReport === 'top_books' && topBooks.length === 0) || (activeReport === 'top_users' && topUsers.length === 0)}
            style={{ display: 'flex', alignItems: 'center', gap: '6px' }}
          >
            <span>🖨️</span> Imprimir
          </button>
          <button
            className="btn btn-sm btn-secondary"
            onClick={handleExportPDF}
            disabled={loading || (activeReport === 'overdue' && overdueLoans.length === 0) || (activeReport === 'top_books' && topBooks.length === 0) || (activeReport === 'top_users' && topUsers.length === 0)}
            style={{ display: 'flex', alignItems: 'center', gap: '6px' }}
          >
            <span>📥</span> Exportar PDF
          </button>
        </div>
      </div>

      <div className="card no-print" style={{ marginBottom: 24, display: 'flex', gap: '16px', flexWrap: 'wrap' }}>
        <div className="form-group" style={{ marginBottom: 0, minWidth: '200px', flex: 1 }}>
          <label className="form-label" style={{ fontSize: '0.85rem' }}>Filtrar por Curso</label>
          <select 
            className="form-input" 
            value={courseFilter}
            onChange={(e) => setCourseFilter(e.target.value)}
          >
            <option value="all">Todos os Cursos</option>
            {courses.map(c => (
              <option key={c.id} value={c.id}>{c.name}</option>
            ))}
          </select>
        </div>
        <div className="form-group" style={{ marginBottom: 0, minWidth: '200px', flex: 1 }}>
          <label className="form-label" style={{ fontSize: '0.85rem' }}>Filtrar por Série</label>
          <select 
            className="form-input" 
            value={seriesFilter}
            onChange={(e) => setSeriesFilter(e.target.value)}
          >
            <option value="all">Todas as Séries</option>
            <option value="1º Ano">1º Ano</option>
            <option value="2º Ano">2º Ano</option>
            <option value="3º Ano">3º Ano</option>
          </select>
        </div>
      </div>

      {loading ? (
        <div className="loading-overlay"><div className="spinner"></div> Carregando relatório...</div>
      ) : (
        <div className="card">
          {activeReport === 'overdue' && (
            <div>
              <h2 style={{ marginBottom: 16 }}>Livros com Locação em Atraso</h2>
              {overdueLoans.length === 0 ? (
                <div className="empty-state">
                  <div className="empty-state-icon">👍</div>
                  <h3>Nenhuma locação em atraso</h3>
                  <p>Todos os empréstimos estão em dia.</p>
                </div>
              ) : (
                <div className="table-wrapper">
                  <table>
                    <thead>
                      <tr>
                        <th>Livro</th>
                        <th>Aluno</th>
                        <th>Tombo</th>
                        <th>Devolução Prevista</th>
                        <th>Status</th>
                      </tr>
                    </thead>
                    <tbody>
                      {overdueLoans.map(loan => (
                        <tr key={loan.id}>
                          <td>
                            <strong>{loan.book?.title}</strong>
                            <div style={{ fontSize: '0.8rem', color: 'var(--color-text-muted)' }}>{loan.book?.author}</div>
                          </td>
                          <td>{loan.student_name}</td>
                          <td><span className="badge badge-blue">{loan.book?.tombstone_number}</span></td>
                          <td style={{ color: 'var(--color-danger)', fontWeight: 'bold' }}>
                            {formatDate(loan.return_due_date)}
                          </td>
                          <td><span className="badge badge-red">Atrasado</span></td>
                        </tr>
                      ))}
                    </tbody>
                  </table>
                </div>
              )}
            </div>
          )}

          {activeReport === 'top_books' && (
            <div>
              <h2 style={{ marginBottom: 16 }}>Livros Mais Locados (Top 10)</h2>
              {topBooks.length === 0 ? (
                <p>Nenhum dado encontrado.</p>
              ) : (
                <div className="table-wrapper">
                  <table>
                    <thead>
                      <tr>
                        <th>Posição</th>
                        <th>Título</th>
                        <th>Autor</th>
                        <th>Total de Locações</th>
                      </tr>
                    </thead>
                    <tbody>
                      {topBooks.map((book, index) => (
                        <tr key={index}>
                          <td style={{ fontWeight: 'bold', width: '80px' }}>#{index + 1}</td>
                          <td><strong>{book.title}</strong></td>
                          <td>{book.author}</td>
                          <td><span className="badge badge-blue" style={{ fontSize: '0.9rem' }}>{book.count}</span></td>
                        </tr>
                      ))}
                    </tbody>
                  </table>
                </div>
              )}
            </div>
          )}

          {activeReport === 'top_users' && (
            <div>
              <h2 style={{ marginBottom: 16 }}>Alunos que Mais Locaram (Top 10)</h2>
              {topUsers.length === 0 ? (
                <p>Nenhum dado encontrado.</p>
              ) : (
                <div className="table-wrapper">
                  <table>
                    <thead>
                      <tr>
                        <th>Posição</th>
                        <th>Aluno</th>
                        <th>Total de Locações</th>
                      </tr>
                    </thead>
                    <tbody>
                      {topUsers.map((user, index) => (
                        <tr key={index}>
                          <td style={{ fontWeight: 'bold', width: '80px' }}>#{index + 1}</td>
                          <td><strong>{user.name}</strong></td>
                          <td><span className="badge badge-green" style={{ fontSize: '0.9rem' }}>{user.count}</span></td>
                        </tr>
                      ))}
                    </tbody>
                  </table>
                </div>
              )}
            </div>
          )}
        </div>
      )}
    </div>
  );
}
