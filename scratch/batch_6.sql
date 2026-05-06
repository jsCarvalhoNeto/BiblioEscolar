DO $$
DECLARE
    new_user_id UUID;
BEGIN
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'elisabethsilva0409@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA ELISABETH DA SILVA LIMA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MARIA ELISABETH DA SILVA LIMA', 'elisabethsilva0409@gmail.com', 'student', 2244477, '2º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 2244477, class_year = '2º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'elisabethsilva0409@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'mariaisabelbva2025@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA ISABEL FERNANDES DOS SANTOS"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MARIA ISABEL FERNANDES DOS SANTOS', 'mariaisabelbva2025@gmail.com', 'student', 3798280, '2º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3798280, class_year = '2º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'mariaisabelbva2025@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'maria.isa102020@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA ISADORA PEREIRA FIGUEIREDO ARAUJO"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MARIA ISADORA PEREIRA FIGUEIREDO ARAUJO', 'maria.isa102020@gmail.com', 'student', 5422464, '2º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 5422464, class_year = '2º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'maria.isa102020@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'joelinydias@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA JOELINY DIAS DOS SANTOS"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MARIA JOELINY DIAS DOS SANTOS', 'joelinydias@gmail.com', 'student', 3416559, '2º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3416559, class_year = '2º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'joelinydias@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'leticiafurtado573@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA LETICIA ELISEU FURTADO"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MARIA LETICIA ELISEU FURTADO', 'leticiafurtado573@gmail.com', 'student', 2704097, '2º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 2704097, class_year = '2º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'leticiafurtado573@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'mariannesantosbva@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIANNE SANTOS SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MARIANNE SANTOS SILVA', 'mariannesantosbva@gmail.com', 'student', 3784781, '2º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3784781, class_year = '2º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'mariannesantosbva@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'm26131465@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MIGUEL GABRIEL PEREIRA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MIGUEL GABRIEL PEREIRA', 'm26131465@gmail.com', 'student', 4437098, '2º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4437098, class_year = '2º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'm26131465@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', '1401weli@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"PEDRO JONAS TAVARES FIGUEIREDO"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'PEDRO JONAS TAVARES FIGUEIREDO', '1401weli@gmail.com', 'student', 4672871, '2º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4672871, class_year = '2º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = '1401weli@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'pedrootaviocaetanosousa5@gmail', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"PEDRO OTAVIO CAETANO SOUSA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'PEDRO OTAVIO CAETANO SOUSA', 'pedrootaviocaetanosousa5@gmail', 'student', 5294435, '2º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 5294435, class_year = '2º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'pedrootaviocaetanosousa5@gmail';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'r38622471@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"RARYSSON LUCAS CAVALCANTE EVANGELISTA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'RARYSSON LUCAS CAVALCANTE EVANGELISTA', 'r38622471@gmail.com', 'student', 3795986, '2º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3795986, class_year = '2º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'r38622471@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'vitormonteir3@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"VITOR MONTEIRO GOMES"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'VITOR MONTEIRO GOMES', 'vitormonteir3@gmail.com', 'student', 3414361, '2º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3414361, class_year = '2º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'vitormonteir3@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3796950@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"YAGO PEREIRA GOMES"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'YAGO PEREIRA GOMES', 'aluno_3796950@biblioedu.com', 'student', 3796950, '2º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3796950, class_year = '2º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'aluno_3796950@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'horacioytallo709@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"YTALLO HORACIO DA SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'YTALLO HORACIO DA SILVA', 'horacioytallo709@gmail.com', 'student', 3413122, '2º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3413122, class_year = '2º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'horacioytallo709@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'alanaalvesbva2025@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ALANA ALVES EVANGELISTA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'ALANA ALVES EVANGELISTA', 'alanaalvesbva2025@gmail.com', 'student', 3791484, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3791484, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'alanaalvesbva2025@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'pinheirocarolina327@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ANA CAROLINA DOS SANTOS PINHEIRO"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'ANA CAROLINA DOS SANTOS PINHEIRO', 'pinheirocarolina327@gmail.com', 'student', 3697444, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3697444, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'pinheirocarolina327@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'anaflaviaafml9@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ANA FLAVIA MADEIRO DE LIMA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'ANA FLAVIA MADEIRO DE LIMA', 'anaflaviaafml9@gmail.com', 'student', 3785418, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3785418, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'anaflaviaafml9@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'analidhialimasantos@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ANA LIDHIA LIMA SANTOS"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'ANA LIDHIA LIMA SANTOS', 'analidhialimasantos@gmail.com', 'student', 4982048, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4982048, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'analidhialimasantos@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'anamarisa595@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ANA MARISA ROSENDO DE LIMA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'ANA MARISA ROSENDO DE LIMA', 'anamarisa595@gmail.com', 'student', 4799103, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4799103, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'anamarisa595@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'ayvii1299@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ANA YVINA GOMES VIDAL"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'ANA YVINA GOMES VIDAL', 'ayvii1299@gmail.com', 'student', 4799708, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4799708, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'ayvii1299@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aureliabva2025@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"AURELIA TIBURCIO DE LUCENA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'AURELIA TIBURCIO DE LUCENA', 'aureliabva2025@gmail.com', 'student', 2086472, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 2086472, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'aureliabva2025@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'bianalitecs@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"BIANCA LIMA COSTA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'BIANCA LIMA COSTA', 'bianalitecs@gmail.com', 'student', 4002192, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4002192, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'bianalitecs@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'cindymabel533@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"CINDY MABEL DE OLIVEIRA SANTOS"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'CINDY MABEL DE OLIVEIRA SANTOS', 'cindymabel533@gmail.com', 'student', 4782358, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4782358, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'cindymabel533@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'davialunoonline@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"DAVI ROSA SANTOS"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'DAVI ROSA SANTOS', 'davialunoonline@gmail.com', 'student', 4435505, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4435505, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'davialunoonline@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'gabrielaalmeida4556@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"GABRIELLY CLEMENTINO LEITE"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'GABRIELLY CLEMENTINO LEITE', 'gabrielaalmeida4556@gmail.com', 'student', 3796822, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3796822, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'gabrielaalmeida4556@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'glicyarayyanny.silvaa@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"GLICYA RAYANNY DA SILVA COSTA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'GLICYA RAYANNY DA SILVA COSTA', 'glicyarayyanny.silvaa@gmail.com', 'student', 5133166, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 5133166, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'glicyarayyanny.silvaa@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'joseairtonnm2009@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOSE AIRTON PEREIRA DA SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'JOSE AIRTON PEREIRA DA SILVA', 'joseairtonnm2009@gmail.com', 'student', 3416644, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3416644, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'joseairtonnm2009@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'jkeirryson7@icloud.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOSE KEIRRYSON ALEIXO DE SOUSA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'JOSE KEIRRYSON ALEIXO DE SOUSA', 'jkeirryson7@icloud.com', 'student', 4227932, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4227932, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'jkeirryson7@icloud.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'keyvsonalmada@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOSE KEYVSON ALMADA MORAES"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'JOSE KEYVSON ALMADA MORAES', 'keyvsonalmada@gmail.com', 'student', 5123427, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 5123427, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'keyvsonalmada@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'juliabva2025@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JULIA PESSOA DOS SANTOS"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'JULIA PESSOA DOS SANTOS', 'juliabva2025@gmail.com', 'student', 4982086, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4982086, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'juliabva2025@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'kallebem224@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"KALLEBE MEDEIROS BEZERRA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'KALLEBE MEDEIROS BEZERRA', 'kallebem224@gmail.com', 'student', 4899712, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4899712, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'kallebem224@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'souzakaylannealmeida@gmail.', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"KAYLANNE ALMEIDA DE SOUSA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'KAYLANNE ALMEIDA DE SOUSA', 'souzakaylannealmeida@gmail.', 'student', 3786824, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3786824, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'souzakaylannealmeida@gmail.';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'laravitoriabf09@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"LARA VITORIA BERTO DE FRANCA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'LARA VITORIA BERTO DE FRANCA', 'laravitoriabf09@gmail.com', 'student', 4276913, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4276913, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'laravitoriabf09@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'laurapsampaioo@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"LAURA PEREIRA SAMPAIO"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'LAURA PEREIRA SAMPAIO', 'laurapsampaioo@gmail.com', 'student', 3423111, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3423111, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'laurapsampaioo@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'l85691450@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"LETICIA EVELLYN SOARES DA SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'LETICIA EVELLYN SOARES DA SILVA', 'l85691450@gmail.com', 'student', 3799726, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3799726, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'l85691450@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'louyserachel@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"LOUYSE RACHEL ALVES MACEDO"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'LOUYSE RACHEL ALVES MACEDO', 'louyserachel@gmail.com', 'student', 5423085, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 5423085, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'louyserachel@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'mr.aissa78929@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA AISSA INACIO DE MELO"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MARIA AISSA INACIO DE MELO', 'mr.aissa78929@gmail.com', 'student', 3795906, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3795906, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'mr.aissa78929@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'almeidamariabianca1@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA BIANCA ALMEIDA SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MARIA BIANCA ALMEIDA SILVA', 'almeidamariabianca1@gmail.com', 'student', 3783502, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3783502, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'almeidamariabianca1@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'camilasalustro@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA CAMILA BERTO PEREIRA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MARIA CAMILA BERTO PEREIRA', 'camilasalustro@gmail.com', 'student', 3791522, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3791522, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'camilasalustro@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'eduardacardoso180609@gmail.', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA EDUARDA CARDOSO FREITAS"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MARIA EDUARDA CARDOSO FREITAS', 'eduardacardoso180609@gmail.', 'student', 5423264, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 5423264, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'eduardacardoso180609@gmail.';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'eduardacruz688@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA EDUARDA CRUZ MORAIS"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MARIA EDUARDA CRUZ MORAIS', 'eduardacruz688@gmail.com', 'student', 5225957, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 5225957, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'eduardacruz688@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'i3582060@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA ISABEL ALVES COSTA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MARIA ISABEL ALVES COSTA', 'i3582060@gmail.com', 'student', 2672758, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 2672758, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'i3582060@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'mariajaciellyribeirosilva@gmail.', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA JACIELLY RIBEIRO SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MARIA JACIELLY RIBEIRO SILVA', 'mariajaciellyribeirosilva@gmail.', 'student', 4799715, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4799715, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'mariajaciellyribeirosilva@gmail.';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'marianathallydeoliveirasilva@gma', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA NATHALLY DE OLIVEIRA SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MARIA NATHALLY DE OLIVEIRA SILVA', 'marianathallydeoliveirasilva@gma', 'student', 4692255, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4692255, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'marianathallydeoliveirasilva@gma';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'vvaleriamaria09@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA VALERIA TIBURTINO MESSIAS"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MARIA VALERIA TIBURTINO MESSIAS', 'vvaleriamaria09@gmail.com', 'student', 3417157, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3417157, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'vvaleriamaria09@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'alveswilliane69@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA WILLIANE ALVES DE LIMA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MARIA WILLIANE ALVES DE LIMA', 'alveswilliane69@gmail.com', 'student', 3786845, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3786845, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'alveswilliane69@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'mariaivinna963@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA YVINNA GOMES MARTINS"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MARIA YVINNA GOMES MARTINS', 'mariaivinna963@gmail.com', 'student', 4799734, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4799734, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'mariaivinna963@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'melissaoli019@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MELISSA BATISTA DE OLIVEIRA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MELISSA BATISTA DE OLIVEIRA', 'melissaoli019@gmail.com', 'student', 3733918, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3733918, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'melissaoli019@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'pamelamaria20009@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"PAMELA MARIA OLIVEIRA DA SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'PAMELA MARIA OLIVEIRA DA SILVA', 'pamelamaria20009@gmail.com', 'student', 3417422, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3417422, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'pamelamaria20009@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'alvespedroian7@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"PEDRO IAN ARISTIDES ALVES"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'PEDRO IAN ARISTIDES ALVES', 'alvespedroian7@gmail.com', 'student', 3796919, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3796919, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'alvespedroian7@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'rakelydemetrio68@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"RAKELY DEMETRIO TAVARES"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'RAKELY DEMETRIO TAVARES', 'rakelydemetrio68@gmail.com', 'student', 3798056, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3798056, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'rakelydemetrio68@gmail.com';
    END IF;
END $$;