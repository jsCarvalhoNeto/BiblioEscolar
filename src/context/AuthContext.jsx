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

  useEffect(() => {
    let mounted = true;

    async function handleAuthChange(event, session) {
      if (!mounted) return;

      console.log(`[Auth] Evento: ${event}`);

      if (!session?.user) {
        // Usuário deslogado
        setUser(null);
        setProfile(null);
        setAuthError(null);
        setLoading(false);
        return;
      }

      // Usuário autenticado
      const currentUser = session.user;
      setUser(currentUser);

      // Para TOKEN_REFRESHED, não precisamos rebuscar o perfil se já temos
      // Mas para INITIAL_SESSION e SIGNED_IN, sempre buscamos
      if (event === 'TOKEN_REFRESHED') {
        // Apenas garantimos que não estamos mais em loading
        setLoading(false);
        return;
      }

      // Evita buscas duplicadas paralelas
      if (fetchingRef.current) return;
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
        } else {
          setProfile(data);
          setAuthError(null);
        }
      } catch (err) {
        if (!mounted) return;
        console.error('[Auth] Erro inesperado:', err);
        setAuthError('Erro inesperado ao acessar o sistema.');
        setProfile(null);
      } finally {
        if (mounted) {
          setLoading(false);
          fetchingRef.current = false;
        }
      }
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
