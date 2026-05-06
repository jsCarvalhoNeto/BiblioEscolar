DO $$
DECLARE
    new_user_id UUID;
BEGIN
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'v33210631@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"VINICIUS VIEIRA NOVAIS"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'VINICIUS VIEIRA NOVAIS', 'v33210631@gmail.com', 'student', 3429010, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3429010, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'v33210631@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'yannebeatrici@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"YANNE BEATRICI SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'YANNE BEATRICI SILVA', 'yannebeatrici@gmail.com', 'student', 3406035, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3406035, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'yannebeatrici@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', '3408280.sem.email@seduc.ce.', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ANA BEATRIZ FERREIRA DOS SANTOS"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'ANA BEATRIZ FERREIRA DOS SANTOS', '3408280.sem.email@seduc.ce.', 'student', 3408280, '3º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3408280, class_year = '3º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = '3408280.sem.email@seduc.ce.';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'anabeatrizbva@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ANA BEATRIZ PEREIRA DE MOURA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'ANA BEATRIZ PEREIRA DE MOURA', 'anabeatrizbva@gmail.com', 'student', 4458218, '3º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4458218, class_year = '3º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'anabeatrizbva@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 's2patroa00@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ANA BEATRIZ SANTOS MONTEIRO"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'ANA BEATRIZ SANTOS MONTEIRO', 's2patroa00@gmail.com', 'student', 3972795, '3º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3972795, class_year = '3º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 's2patroa00@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'romeulucena11@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ANTONIO ROMEU TAVARES LUCENA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'ANTONIO ROMEU TAVARES LUCENA', 'romeulucena11@gmail.com', 'student', 2068560, '3º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 2068560, class_year = '3º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'romeulucena11@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'carlosbva2024@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"CARLOS EDUARDO SOUZA LEITE"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'CARLOS EDUARDO SOUZA LEITE', 'carlosbva2024@gmail.com', 'student', 4957706, '3º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4957706, class_year = '3º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'carlosbva2024@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'ciceroeverton2008@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"CICERO EVERTON FLORENCIO SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'CICERO EVERTON FLORENCIO SILVA', 'ciceroeverton2008@gmail.com', 'student', 3547966, '3º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3547966, class_year = '3º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'ciceroeverton2008@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'emilaalves214@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"EMILIA ALVES LINO"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'EMILIA ALVES LINO', 'emilaalves214@gmail.com', 'student', 3972947, '3º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3972947, class_year = '3º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'emilaalves214@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'e3374156@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"EVELLYN DE SANTANA TIBURTINO"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'EVELLYN DE SANTANA TIBURTINO', 'e3374156@gmail.com', 'student', 4431938, '3º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4431938, class_year = '3º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'e3374156@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'evertonbva2024@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"EVERTON LORRAN FIGUEIREDO CARLOS"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'EVERTON LORRAN FIGUEIREDO CARLOS', 'evertonbva2024@gmail.com', 'student', 4628540, '3º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4628540, class_year = '3º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'evertonbva2024@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'kayobelem44@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"FRANCISCO KAYO BELEM DOS SANTOS"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'FRANCISCO KAYO BELEM DOS SANTOS', 'kayobelem44@gmail.com', 'student', 3405669, '3º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3405669, class_year = '3º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'kayobelem44@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'guilhermerobertobva@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"GUILHERME ROBERTO DOS SANTOS"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'GUILHERME ROBERTO DOS SANTOS', 'guilhermerobertobva@gmail.com', 'student', 2091261, '3º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 2091261, class_year = '3º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'guilhermerobertobva@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'gs98078475762@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"GUILHERME SILVA CAVALCANTE RODRIGUES"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'GUILHERME SILVA CAVALCANTE RODRIGUES', 'gs98078475762@gmail.com', 'student', 4431241, '3º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4431241, class_year = '3º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'gs98078475762@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'gustavomedeirosbva@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"GUSTAVO MEDEIROS ALVES"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'GUSTAVO MEDEIROS ALVES', 'gustavomedeirosbva@gmail.com', 'student', 5001678, '3º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 5001678, class_year = '3º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'gustavomedeirosbva@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'itallomatiasbva@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ITALLO MATIAS SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'ITALLO MATIAS SILVA', 'itallomatiasbva@gmail.com', 'student', 5120534, '3º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 5120534, class_year = '3º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'itallomatiasbva@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'kayllaneizabel@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"IZABEL KAYLLANE PATRICIO XAVIER"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'IZABEL KAYLLANE PATRICIO XAVIER', 'kayllaneizabel@gmail.com', 'student', 2241538, '3º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 2241538, class_year = '3º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'kayllaneizabel@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'mayanejamille9@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JAMILLE MAYANE SOUSA SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'JAMILLE MAYANE SOUSA SILVA', 'mayanejamille9@gmail.com', 'student', 5258572, '3º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 5258572, class_year = '3º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'mayanejamille9@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'joaocarlosgomesferreira5@gmail.', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOAO CARLOS GOMES FERREIRA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'JOAO CARLOS GOMES FERREIRA', 'joaocarlosgomesferreira5@gmail.', 'student', 3548053, '3º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3548053, class_year = '3º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'joaocarlosgomesferreira5@gmail.';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'joseabraao314@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOSE ABRAAO SARAIVA FIGUEREDO"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'JOSE ABRAAO SARAIVA FIGUEREDO', 'joseabraao314@gmail.com', 'student', 3408680, '3º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3408680, class_year = '3º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'joseabraao314@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'kalelsantos357@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOSE KALEL CUNHA DOS SANTOS"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'JOSE KALEL CUNHA DOS SANTOS', 'kalelsantos357@gmail.com', 'student', 3793724, '3º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3793724, class_year = '3º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'kalelsantos357@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'julyahellenf@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JULYA HELLEN FERNANDES ROCHA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'JULYA HELLEN FERNANDES ROCHA', 'julyahellenf@gmail.com', 'student', 3408343, '3º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3408343, class_year = '3º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'julyahellenf@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'kauanalves777k@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"KAUAN ALVES DE SOUZA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'KAUAN ALVES DE SOUZA', 'kauanalves777k@gmail.com', 'student', 3987538, '3º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3987538, class_year = '3º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'kauanalves777k@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'liviabva2024@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"LIVIA ROSARIO DE SOUSA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'LIVIA ROSARIO DE SOUSA', 'liviabva2024@gmail.com', 'student', 3421081, '3º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3421081, class_year = '3º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'liviabva2024@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'meduardaclementinomendes@gm', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA EDUARDA CLEMENTINO MENDES"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MARIA EDUARDA CLEMENTINO MENDES', 'meduardaclementinomendes@gm', 'student', 3422035, '3º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3422035, class_year = '3º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'meduardaclementinomendes@gm';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'mariaeloisacouto05@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA ELOIZA COUTO DOS SANTOS"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MARIA ELOIZA COUTO DOS SANTOS', 'mariaeloisacouto05@gmail.com', 'student', 2282083, '3º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 2282083, class_year = '3º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'mariaeloisacouto05@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'marialais686@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA LAIS INACIO DA SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MARIA LAIS INACIO DA SILVA', 'marialais686@gmail.com', 'student', 2250297, '3º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 2250297, class_year = '3º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'marialais686@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'mirele19010@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA MIRELE DA SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MARIA MIRELE DA SILVA', 'mirele19010@gmail.com', 'student', 4567464, '3º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4567464, class_year = '3º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'mirele19010@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'mf5111314@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MATHEUS FERREIRA DE OLIVEIRA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MATHEUS FERREIRA DE OLIVEIRA', 'mf5111314@gmail.com', 'student', 2509739, '3º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 2509739, class_year = '3º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'mf5111314@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'floromikael6@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MIKAEL FLORO DA SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MIKAEL FLORO DA SILVA', 'floromikael6@gmail.com', 'student', 3283027, '3º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3283027, class_year = '3º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'floromikael6@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'guizim693@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"PEDRO GUILHERME PEREIRA MARTINS DA SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'PEDRO GUILHERME PEREIRA MARTINS DA SILVA', 'guizim693@gmail.com', 'student', 3431317, '3º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3431317, class_year = '3º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'guizim693@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'pedroneto890123@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"PEDRO RODRIGUES SANTANA NETO"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'PEDRO RODRIGUES SANTANA NETO', 'pedroneto890123@gmail.com', 'student', 3408805, '3º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3408805, class_year = '3º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'pedroneto890123@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'raimundomessi29@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"RAIMUNDO MESSI OLIVEIRA DE LUCENA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'RAIMUNDO MESSI OLIVEIRA DE LUCENA', 'raimundomessi29@gmail.com', 'student', 4700513, '3º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4700513, class_year = '3º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'raimundomessi29@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'rayllonbernard3@icloud.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"RAYLLON BERNARDO FERREIRA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'RAYLLON BERNARDO FERREIRA', 'rayllonbernard3@icloud.com', 'student', 2713774, '3º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 2713774, class_year = '3º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'rayllonbernard3@icloud.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'riquelmevidaldossantos@gmail.', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"RIQUELME VIDAL DOS SANTOS"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'RIQUELME VIDAL DOS SANTOS', 'riquelmevidaldossantos@gmail.', 'student', 3547331, '3º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3547331, class_year = '3º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'riquelmevidaldossantos@gmail.';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'rakellytarcila5@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"TARCILA RAKELLY DE SOUZA GOMES"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'TARCILA RAKELLY DE SOUZA GOMES', 'rakellytarcila5@gmail.com', 'student', 3544961, '3º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3544961, class_year = '3º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'rakellytarcila5@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'zeneideleonardo4@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ZENEIDE LEONARDO BEZERRA FERNANDES"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'ZENEIDE LEONARDO BEZERRA FERNANDES', 'zeneideleonardo4@gmail.com', 'student', 4939988, '3º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4939988, class_year = '3º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'zeneideleonardo4@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'llarasousa560@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ANA LARA FERREIRA SOUSA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'ANA LARA FERREIRA SOUSA', 'llarasousa560@gmail.com', 'student', 3431076, '3º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3431076, class_year = '3º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'llarasousa560@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'larissaferreirabs149@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ANA LARISSA FERREIRA SOUSA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'ANA LARISSA FERREIRA SOUSA', 'larissaferreirabs149@gmail.com', 'student', 3431081, '3º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3431081, class_year = '3º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'larissaferreirabs149@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'sampaioanalyce3@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ANALYCE LUNA BARROS SAMPAIO"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'ANALYCE LUNA BARROS SAMPAIO', 'sampaioanalyce3@gmail.com', 'student', 3415620, '3º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3415620, class_year = '3º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'sampaioanalyce3@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'andersonalves11ks@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ANDERSON ALVES DA SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'ANDERSON ALVES DA SILVA', 'andersonalves11ks@gmail.com', 'student', 3547659, '3º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3547659, class_year = '3º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'andersonalves11ks@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'andreysilvaaraujo12345@gmail.', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ANDREY WEINY ARAUJO SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'ANDREY WEINY ARAUJO SILVA', 'andreysilvaaraujo12345@gmail.', 'student', 4766539, '3º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4766539, class_year = '3º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'andreysilvaaraujo12345@gmail.';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'antonnysousa812@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ANTONY RODRIGUES DE SOUSA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'ANTONY RODRIGUES DE SOUSA', 'antonnysousa812@gmail.com', 'student', 3555879, '3º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3555879, class_year = '3º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'antonnysousa812@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'lucaslopo00a@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"CICERO DIEGO BERNARDINO BENEDITO"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'CICERO DIEGO BERNARDINO BENEDITO', 'lucaslopo00a@gmail.com', 'student', 4766338, '3º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4766338, class_year = '3º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'lucaslopo00a@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'iciceroiasley@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"CICERO IASLEY INACIO DE LIMA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'CICERO IASLEY INACIO DE LIMA', 'iciceroiasley@gmail.com', 'student', 4902766, '3º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4902766, class_year = '3º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'iciceroiasley@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'freitasnalisson61@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"CICERO NALISSON FREITAS SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'CICERO NALISSON FREITAS SILVA', 'freitasnalisson61@gmail.com', 'student', 2276013, '3º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 2276013, class_year = '3º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'freitasnalisson61@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'deyvisonigoralbertocavalcante@g', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"DEYVISON IGOR CAVALCANTE ALBERTO"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'DEYVISON IGOR CAVALCANTE ALBERTO', 'deyvisonigoralbertocavalcante@g', 'student', 4430960, '3º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4430960, class_year = '3º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'deyvisonigoralbertocavalcante@g';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'eriklimalopes19@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ERIK LOPES DE LIMA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'ERIK LOPES DE LIMA', 'eriklimalopes19@gmail.com', 'student', 3417494, '3º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3417494, class_year = '3º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'eriklimalopes19@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'franciscoguilhermea1@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"FRANCISCO GUILHERME LUNA BARBOSA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'FRANCISCO GUILHERME LUNA BARBOSA', 'franciscoguilhermea1@gmail.com', 'student', 3408316, '3º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3408316, class_year = '3º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'franciscoguilhermea1@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'araujohigor577@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"FRANCISCO IGOR ARAUJO DA SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'FRANCISCO IGOR ARAUJO DA SILVA', 'araujohigor577@gmail.com', 'student', 3783379, '3º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3783379, class_year = '3º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'araujohigor577@gmail.com';
    END IF;
END $$;