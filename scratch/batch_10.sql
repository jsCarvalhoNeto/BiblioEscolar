DO $$
DECLARE
    new_user_id UUID;
BEGIN
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'isllasarahbarbosalucenaalves@gm', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ISLLA SARAH BARBOSA LUCENA ALVES"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'ISLLA SARAH BARBOSA LUCENA ALVES', 'isllasarahbarbosalucenaalves@gm', 'student', 4624492, '3º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4624492, class_year = '3º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'isllasarahbarbosalucenaalves@gm';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'jeysille@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JEYSILLE MARIA EVANGELISTA DOS SANTOS"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'JEYSILLE MARIA EVANGELISTA DOS SANTOS', 'jeysille@gmail.com', 'student', 3548043, '3º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3548043, class_year = '3º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'jeysille@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'greenjlf6286@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOAO LUCAS FERREIRA SOUZA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'JOAO LUCAS FERREIRA SOUZA', 'greenjlf6286@gmail.com', 'student', 5260924, '3º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 5260924, class_year = '3º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'greenjlf6286@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'adsonjr66@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOSE ADSON DE ARAUJO LIMA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'JOSE ADSON DE ARAUJO LIMA', 'adsonjr66@gmail.com', 'student', 3417514, '3º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3417514, class_year = '3º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'adsonjr66@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'henriqueslk160608@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOSE HENRIQUE LIMA MEDEIROS"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'JOSE HENRIQUE LIMA MEDEIROS', 'henriqueslk160608@gmail.com', 'student', 4766366, '3º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4766366, class_year = '3º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'henriqueslk160608@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'kaiocastrorodrigues3@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"KAIO RODRIGUES DOS SANTOS"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'KAIO RODRIGUES DOS SANTOS', 'kaiocastrorodrigues3@gmail.com', 'student', 3550656, '3º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3550656, class_year = '3º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'kaiocastrorodrigues3@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'kauanearaujobva2024@gmail.', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"KAUANE ARAUJO DE SOUSA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'KAUANE ARAUJO DE SOUSA', 'kauanearaujobva2024@gmail.', 'student', 5260549, '3º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 5260549, class_year = '3º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'kauanearaujobva2024@gmail.';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'kellykarolaine1914@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"KELLY KAROLAINE PEREIRA DOS SANTOS"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'KELLY KAROLAINE PEREIRA DOS SANTOS', 'kellykarolaine1914@gmail.com', 'student', 2625163, '3º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 2625163, class_year = '3º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'kellykarolaine1914@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'liviasampaio290@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"LIVIA INACIO SAMPAIO"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'LIVIA INACIO SAMPAIO', 'liviasampaio290@gmail.com', 'student', 2078255, '3º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 2078255, class_year = '3º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'liviasampaio290@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'maisa.saintly@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MAISA SHEYLANE SANTOS MUNIZ"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MAISA SHEYLANE SANTOS MUNIZ', 'maisa.saintly@gmail.com', 'student', 3610423, '3º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3610423, class_year = '3º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'maisa.saintly@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'rodriguesevangelistam3@gmail.', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARCOS VINICIUS RODRIGUES EVANGELISTA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MARCOS VINICIUS RODRIGUES EVANGELISTA', 'rodriguesevangelistam3@gmail.', 'student', 4766394, '3º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4766394, class_year = '3º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'rodriguesevangelistam3@gmail.';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'mariaclaratavares667@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA CLARA TAVARES NASCIMENTO"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MARIA CLARA TAVARES NASCIMENTO', 'mariaclaratavares667@gmail.com', 'student', 4785807, '3º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4785807, class_year = '3º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'mariaclaratavares667@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'eduarda.sants970109@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA EDUARDA DE SOUZA SANTOS"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MARIA EDUARDA DE SOUZA SANTOS', 'eduarda.sants970109@gmail.com', 'student', 3417526, '3º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3417526, class_year = '3º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'eduarda.sants970109@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'eloisanascimentobs2009@gmail.', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA ELOISA DA SILVA NASCIMENTO"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MARIA ELOISA DA SILVA NASCIMENTO', 'eloisanascimentobs2009@gmail.', 'student', 3412659, '3º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3412659, class_year = '3º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'eloisanascimentobs2009@gmail.';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3957072@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA IZADORA GOMES DE SOUSA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MARIA IZADORA GOMES DE SOUSA', 'aluno_3957072@biblioedu.com', 'student', 3957072, '3º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3957072, class_year = '3º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'aluno_3957072@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'mariayasmimsousasilva19@gmail.', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA YASMIN SOUSA DA SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MARIA YASMIN SOUSA DA SILVA', 'mariayasmimsousasilva19@gmail.', 'student', 2197578, '3º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 2197578, class_year = '3º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'mariayasmimsousasilva19@gmail.';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'mayaneleticiacaldasfalcao@gmail.', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MAYANE LETICIA DE CALDAS FALCAO"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MAYANE LETICIA DE CALDAS FALCAO', 'mayaneleticiacaldasfalcao@gmail.', 'student', 2926497, '3º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 2926497, class_year = '3º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'mayaneleticiacaldasfalcao@gmail.';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'maysaalves2506@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MAYSA ALVES DA SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MAYSA ALVES DA SILVA', 'maysaalves2506@gmail.com', 'student', 3556671, '3º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3556671, class_year = '3º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'maysaalves2506@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'moniqueelleng1603@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MONIQUE ELLEN GOMES OLIVEIRA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MONIQUE ELLEN GOMES OLIVEIRA', 'moniqueelleng1603@gmail.com', 'student', 3548175, '3º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3548175, class_year = '3º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'moniqueelleng1603@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'andrademyllena129@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MYLLENA MARIA SOLINO DE ANDRADE"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MYLLENA MARIA SOLINO DE ANDRADE', 'andrademyllena129@gmail.com', 'student', 3973460, '3º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3973460, class_year = '3º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'andrademyllena129@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'tauanyleite61@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"TAUANY SANTOS LEITE"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'TAUANY SANTOS LEITE', 'tauanyleite61@gmail.com', 'student', 2282162, '3º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 2282162, class_year = '3º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'tauanyleite61@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'alvesmaiaalvaro@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ALVARO ALVES MAIA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'ALVARO ALVES MAIA', 'alvesmaiaalvaro@gmail.com', 'student', 5259428, '3º Ano', 'a52adcb4-2cf5-426c-a382-b75017315c78') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 5259428, class_year = '3º Ano', course_id = 'a52adcb4-2cf5-426c-a382-b75017315c78', role = 'student' WHERE email = 'alvesmaiaalvaro@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'beatrizcaetanosilva46@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ANA BEATRIZ CAETANO SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'ANA BEATRIZ CAETANO SILVA', 'beatrizcaetanosilva46@gmail.com', 'student', 3417442, '3º Ano', 'a52adcb4-2cf5-426c-a382-b75017315c78') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3417442, class_year = '3º Ano', course_id = 'a52adcb4-2cf5-426c-a382-b75017315c78', role = 'student' WHERE email = 'beatrizcaetanosilva46@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'as8213353@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ANA LUCIA SANTOS LEITE"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'ANA LUCIA SANTOS LEITE', 'as8213353@gmail.com', 'student', 3781452, '3º Ano', 'a52adcb4-2cf5-426c-a382-b75017315c78') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3781452, class_year = '3º Ano', course_id = 'a52adcb4-2cf5-426c-a382-b75017315c78', role = 'student' WHERE email = 'as8213353@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'esteticaanaluiza9@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ANA LUIZA ABREU DE SOUSA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'ANA LUIZA ABREU DE SOUSA', 'esteticaanaluiza9@gmail.com', 'student', 3417454, '3º Ano', 'a52adcb4-2cf5-426c-a382-b75017315c78') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3417454, class_year = '3º Ano', course_id = 'a52adcb4-2cf5-426c-a382-b75017315c78', role = 'student' WHERE email = 'esteticaanaluiza9@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'camilamaiaalves2008@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"CAMILA FERREIRA MAIA ALVES"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'CAMILA FERREIRA MAIA ALVES', 'camilamaiaalves2008@gmail.com', 'student', 4605004, '3º Ano', 'a52adcb4-2cf5-426c-a382-b75017315c78') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4605004, class_year = '3º Ano', course_id = 'a52adcb4-2cf5-426c-a382-b75017315c78', role = 'student' WHERE email = 'camilamaiaalves2008@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'carlayourana@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"CARLA YARHANA MARTINS SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'CARLA YARHANA MARTINS SILVA', 'carlayourana@gmail.com', 'student', 3555885, '3º Ano', 'a52adcb4-2cf5-426c-a382-b75017315c78') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3555885, class_year = '3º Ano', course_id = 'a52adcb4-2cf5-426c-a382-b75017315c78', role = 'student' WHERE email = 'carlayourana@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'lucianoedilasio33@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"EDILASIO LUCIANO IZIDIO"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'EDILASIO LUCIANO IZIDIO', 'lucianoedilasio33@gmail.com', 'student', 3548031, '3º Ano', 'a52adcb4-2cf5-426c-a382-b75017315c78') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3548031, class_year = '3º Ano', course_id = 'a52adcb4-2cf5-426c-a382-b75017315c78', role = 'student' WHERE email = 'lucianoedilasio33@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'emanuellesouzadasilva4@gmail.', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"EMANUELLE SOUZA DA SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'EMANUELLE SOUZA DA SILVA', 'emanuellesouzadasilva4@gmail.', 'student', 4249895, '3º Ano', 'a52adcb4-2cf5-426c-a382-b75017315c78') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4249895, class_year = '3º Ano', course_id = 'a52adcb4-2cf5-426c-a382-b75017315c78', role = 'student' WHERE email = 'emanuellesouzadasilva4@gmail.';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'lpsfrancinete@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"FRANCINETE FLORENCIO LOPES"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'FRANCINETE FLORENCIO LOPES', 'lpsfrancinete@gmail.com', 'student', 3549788, '3º Ano', 'a52adcb4-2cf5-426c-a382-b75017315c78') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3549788, class_year = '3º Ano', course_id = 'a52adcb4-2cf5-426c-a382-b75017315c78', role = 'student' WHERE email = 'lpsfrancinete@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'ferreiragiselle382@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"GISELLE FERREIRA FILGUEIRA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'GISELLE FERREIRA FILGUEIRA', 'ferreiragiselle382@gmail.com', 'student', 3413750, '3º Ano', 'a52adcb4-2cf5-426c-a382-b75017315c78') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3413750, class_year = '3º Ano', course_id = 'a52adcb4-2cf5-426c-a382-b75017315c78', role = 'student' WHERE email = 'ferreiragiselle382@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'helloisaregina203@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"HELLOISA REGINA DE SOUSA OLIVEIRA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'HELLOISA REGINA DE SOUSA OLIVEIRA', 'helloisaregina203@gmail.com', 'student', 1694314, '3º Ano', 'a52adcb4-2cf5-426c-a382-b75017315c78') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 1694314, class_year = '3º Ano', course_id = 'a52adcb4-2cf5-426c-a382-b75017315c78', role = 'student' WHERE email = 'helloisaregina203@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'ivynamariano7@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"IVYNA PEREIRA MARIANO"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'IVYNA PEREIRA MARIANO', 'ivynamariano7@gmail.com', 'student', 4700230, '3º Ano', 'a52adcb4-2cf5-426c-a382-b75017315c78') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4700230, class_year = '3º Ano', course_id = 'a52adcb4-2cf5-426c-a382-b75017315c78', role = 'student' WHERE email = 'ivynamariano7@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'jayannesiqueira1@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JAIANE SIQUEIRA FRUTUOSO"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'JAIANE SIQUEIRA FRUTUOSO', 'jayannesiqueira1@gmail.com', 'student', 2091304, '3º Ano', 'a52adcb4-2cf5-426c-a382-b75017315c78') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 2091304, class_year = '3º Ano', course_id = 'a52adcb4-2cf5-426c-a382-b75017315c78', role = 'student' WHERE email = 'jayannesiqueira1@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', '2470951.sem.email@seduc.ce.', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"KIARA ANTONIA SIQUEIRA BANDEIRA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'KIARA ANTONIA SIQUEIRA BANDEIRA', '2470951.sem.email@seduc.ce.', 'student', 2470951, '3º Ano', 'a52adcb4-2cf5-426c-a382-b75017315c78') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 2470951, class_year = '3º Ano', course_id = 'a52adcb4-2cf5-426c-a382-b75017315c78', role = 'student' WHERE email = '2470951.sem.email@seduc.ce.';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'laraevily797@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"LARA EVILY DOS SANTOS"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'LARA EVILY DOS SANTOS', 'laraevily797@gmail.com', 'student', 3545287, '3º Ano', 'a52adcb4-2cf5-426c-a382-b75017315c78') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3545287, class_year = '3º Ano', course_id = 'a52adcb4-2cf5-426c-a382-b75017315c78', role = 'student' WHERE email = 'laraevily797@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'layanearrudaoliveira@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"LAYANE ARRUDA DE OLIVEIRA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'LAYANE ARRUDA DE OLIVEIRA', 'layanearrudaoliveira@gmail.com', 'student', 3283602, '3º Ano', 'a52adcb4-2cf5-426c-a382-b75017315c78') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3283602, class_year = '3º Ano', course_id = 'a52adcb4-2cf5-426c-a382-b75017315c78', role = 'student' WHERE email = 'layanearrudaoliveira@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'laylasalviano123@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"LAYLA MORATO SALVIANO CRUZ"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'LAYLA MORATO SALVIANO CRUZ', 'laylasalviano123@gmail.com', 'student', 5118325, '3º Ano', 'a52adcb4-2cf5-426c-a382-b75017315c78') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 5118325, class_year = '3º Ano', course_id = 'a52adcb4-2cf5-426c-a382-b75017315c78', role = 'student' WHERE email = 'laylasalviano123@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'laysabva2024@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"LAYSA MARIA MACHADO NASCIMENTO"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'LAYSA MARIA MACHADO NASCIMENTO', 'laysabva2024@gmail.com', 'student', 4785780, '3º Ano', 'a52adcb4-2cf5-426c-a382-b75017315c78') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4785780, class_year = '3º Ano', course_id = 'a52adcb4-2cf5-426c-a382-b75017315c78', role = 'student' WHERE email = 'laysabva2024@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'mikellyfernandes11@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"LUIZA MIKELLY FERNANDES MOURA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'LUIZA MIKELLY FERNANDES MOURA', 'mikellyfernandes11@gmail.com', 'student', 3542819, '3º Ano', 'a52adcb4-2cf5-426c-a382-b75017315c78') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3542819, class_year = '3º Ano', course_id = 'a52adcb4-2cf5-426c-a382-b75017315c78', role = 'student' WHERE email = 'mikellyfernandes11@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'mariaclarabva2024@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA CLARA SILVA ALVES"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MARIA CLARA SILVA ALVES', 'mariaclarabva2024@gmail.com', 'student', 2984929, '3º Ano', 'a52adcb4-2cf5-426c-a382-b75017315c78') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 2984929, class_year = '3º Ano', course_id = 'a52adcb4-2cf5-426c-a382-b75017315c78', role = 'student' WHERE email = 'mariaclarabva2024@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'mariaclarasilvaarujo28@gmail.', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA CLARA SILVA ARAUJO"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MARIA CLARA SILVA ARAUJO', 'mariaclarasilvaarujo28@gmail.', 'student', 3408355, '3º Ano', 'a52adcb4-2cf5-426c-a382-b75017315c78') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3408355, class_year = '3º Ano', course_id = 'a52adcb4-2cf5-426c-a382-b75017315c78', role = 'student' WHERE email = 'mariaclarasilvaarujo28@gmail.';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'clarissealves431@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA CLARISSE ALVES"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MARIA CLARISSE ALVES', 'clarissealves431@gmail.com', 'student', 3555943, '3º Ano', 'a52adcb4-2cf5-426c-a382-b75017315c78') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3555943, class_year = '3º Ano', course_id = 'a52adcb4-2cf5-426c-a382-b75017315c78', role = 'student' WHERE email = 'clarissealves431@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'mariaeduardaacarvalho09@gmail.', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA EDUARDA PEREIRA DE CARVALHO"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MARIA EDUARDA PEREIRA DE CARVALHO', 'mariaeduardaacarvalho09@gmail.', 'student', 3548082, '3º Ano', 'a52adcb4-2cf5-426c-a382-b75017315c78') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3548082, class_year = '3º Ano', course_id = 'a52adcb4-2cf5-426c-a382-b75017315c78', role = 'student' WHERE email = 'mariaeduardaacarvalho09@gmail.';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'estefanybva2024@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA ESTEFANY BATISTA DA SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MARIA ESTEFANY BATISTA DA SILVA', 'estefanybva2024@gmail.com', 'student', 3800888, '3º Ano', 'a52adcb4-2cf5-426c-a382-b75017315c78') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3800888, class_year = '3º Ano', course_id = 'a52adcb4-2cf5-426c-a382-b75017315c78', role = 'student' WHERE email = 'estefanybva2024@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_4823850@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA FERNANDA MONTEIRO MARIANO"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MARIA FERNANDA MONTEIRO MARIANO', 'aluno_4823850@biblioedu.com', 'student', 4823850, '3º Ano', 'a52adcb4-2cf5-426c-a382-b75017315c78') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4823850, class_year = '3º Ano', course_id = 'a52adcb4-2cf5-426c-a382-b75017315c78', role = 'student' WHERE email = 'aluno_4823850@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'gabyzinha072005@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA GABRIELA RODRIGUES DA SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MARIA GABRIELA RODRIGUES DA SILVA', 'gabyzinha072005@gmail.com', 'student', 3417527, '3º Ano', 'a52adcb4-2cf5-426c-a382-b75017315c78') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3417527, class_year = '3º Ano', course_id = 'a52adcb4-2cf5-426c-a382-b75017315c78', role = 'student' WHERE email = 'gabyzinha072005@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'cmariaheloisa425@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA HELOISA COSTA VIEIRA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MARIA HELOISA COSTA VIEIRA', 'cmariaheloisa425@gmail.com', 'student', 3800678, '3º Ano', 'a52adcb4-2cf5-426c-a382-b75017315c78') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3800678, class_year = '3º Ano', course_id = 'a52adcb4-2cf5-426c-a382-b75017315c78', role = 'student' WHERE email = 'cmariaheloisa425@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'mariaheloise1415@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA HELOISE MOURA DA SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MARIA HELOISE MOURA DA SILVA', 'mariaheloise1415@gmail.com', 'student', 3410384, '3º Ano', 'a52adcb4-2cf5-426c-a382-b75017315c78') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3410384, class_year = '3º Ano', course_id = 'a52adcb4-2cf5-426c-a382-b75017315c78', role = 'student' WHERE email = 'mariaheloise1415@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'oliveiraheloyse52@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA HELOYSE OLIVEIRA SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MARIA HELOYSE OLIVEIRA SILVA', 'oliveiraheloyse52@gmail.com', 'student', 3421192, '3º Ano', 'a52adcb4-2cf5-426c-a382-b75017315c78') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3421192, class_year = '3º Ano', course_id = 'a52adcb4-2cf5-426c-a382-b75017315c78', role = 'student' WHERE email = 'oliveiraheloyse52@gmail.com';
    END IF;
END $$;