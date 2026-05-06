DO $$
DECLARE
    new_user_id UUID;
BEGIN
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_4897584@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JORGE HYAGO TAVARES FERREIRA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'JORGE HYAGO TAVARES FERREIRA', 'aluno_4897584@biblioedu.com', 'student', 4897584, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4897584, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'aluno_4897584@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_4011097@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOSE ALAN CARVALHO SANTOS"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'JOSE ALAN CARVALHO SANTOS', 'aluno_4011097@biblioedu.com', 'student', 4011097, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4011097, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'aluno_4011097@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3406187@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOSE EDUARDO FIGUEIREDO SANTOS"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'JOSE EDUARDO FIGUEIREDO SANTOS', 'aluno_3406187@biblioedu.com', 'student', 3406187, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3406187, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'aluno_3406187@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_4013337@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOSE EVERTON CARVALHO DA SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'JOSE EVERTON CARVALHO DA SILVA', 'aluno_4013337@biblioedu.com', 'student', 4013337, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4013337, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'aluno_4013337@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_4629086@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOSE MATHEUS ALVES BEZERRA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'JOSE MATHEUS ALVES BEZERRA', 'aluno_4629086@biblioedu.com', 'student', 4629086, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4629086, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'aluno_4629086@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'yagosomg3@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOSE YAGO DE ARAUJO MARIANO"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'JOSE YAGO DE ARAUJO MARIANO', 'yagosomg3@gmail.com', 'student', 3408714, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3408714, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'yagosomg3@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3612578@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"KALINE SOARES DE SOUZA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'KALINE SOARES DE SOUZA', 'aluno_3612578@biblioedu.com', 'student', 3612578, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3612578, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'aluno_3612578@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_4433522@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"KAMILA SOARES CLEMENTINO"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'KAMILA SOARES CLEMENTINO', 'aluno_4433522@biblioedu.com', 'student', 4433522, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4433522, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'aluno_4433522@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'kauaoliveiraalves03@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"KAUA OLIVEIRA ALVES"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'KAUA OLIVEIRA ALVES', 'kauaoliveiraalves03@gmail.com', 'student', 3909723, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3909723, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'kauaoliveiraalves03@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_5461172@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"KAYO LUCAS ROCHA SANTOS"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'KAYO LUCAS ROCHA SANTOS', 'aluno_5461172@biblioedu.com', 'student', 5461172, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 5461172, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'aluno_5461172@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'kellrytonc@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"KELLRYTON WALLACE CARDOSO PEREIRA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'KELLRYTON WALLACE CARDOSO PEREIRA', 'kellrytonc@gmail.com', 'student', 3609026, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3609026, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'kellrytonc@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'cjuvino6@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"LEVY FIGUEIREDO MARINHO"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'LEVY FIGUEIREDO MARINHO', 'cjuvino6@gmail.com', 'student', 4835093, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4835093, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'cjuvino6@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_5672974@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"LIVYA NASCIMENTO SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'LIVYA NASCIMENTO SILVA', 'aluno_5672974@biblioedu.com', 'student', 5672974, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 5672974, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'aluno_5672974@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_4824737@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"LUAN GUSTAVO DE FIGUEIREDO FURTADO"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'LUAN GUSTAVO DE FIGUEIREDO FURTADO', 'aluno_4824737@biblioedu.com', 'student', 4824737, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4824737, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'aluno_4824737@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aryadne326ferreira@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA ARYADNE DE SOUSA FERREIRA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MARIA ARYADNE DE SOUSA FERREIRA', 'aryadne326ferreira@gmail.com', 'student', 3417221, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3417221, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'aryadne326ferreira@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3623418@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA CECILIA MATIAS DA SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MARIA CECILIA MATIAS DA SILVA', 'aluno_3623418@biblioedu.com', 'student', 3623418, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3623418, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'aluno_3623418@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_5672951@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA EDUARDA GOMES MARCOLINO"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MARIA EDUARDA GOMES MARCOLINO', 'aluno_5672951@biblioedu.com', 'student', 5672951, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 5672951, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'aluno_5672951@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'elyzasantana.ti@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA ELYZA SANTANA DA SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MARIA ELYZA SANTANA DA SILVA', 'elyzasantana.ti@gmail.com', 'student', 3417234, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3417234, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'elyzasantana.ti@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3428941@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA FERNANDA SOARES SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MARIA FERNANDA SOARES SILVA', 'aluno_3428941@biblioedu.com', 'student', 3428941, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3428941, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'aluno_3428941@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_4011460@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA HELOA SOUSA RODRIGUES"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MARIA HELOA SOUSA RODRIGUES', 'aluno_4011460@biblioedu.com', 'student', 4011460, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4011460, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'aluno_4011460@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'maria.santos6280@aluno.ce.gov.', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA JAQUELINE DE MOURA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MARIA JAQUELINE DE MOURA', 'maria.santos6280@aluno.ce.gov.', 'student', 2685322, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 2685322, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'maria.santos6280@aluno.ce.gov.';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3420545@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA MICHELLE DA SILVA SOUSA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MARIA MICHELLE DA SILVA SOUSA', 'aluno_3420545@biblioedu.com', 'student', 3420545, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3420545, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'aluno_3420545@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_4011346@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA RITA FABLICIO DA SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MARIA RITA FABLICIO DA SILVA', 'aluno_4011346@biblioedu.com', 'student', 4011346, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4011346, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'aluno_4011346@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3426428@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MYLENA DHEYSLA DOS SANTOS OLIVEIRA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MYLENA DHEYSLA DOS SANTOS OLIVEIRA', 'aluno_3426428@biblioedu.com', 'student', 3426428, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3426428, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'aluno_3426428@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'passuero023@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"PEDRO ASSUERO MONTEIRO LACERDA DE"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'PEDRO ASSUERO MONTEIRO LACERDA DE', 'passuero023@gmail.com', 'student', 4531300, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4531300, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'passuero023@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3415580@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"PEDRO MIGUEL DOS SANTOS NETO"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'PEDRO MIGUEL DOS SANTOS NETO', 'aluno_3415580@biblioedu.com', 'student', 3415580, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3415580, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'aluno_3415580@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3405613@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"VICTOR GABRIEL ALVES DE ARAUJO"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'VICTOR GABRIEL ALVES DE ARAUJO', 'aluno_3405613@biblioedu.com', 'student', 3405613, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3405613, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'aluno_3405613@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'analeticianunes2025@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ANA LETICIA NUNES LUCENA TAVARES"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'ANA LETICIA NUNES LUCENA TAVARES', 'analeticianunes2025@gmail.com', 'student', 4105500, '2º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4105500, class_year = '2º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'analeticianunes2025@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'querinolivia63@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ANA LIVIA DE SOUSA QUERINO"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'ANA LIVIA DE SOUSA QUERINO', 'querinolivia63@gmail.com', 'student', 3708834, '2º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3708834, class_year = '2º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'querinolivia63@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'annaluyzasilva810@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ANNA LUYZA LOPES DA SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'ANNA LUYZA LOPES DA SILVA', 'annaluyzasilva810@gmail.com', 'student', 3764701, '2º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3764701, class_year = '2º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'annaluyzasilva810@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'henriquebva2025@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ANTONIO HENRIQUE SOUZA ARAUJO"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'ANTONIO HENRIQUE SOUZA ARAUJO', 'henriquebva2025@gmail.com', 'student', 2094329, '2º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 2094329, class_year = '2º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'henriquebva2025@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'caioe6880@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"CAIO EMANUEL SANTOS INACIO"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'CAIO EMANUEL SANTOS INACIO', 'caioe6880@gmail.com', 'student', 3421735, '2º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3421735, class_year = '2º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'caioe6880@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'cicerocaiofernandes20@gmail.', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"CICERO CAIO FERNANDES DE SOUSA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'CICERO CAIO FERNANDES DE SOUSA', 'cicerocaiofernandes20@gmail.', 'student', 3422188, '2º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3422188, class_year = '2º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'cicerocaiofernandes20@gmail.';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'cicerogustavo204@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"CICERO GUSTAVO ALVES GOMES"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'CICERO GUSTAVO ALVES GOMES', 'cicerogustavo204@gmail.com', 'student', 2710354, '2º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 2710354, class_year = '2º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'cicerogustavo204@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'kayquecicero9@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"CICERO KAYQUE EMIDIO DOS SANTOS"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'CICERO KAYQUE EMIDIO DOS SANTOS', 'kayquecicero9@gmail.com', 'student', 2249698, '2º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 2249698, class_year = '2º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'kayquecicero9@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'edsonkaue216@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"EDSON KAUE MENEZES HOLANDA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'EDSON KAUE MENEZES HOLANDA', 'edsonkaue216@gmail.com', 'student', 3405782, '2º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3405782, class_year = '2º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'edsonkaue216@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'beh5960@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"FERNANDO ALVES DE LIMA NETO"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'FERNANDO ALVES DE LIMA NETO', 'beh5960@gmail.com', 'student', 3785443, '2º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3785443, class_year = '2º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'beh5960@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'luizafausto251@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"FRANCISCA LUIZA DA SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'FRANCISCA LUIZA DA SILVA', 'luizafausto251@gmail.com', 'student', 3756751, '2º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3756751, class_year = '2º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'luizafausto251@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'vitorialins1253@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"FRANCISCA VITORIA LINS DA SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'FRANCISCA VITORIA LINS DA SILVA', 'vitorialins1253@gmail.com', 'student', 3607274, '2º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3607274, class_year = '2º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'vitorialins1253@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'franciscosergiodasilvaneto@gmail', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"FRANCISCO SERGIO DA SILVA NETO"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'FRANCISCO SERGIO DA SILVA NETO', 'franciscosergiodasilvaneto@gmail', 'student', 3794536, '2º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3794536, class_year = '2º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'franciscosergiodasilvaneto@gmail';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'yarley.rodrigues2506@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"FRANCISCO YARLEY AZEVEDO RODRIGUES"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'FRANCISCO YARLEY AZEVEDO RODRIGUES', 'yarley.rodrigues2506@gmail.com', 'student', 3417386, '2º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3417386, class_year = '2º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'yarley.rodrigues2506@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'hevellyalmeida238@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"HEVELLY ALMEIDA MATIAS"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'HEVELLY ALMEIDA MATIAS', 'hevellyalmeida238@gmail.com', 'student', 2723926, '2º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 2723926, class_year = '2º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'hevellyalmeida238@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'franciscobeneditovicente@gmail.', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ISAQUE VICENTE DA SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'ISAQUE VICENTE DA SILVA', 'franciscobeneditovicente@gmail.', 'student', 5423735, '2º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 5423735, class_year = '2º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'franciscobeneditovicente@gmail.';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'joaopedrobva2025@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOAO PEDRO MENDES LOPES"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'JOAO PEDRO MENDES LOPES', 'joaopedrobva2025@gmail.com', 'student', 3784121, '2º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3784121, class_year = '2º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'joaopedrobva2025@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'kaiolima02.bs@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOSE KAIO LIMA DA SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'JOSE KAIO LIMA DA SILVA', 'kaiolima02.bs@gmail.com', 'student', 2189730, '2º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 2189730, class_year = '2º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'kaiolima02.bs@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'alveskeyla26@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"KEYLA HELLEN ALVES SOARES"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'KEYLA HELLEN ALVES SOARES', 'alveskeyla26@gmail.com', 'student', 3431010, '2º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3431010, class_year = '2º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'alveskeyla26@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'laraheloisacarvalho091@gmail.', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"LARA HELOISA CARVALHO GOMES"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'LARA HELOISA CARVALHO GOMES', 'laraheloisacarvalho091@gmail.', 'student', 3784728, '2º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3784728, class_year = '2º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'laraheloisacarvalho091@gmail.';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'dasilvaleticiaemilly@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"LETICIA EMILLY DA SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'LETICIA EMILLY DA SILVA', 'dasilvaleticiaemilly@gmail.com', 'student', 3413191, '2º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3413191, class_year = '2º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'dasilvaleticiaemilly@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'luisgustavoss2019@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"LUIS GUSTAVO SILVA SANTOS"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'LUIS GUSTAVO SILVA SANTOS', 'luisgustavoss2019@gmail.com', 'student', 3408849, '2º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3408849, class_year = '2º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'luisgustavoss2019@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'mariaanislaine39@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA ANISLAINE CORDEIRO ARAUJO"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MARIA ANISLAINE CORDEIRO ARAUJO', 'mariaanislaine39@gmail.com', 'student', 3420835, '2º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3420835, class_year = '2º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'mariaanislaine39@gmail.com';
    END IF;
END $$;