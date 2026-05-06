import { createClient } from '@supabase/supabase-js';

const supabaseUrl = import.meta.env.VITE_SUPABASE_URL;
const supabaseKey = import.meta.env.VITE_SUPABASE_ANON_KEY;

export const supabase = createClient(supabaseUrl, supabaseKey, {
  auth: {
    // Persiste a sessão no localStorage entre recarregamentos
    persistSession: true,
    // Não tenta detectar sessão na URL (evita comportamentos inesperados)
    detectSessionInUrl: false,
    // Renova o token automaticamente quando próximo de expirar
    autoRefreshToken: true,
    // IMPORTANTE: não customizar storageKey — o lock interno do Supabase
    // usa o ID do projeto no nome, e um storageKey diferente pode causar
    // conflito entre o nome da chave e o nome do lock
  },
});
