import React, { createContext, useContext, useEffect, useState, useRef } from 'react';
import { supabase } from '../lib/supabase';

const AuthContext = createContext(null);

// Detecta se o erro é um lock temporário do Supabase (não é erro real do usuário)
function isLockError(err) {
  const msg = err?.message ?? '';
  return msg.includes('lock') && msg.includes('released') && msg.includes('stole');
}

// Detecta erro temporário de rede/servidor (vale a pena tentar de novo)
function isTransientError(err) {
  if (isLockError(err)) return true;
  const msg = err?.message?.toLowerCase() ?? '';
  return (
    msg.includes('network') ||
    msg.includes('timeout') ||
    msg.includes('fetch') ||
    msg.includes('failed to fetch')
  );
}

export function AuthProvider({ children }) {
  const [user, setUser] = useState(null);
  const [profile, setProfile] = useState(null);
  const [loading, setLoading] = useState(true);
  const [authError, setAuthError] = useState(null);

  // Evita chamadas paralelas simultâneas
  const fetchingRef = useRef(false);
  // Guarda o ID do último usuário buscado com sucesso (evita re-buscas desnecessárias)
  const lastFetchedUserIdRef = useRef(null);

  useEffect(() => {
    let mounted = true;

    /**
     * Busca o perfil do usuário no banco de dados.
     * Faz até 2 tentativas em caso de erros temporários (lock, rede).
     */
    async function fetchUserProfile(currentUser, attempt = 1) {
      // Se já estamos buscando em paralelo, ignora
      if (fetchingRef.current) return;
      // Se já buscamos com sucesso para este usuário, não busca de novo
      if (lastFetchedUserIdRef.current === currentUser.id) {
        setLoading(false);
        return;
      }

      fetchingRef.current = true;
      setLoading(true);

      try {
        const { data, error: profileError } = await supabase
          .from('profiles')
          .select('*')
          .eq('id', currentUser.id)
          .single();

        if (!mounted) return;

        if (profileError) {
          // Erro de lock temporário: tenta novamente após um delay
          if (isTransientError(profileError) && attempt < 3) {
            console.warn(`[Auth] Erro temporário (tentativa ${attempt}), tentando novamente...`, profileError.message);
            fetchingRef.current = false;
            await new Promise(r => setTimeout(r, 1000 * attempt));
            if (mounted) await fetchUserProfile(currentUser, attempt + 1);
            return;
          }

          console.error('[Auth] Erro ao buscar perfil:', profileError);

          // Erro PGRST116 = perfil não existe no banco
          if (profileError.code === 'PGRST116') {
            setAuthError('Perfil de usuário não encontrado. Contate o administrador.');
          } else {
            setAuthError(`Erro ao carregar perfil: ${profileError.message}`);
          }
          setProfile(null);
          lastFetchedUserIdRef.current = null;
        } else {
          // Sucesso!
          setProfile(data);
          setAuthError(null);
          lastFetchedUserIdRef.current = currentUser.id;
        }
      } catch (err) {
        if (!mounted) return;

        // Erro de lock ou rede: retry automático silencioso
        if (isTransientError(err) && attempt < 3) {
          console.warn(`[Auth] Erro de lock/rede (tentativa ${attempt}), tentando novamente...`, err.message);
          fetchingRef.current = false;
          await new Promise(r => setTimeout(r, 1200 * attempt));
          if (mounted) await fetchUserProfile(currentUser, attempt + 1);
          return;
        }

        console.error('[Auth] Erro inesperado:', err);
        setAuthError('Erro inesperado ao acessar o sistema. Tente recarregar a página.');
        setProfile(null);
        lastFetchedUserIdRef.current = null;
      } finally {
        if (mounted) {
          setLoading(false);
          fetchingRef.current = false;
        }
      }
    }

    async function handleAuthChange(event, session) {
      if (!mounted) return;

      console.log(`[Auth] Evento: ${event}`);

      if (!session?.user) {
        // Usuário deslogado — limpa tudo
        setUser(null);
        setProfile(null);
        setAuthError(null);
        lastFetchedUserIdRef.current = null;
        fetchingRef.current = false;
        setLoading(false);
        return;
      }

      const currentUser = session.user;
      setUser(currentUser);

      if (event === 'TOKEN_REFRESHED') {
        // Token renovado com sucesso: não rebusca o perfil se já está carregado
        if (lastFetchedUserIdRef.current === currentUser.id) {
          setLoading(false);
          return;
        }
        // Perfil não carregado (ex: aba reaberta após suspensão), busca agora
        await fetchUserProfile(currentUser);
        return;
      }

      // INITIAL_SESSION ou SIGNED_IN: busca o perfil do usuário
      await fetchUserProfile(currentUser);
    }

    // Registra o listener UMA VEZ — dispara INITIAL_SESSION automaticamente
    const { data: { subscription } } = supabase.auth.onAuthStateChange(handleAuthChange);

    return () => {
      mounted = false;
      subscription.unsubscribe();
    };
  }, []);

  const signIn = async (email, password) => {
    setAuthError(null);
    return await supabase.auth.signInWithPassword({ email, password });
  };

  const signOut = async () => {
    lastFetchedUserIdRef.current = null;
    fetchingRef.current = false;
    setLoading(true);
    await supabase.auth.signOut();
    setUser(null);
    setProfile(null);
    setAuthError(null);
    setLoading(false);
  };

  const fetchProfile = async (userId) => {
    if (!userId) return;
    try {
      const { data } = await supabase
        .from('profiles')
        .select('*')
        .eq('id', userId)
        .single();
      if (data) setProfile(data);
    } catch (err) {
      console.error('[Auth] fetchProfile erro:', err);
    }
  };

  return (
    <AuthContext.Provider value={{
      user,
      profile,
      loading,
      error: authError,
      signIn,
      signOut,
      fetchProfile,
    }}>
      {children}
    </AuthContext.Provider>
  );
}

export function useAuth() {
  const context = useContext(AuthContext);
  if (!context) {
    throw new Error('useAuth deve ser usado dentro de um AuthProvider');
  }
  return context;
}
