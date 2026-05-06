import React, { createContext, useContext, useEffect, useState, useRef } from 'react';
import { supabase } from '../lib/supabase';

const AuthContext = createContext(null);

export function AuthProvider({ children }) {
  const [user, setUser] = useState(null);
  const [profile, setProfile] = useState(null);
  const [loading, setLoading] = useState(true);
  const [authError, setAuthError] = useState(null);
  
  // Ref para controlar se já estamos buscando o perfil (evita chamadas duplicadas)
  const fetchingRef = useRef(false);
  // Ref para guardar o ID do último usuário buscado (evita re-buscas desnecessárias)
  const lastFetchedUserIdRef = useRef(null);

  useEffect(() => {
    let mounted = true;

    async function fetchUserProfile(currentUser) {
      // Se já estamos buscando, ignora
      if (fetchingRef.current) return;
      // Se já buscamos para este mesmo usuário e já temos perfil, não busca de novo
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
          console.error('[Auth] Erro ao buscar perfil:', profileError);
          setAuthError(
            profileError.code === 'PGRST116'
              ? 'Perfil de usuário não encontrado. Contate o administrador.'
              : `Erro ao carregar perfil: ${profileError.message}`
          );
          setProfile(null);
          lastFetchedUserIdRef.current = null;
        } else {
          setProfile(data);
          setAuthError(null);
          // Registra que já buscamos para este usuário
          lastFetchedUserIdRef.current = currentUser.id;
        }
      } catch (err) {
        if (!mounted) return;
        console.error('[Auth] Erro inesperado:', err);
        setAuthError('Erro inesperado ao acessar o sistema.');
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
        setLoading(false);
        return;
      }

      const currentUser = session.user;
      setUser(currentUser);

      if (event === 'TOKEN_REFRESHED') {
        // Token renovado: não rebusca o perfil se já temos para este usuário
        // mas se por algum motivo o perfil está vazio, recarrega
        if (lastFetchedUserIdRef.current === currentUser.id) {
          setLoading(false);
          return;
        }
        // Perfil não carregado ainda (ex: primeiro acesso após cache), busca agora
        await fetchUserProfile(currentUser);
        return;
      }

      // INITIAL_SESSION ou SIGNED_IN: busca o perfil
      await fetchUserProfile(currentUser);
    }

    // onAuthStateChange dispara INITIAL_SESSION automaticamente no mount
    const { data: { subscription } } = supabase.auth.onAuthStateChange(handleAuthChange);

    return () => {
      mounted = false;
      subscription.unsubscribe();
    };
  }, []); // Array vazio: registra o listener apenas UMA VEZ

  const signIn = async (email, password) => {
    setAuthError(null);
    return await supabase.auth.signInWithPassword({ email, password });
  };

  const signOut = async () => {
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
