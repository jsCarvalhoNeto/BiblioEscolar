import { createClient } from '@supabase/supabase-js';

const supabaseUrl = import.meta.env.VITE_SUPABASE_URL;
const supabaseKey = import.meta.env.VITE_SUPABASE_ANON_KEY;

export const supabase = createClient(supabaseUrl, supabaseKey, {
  auth: {
    // Persiste a sessão no localStorage (padrão, mas explícito)
    persistSession: true,
    // Detecta automaticamente a sessão na aba/dispositivo
    detectSessionInUrl: false,
    // Renova o token automaticamente (mas com controle)
    autoRefreshToken: true,
    // Armazena a sessão localmente para evitar re-autenticações
    storageKey: 'biblioescolar-auth',
  },
});
