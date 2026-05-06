DO $$
DECLARE
    new_user_id UUID;
BEGIN
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'rebecamarculino2025@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"REBECA MARCULINO SANTOS"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'REBECA MARCULINO SANTOS', 'rebecamarculino2025@gmail.com', 'student', 5415218, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 5415218, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'rebecamarculino2025@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'sarabva2025@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"SARA MARIA VIDAL RODRIGUES"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'SARA MARIA VIDAL RODRIGUES', 'sarabva2025@gmail.com', 'student', 4982107, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4982107, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'sarabva2025@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'limajacosophia@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"SOPHIA DE LIMA JACO"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'SOPHIA DE LIMA JACO', 'limajacosophia@gmail.com', 'student', 5423176, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 5423176, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'limajacosophia@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'taisateles12@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"TAISA MARIA DA COSTA TELES"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'TAISA MARIA DA COSTA TELES', 'taisateles12@gmail.com', 'student', 5423099, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 5423099, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'taisateles12@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'vivianehelen15@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"VIVIANE HELEN GOMES DA SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'VIVIANE HELEN GOMES DA SILVA', 'vivianehelen15@gmail.com', 'student', 2422354, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 2422354, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'vivianehelen15@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'w87885102@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"WEVELYN OLIVEIRA SANTOS"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'WEVELYN OLIVEIRA SANTOS', 'w87885102@gmail.com', 'student', 3786851, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3786851, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'w87885102@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'yasllabeatriz00@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"YASLLA BEATRIZ SILVA GOMES"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'YASLLA BEATRIZ SILVA GOMES', 'yasllabeatriz00@gmail.com', 'student', 4799742, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4799742, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'yasllabeatriz00@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'y01550394@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"YASMIM SILVA FURTADO"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'YASMIM SILVA FURTADO', 'y01550394@gmail.com', 'student', 3796959, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3796959, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'y01550394@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'adrielkeimisonmeet@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ADRIEL KEIMISON PEREIRA BEZERRA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'ADRIEL KEIMISON PEREIRA BEZERRA', 'adrielkeimisonmeet@gmail.com', 'student', 3416984, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3416984, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'adrielkeimisonmeet@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'allyciam966@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ALLYCIA MARIA NUNES LEITE"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'ALLYCIA MARIA NUNES LEITE', 'allyciam966@gmail.com', 'student', 5433297, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 5433297, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'allyciam966@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'amarillysbva2025@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"AMARILLYS NUNES RODRIGUES"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'AMARILLYS NUNES RODRIGUES', 'amarillysbva2025@gmail.com', 'student', 5424531, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 5424531, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'amarillysbva2025@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'anneesther132@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ANNE ESTHER LEITE SOUSA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'ANNE ESTHER LEITE SOUSA', 'anneesther132@gmail.com', 'student', 3794509, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3794509, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'anneesther132@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'tamecfxp@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ARTHUR LEITE DE ARAUJO"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'ARTHUR LEITE DE ARAUJO', 'tamecfxp@gmail.com', 'student', 3416637, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3416637, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'tamecfxp@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'brendamariabva2009@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"BRENDA MARIA TAVARES LIMA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'BRENDA MARIA TAVARES LIMA', 'brendamariabva2009@gmail.com', 'student', 4690098, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4690098, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'brendamariabva2009@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'wallacy12x@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"CAIO WALLACE PEREIRA DE ABREUS"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'CAIO WALLACE PEREIRA DE ABREUS', 'wallacy12x@gmail.com', 'student', 3417266, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3417266, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'wallacy12x@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'diego19nascimento18@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"DAMIAO HENRIQUE NASCIMENTO DE OLIVEIRA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'DAMIAO HENRIQUE NASCIMENTO DE OLIVEIRA', 'diego19nascimento18@gmail.com', 'student', 3794380, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3794380, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'diego19nascimento18@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'daphynemonteiro97@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"DAPHYNE MONTEIRO MIRANDA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'DAPHYNE MONTEIRO MIRANDA', 'daphynemonteiro97@gmail.com', 'student', 4799751, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4799751, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'daphynemonteiro97@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'dexterdeporteiras@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"DEXTER AQUILES MARCULINO SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'DEXTER AQUILES MARCULINO SILVA', 'dexterdeporteiras@gmail.com', 'student', 5424428, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 5424428, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'dexterdeporteiras@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'eliedsonbva2025@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ELIEDSON OLIVEIRA DE LIMA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'ELIEDSON OLIVEIRA DE LIMA', 'eliedsonbva2025@gmail.com', 'student', 3794392, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3794392, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'eliedsonbva2025@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'franciscalyne115@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"FRANCISCA ISRAELYNE FELIX DOS SANTOS"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'FRANCISCA ISRAELYNE FELIX DOS SANTOS', 'franciscalyne115@gmail.com', 'student', 3421148, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3421148, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'franciscalyne115@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'leviandrade650@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"FRANCISCO LEVI ANDRADE DE CARVALHO"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'FRANCISCO LEVI ANDRADE DE CARVALHO', 'leviandrade650@gmail.com', 'student', 3421158, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3421158, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'leviandrade650@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'iarydsacordeiro@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"GLORIA IARYDSA LANDIM CORDEIRO"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'GLORIA IARYDSA LANDIM CORDEIRO', 'iarydsacordeiro@gmail.com', 'student', 4780309, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4780309, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'iarydsacordeiro@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'freireg802@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"GUSTAVO FREIRE DE DEUS"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'GUSTAVO FREIRE DE DEUS', 'freireg802@gmail.com', 'student', 3796833, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3796833, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'freireg802@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'g9528842@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"GUSTAVO TAVARES GOMES"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'GUSTAVO TAVARES GOMES', 'g9528842@gmail.com', 'student', 3800146, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3800146, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'g9528842@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'hudsonrodriguesmatias@gmail.', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"HUDSON RODRIGUES MATIAS"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'HUDSON RODRIGUES MATIAS', 'hudsonrodriguesmatias@gmail.', 'student', 4193717, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4193717, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'hudsonrodriguesmatias@gmail.';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'ianylima0211@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"IANY GOMES DE LIMA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'IANY GOMES DE LIMA', 'ianylima0211@gmail.com', 'student', 3789902, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3789902, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'ianylima0211@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'isabelamariasimpliciovieira01@g', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ISABELA MARIA SIMPLICIO VIEIRA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'ISABELA MARIA SIMPLICIO VIEIRA', 'isabelamariasimpliciovieira01@g', 'student', 3431006, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3431006, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'isabelamariasimpliciovieira01@g';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'furtadojoaolucas22@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOAO LUCAS DA SILVA FURTADO"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'JOAO LUCAS DA SILVA FURTADO', 'furtadojoaolucas22@gmail.com', 'student', 3778485, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3778485, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'furtadojoaolucas22@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'fabioestudante77@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOSE FABIO RIBEIRO DA SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'JOSE FABIO RIBEIRO DA SILVA', 'fabioestudante77@gmail.com', 'student', 3058435, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3058435, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'fabioestudante77@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'kesleysalviano1020@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOSE KESLEY LOURENCO SALVIANO"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'JOSE KESLEY LOURENCO SALVIANO', 'kesleysalviano1020@gmail.com', 'student', 3423105, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3423105, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'kesleysalviano1020@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'nikovianalins@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOSE KEYRRYSON VIANA LINS"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'JOSE KEYRRYSON VIANA LINS', 'nikovianalins@gmail.com', 'student', 4823351, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4823351, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'nikovianalins@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'josemarcosbva2025@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOSE MARCOS IZIDORIO DE OLIVEIRA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'JOSE MARCOS IZIDORIO DE OLIVEIRA', 'josemarcosbva2025@gmail.com', 'student', 3797187, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3797187, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'josemarcosbva2025@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'moisesferreirae@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOSE MOISES FERREIRA LEITE"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'JOSE MOISES FERREIRA LEITE', 'moisesferreirae@gmail.com', 'student', 3912707, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3912707, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'moisesferreirae@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'karolynegenykelly@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"KAROLYNE GENYKELLY COSTA ALVES"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'KAROLYNE GENYKELLY COSTA ALVES', 'karolynegenykelly@gmail.com', 'student', 2672516, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 2672516, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'karolynegenykelly@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'lauramedeiros902@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"LAURA MEDEIROS DOS SANTOS"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'LAURA MEDEIROS DOS SANTOS', 'lauramedeiros902@gmail.com', 'student', 5424468, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 5424468, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'lauramedeiros902@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'liviaalmeida6964@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"LIVIA MARIA DE ALMEIDA NASCIMENTO"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'LIVIA MARIA DE ALMEIDA NASCIMENTO', 'liviaalmeida6964@gmail.com', 'student', 3921241, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3921241, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'liviaalmeida6964@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'lucasgrangeiro448@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"LUCAS GRANGEIRO DE MELO"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'LUCAS GRANGEIRO DE MELO', 'lucasgrangeiro448@gmail.com', 'student', 3421805, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3421805, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'lucasgrangeiro448@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'delfinosousaludmyla@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"LUDMYLA DELFINO SOUSA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'LUDMYLA DELFINO SOUSA', 'delfinosousaludmyla@gmail.com', 'student', 5424492, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 5424492, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'delfinosousaludmyla@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'l6897195@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"LUIZ ANTONIO EVANGELISTA SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'LUIZ ANTONIO EVANGELISTA SILVA', 'l6897195@gmail.com', 'student', 3784737, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3784737, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'l6897195@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'm7267737@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARCOS WANDERSON OLIVEIRA SANTOS"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MARCOS WANDERSON OLIVEIRA SANTOS', 'm7267737@gmail.com', 'student', 3417115, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3417115, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'm7267737@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'yukiihopenjr@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA BIANCA PEREIRA DOS SANTOS"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MARIA BIANCA PEREIRA DOS SANTOS', 'yukiihopenjr@gmail.com', 'student', 3796896, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3796896, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'yukiihopenjr@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'maria.clara.furt4d0@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA CLARA FURTADO DOS SANTOS"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MARIA CLARA FURTADO DOS SANTOS', 'maria.clara.furt4d0@gmail.com', 'student', 4692197, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4692197, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'maria.clara.furt4d0@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'larissasousamedeiros98@gmail.', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA LARISSA MEDEIROS DE SOUSA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MARIA LARISSA MEDEIROS DE SOUSA', 'larissasousamedeiros98@gmail.', 'student', 3799760, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3799760, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'larissasousamedeiros98@gmail.';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'marialouysenunes2306@gmail.', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA LOUYSE NUNES DA SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MARIA LOUYSE NUNES DA SILVA', 'marialouysenunes2306@gmail.', 'student', 4577575, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4577575, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'marialouysenunes2306@gmail.';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'welinesouza5@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA WELINI ARAUJO DE SOUZA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MARIA WELINI ARAUJO DE SOUZA', 'welinesouza5@gmail.com', 'student', 3792572, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3792572, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'welinesouza5@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'moisesbva2025@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MOISES GRANGEIRO SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MOISES GRANGEIRO SILVA', 'moisesbva2025@gmail.com', 'student', 3421822, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3421822, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'moisesbva2025@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'lucad111183838@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"PEDRO LUCAS BEZERRA DE ARAUJO SANTOS"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'PEDRO LUCAS BEZERRA DE ARAUJO SANTOS', 'lucad111183838@gmail.com', 'student', 3403506, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3403506, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'lucad111183838@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'ramon67sousa@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"RAMON FURTUOSO SOUSA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'RAMON FURTUOSO SOUSA', 'ramon67sousa@gmail.com', 'student', 2422344, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 2422344, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'ramon67sousa@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'ruanlevy103@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"RUAN LEVY SAMPAIO SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'RUAN LEVY SAMPAIO SILVA', 'ruanlevy103@gmail.com', 'student', 3799892, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3799892, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'ruanlevy103@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'tathay01983@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"THAYS NUNES DE OLIVEIRA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'THAYS NUNES DE OLIVEIRA', 'tathay01983@gmail.com', 'student', 3414926, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3414926, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'tathay01983@gmail.com';
    END IF;
END $$;