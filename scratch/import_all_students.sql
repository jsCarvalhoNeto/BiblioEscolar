DO $$
DECLARE
    new_user_id UUID;
BEGIN
    -- Bulk Student Import
    -- Student: ADINAELHYA VITORIA OLIVEIRA DA SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_5494900@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ADINAELHYA VITORIA OLIVEIRA DA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'ADINAELHYA VITORIA OLIVEIRA DA SILVA', 'aluno_5494900@biblioedu.com', 'student', 5494900, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 5494900, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'aluno_5494900@biblioedu.com';
    END IF;

    -- Student: ANA BEATRIZ DOS SANTOS ROCHA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'anabeatrizsantos9278292@gmail.', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ANA BEATRIZ DOS SANTOS ROCHA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'ANA BEATRIZ DOS SANTOS ROCHA', 'anabeatrizsantos9278292@gmail.', 'student', 4011113, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4011113, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'anabeatrizsantos9278292@gmail.';
    END IF;

    -- Student: ANA MARIA RODRIGUES LEMOS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'xitadadoxit@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ANA MARIA RODRIGUES LEMOS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'ANA MARIA RODRIGUES LEMOS', 'xitadadoxit@gmail.com', 'student', 3404759, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3404759, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'xitadadoxit@gmail.com';
    END IF;

    -- Student: CASSIA MARIA PEREIRA CARDOSO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'cm1700366@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"CASSIA MARIA PEREIRA CARDOSO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'CASSIA MARIA PEREIRA CARDOSO', 'cm1700366@gmail.com', 'student', 3410867, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3410867, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'cm1700366@gmail.com';
    END IF;

    -- Student: CELINA MARIA DA SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'celinamariadasilva77@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"CELINA MARIA DA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'CELINA MARIA DA SILVA', 'celinamariadasilva77@gmail.com', 'student', 3610992, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3610992, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'celinamariadasilva77@gmail.com';
    END IF;

    -- Student: CIBELE MARIA DA SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'cibeleninha2010@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"CIBELE MARIA DA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'CIBELE MARIA DA SILVA', 'cibeleninha2010@gmail.com', 'student', 3610998, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3610998, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'cibeleninha2010@gmail.com';
    END IF;

    -- Student: CICERO REINAN BARBOSA DA SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'ciceroreinan09@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"CICERO REINAN BARBOSA DA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'CICERO REINAN BARBOSA DA SILVA', 'ciceroreinan09@gmail.com', 'student', 3796051, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3796051, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'ciceroreinan09@gmail.com';
    END IF;

    -- Student: DIEGO RENAN PATRICIO DE SOUSA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'diogorenanax@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"DIEGO RENAN PATRICIO DE SOUSA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'DIEGO RENAN PATRICIO DE SOUSA', 'diogorenanax@gmail.com', 'student', 3416275, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3416275, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'diogorenanax@gmail.com';
    END IF;

    -- Student: EDUARDO LEOBINO NOGUEIRA VIDAL
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'eduardovidal8153@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"EDUARDO LEOBINO NOGUEIRA VIDAL"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'EDUARDO LEOBINO NOGUEIRA VIDAL', 'eduardovidal8153@gmail.com', 'student', 2689291, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 2689291, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'eduardovidal8153@gmail.com';
    END IF;

    -- Student: EVELLEM VITORIA ALBERTO LIMA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'vitoriaevellem339@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"EVELLEM VITORIA ALBERTO LIMA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'EVELLEM VITORIA ALBERTO LIMA', 'vitoriaevellem339@gmail.com', 'student', 4633653, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4633653, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'vitoriaevellem339@gmail.com';
    END IF;

    -- Student: FABIOLA VITORIA SECUNDO FILGUEIRA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'fabyollavitoria10@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"FABIOLA VITORIA SECUNDO FILGUEIRA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'FABIOLA VITORIA SECUNDO FILGUEIRA', 'fabyollavitoria10@gmail.com', 'student', 4403204, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4403204, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'fabyollavitoria10@gmail.com';
    END IF;

    -- Student: FRANCISCO IARLLY DA CONCEICAO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'iarlleyznx56@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"FRANCISCO IARLLY DA CONCEICAO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'FRANCISCO IARLLY DA CONCEICAO', 'iarlleyznx56@gmail.com', 'student', 3624147, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3624147, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'iarlleyznx56@gmail.com';
    END IF;

    -- Student: GLICIA AQUINO ALVES
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'jacylda.alves.axc@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"GLICIA AQUINO ALVES"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'GLICIA AQUINO ALVES', 'jacylda.alves.axc@gmail.com', 'student', 3205982, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3205982, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'jacylda.alves.axc@gmail.com';
    END IF;

    -- Student: IKARO HORACIO SANTOS LIMA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'ikarohoracio7@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"IKARO HORACIO SANTOS LIMA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'IKARO HORACIO SANTOS LIMA', 'ikarohoracio7@gmail.com', 'student', 4011180, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4011180, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'ikarohoracio7@gmail.com';
    END IF;

    -- Student: ISABELLA LEITE DE MEDEIROS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'isabellaxd.medeiros5@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ISABELLA LEITE DE MEDEIROS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'ISABELLA LEITE DE MEDEIROS', 'isabellaxd.medeiros5@gmail.com', 'student', 4243959, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4243959, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'isabellaxd.medeiros5@gmail.com';
    END IF;

    -- Student: JENYFFER MARIA DE BRITO LIMA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'jenyffermaria333@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JENYFFER MARIA DE BRITO LIMA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'JENYFFER MARIA DE BRITO LIMA', 'jenyffermaria333@gmail.com', 'student', 3406362, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3406362, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'jenyffermaria333@gmail.com';
    END IF;

    -- Student: JOAO CHRISLEY ALVES QUARESMA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'joaochrisley@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOAO CHRISLEY ALVES QUARESMA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'JOAO CHRISLEY ALVES QUARESMA', 'joaochrisley@gmail.com', 'student', 3973895, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3973895, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'joaochrisley@gmail.com';
    END IF;

    -- Student: JONAS EMANOEL LOPES DA SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'j73747704@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JONAS EMANOEL LOPES DA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'JONAS EMANOEL LOPES DA SILVA', 'j73747704@gmail.com', 'student', 4011440, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4011440, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'j73747704@gmail.com';
    END IF;

    -- Student: JOSE MESSIAS RODRIGUES DA SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'rodriguesmessias380@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOSE MESSIAS RODRIGUES DA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'JOSE MESSIAS RODRIGUES DA SILVA', 'rodriguesmessias380@gmail.com', 'student', 4924898, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4924898, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'rodriguesmessias380@gmail.com';
    END IF;

    -- Student: JOSE WERBERT MANGUEIRA DOS SANTOS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'josewerbertmangueiradossantos@', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOSE WERBERT MANGUEIRA DOS SANTOS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'JOSE WERBERT MANGUEIRA DOS SANTOS', 'josewerbertmangueiradossantos@', 'student', 3416145, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3416145, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'josewerbertmangueiradossantos@';
    END IF;

    -- Student: JULIO CESAR ALMEIDA FURTADO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'juliocesardo440@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JULIO CESAR ALMEIDA FURTADO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'JULIO CESAR ALMEIDA FURTADO', 'juliocesardo440@gmail.com', 'student', 4011225, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4011225, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'juliocesardo440@gmail.com';
    END IF;

    -- Student: JULIO CEZAR FRANCA DA SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3426687@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JULIO CEZAR FRANCA DA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'JULIO CEZAR FRANCA DA SILVA', 'aluno_3426687@biblioedu.com', 'student', 3426687, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3426687, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'aluno_3426687@biblioedu.com';
    END IF;

    -- Student: KAIQUE ARAUJO SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'kaiquearaujogomes2010@gmail.', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"KAIQUE ARAUJO SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'KAIQUE ARAUJO SILVA', 'kaiquearaujogomes2010@gmail.', 'student', 3428991, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3428991, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'kaiquearaujogomes2010@gmail.';
    END IF;

    -- Student: KEISON ARAUJO SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'keisonaraujo412@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"KEISON ARAUJO SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'KEISON ARAUJO SILVA', 'keisonaraujo412@gmail.com', 'student', 3426992, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3426992, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'keisonaraujo412@gmail.com';
    END IF;

    -- Student: LAIS KEMELLY RICARTE FELIX
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'kemellyricarte@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"LAIS KEMELLY RICARTE FELIX"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'LAIS KEMELLY RICARTE FELIX', 'kemellyricarte@gmail.com', 'student', 3415478, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3415478, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'kemellyricarte@gmail.com';
    END IF;

    -- Student: LARA THALITA SOUSA RIBEIRO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'larathalytasousa@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"LARA THALITA SOUSA RIBEIRO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'LARA THALITA SOUSA RIBEIRO', 'larathalytasousa@gmail.com', 'student', 3416146, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3416146, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'larathalytasousa@gmail.com';
    END IF;

    -- Student: LETICIA XAVIER DOS SANTOS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'leticiaxavier0811@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"LETICIA XAVIER DOS SANTOS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'LETICIA XAVIER DOS SANTOS', 'leticiaxavier0811@gmail.com', 'student', 3623562, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3623562, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'leticiaxavier0811@gmail.com';
    END IF;

    -- Student: LEVI BARBOSA DOS SANTOS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'levibarbosa7@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"LEVI BARBOSA DOS SANTOS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'LEVI BARBOSA DOS SANTOS', 'levibarbosa7@gmail.com', 'student', 3417096, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3417096, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'levibarbosa7@gmail.com';
    END IF;

    -- Student: LUAN RODRIGUES SANTOS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'rluancll7@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"LUAN RODRIGUES SANTOS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'LUAN RODRIGUES SANTOS', 'rluancll7@gmail.com', 'student', 3987845, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3987845, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'rluancll7@gmail.com';
    END IF;

    -- Student: MARIA CECILIA LIMA ANDRADE
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'cecilialimaa33@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA CECILIA LIMA ANDRADE"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA CECILIA LIMA ANDRADE', 'cecilialimaa33@gmail.com', 'student', 3989694, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3989694, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'cecilialimaa33@gmail.com';
    END IF;

    -- Student: MARIA DE JESUS DOS SANTOS DE MESQUITA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'marysantos1234bs@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA DE JESUS DOS SANTOS DE MESQUITA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA DE JESUS DOS SANTOS DE MESQUITA', 'marysantos1234bs@gmail.com', 'student', 4480998, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4480998, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'marysantos1234bs@gmail.com';
    END IF;

    -- Student: MARIA EDUARDA LUCENA DE MOURA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3421656@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA EDUARDA LUCENA DE MOURA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA EDUARDA LUCENA DE MOURA', 'aluno_3421656@biblioedu.com', 'student', 3421656, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3421656, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'aluno_3421656@biblioedu.com';
    END IF;

    -- Student: MARIA HELOYSA TAVARES SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'mheloysa@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA HELOYSA TAVARES SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA HELOYSA TAVARES SILVA', 'mheloysa@gmail.com', 'student', 4013453, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4013453, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'mheloysa@gmail.com';
    END IF;

    -- Student: MARIA WELLYNE BARBOSA SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'mariawellynebarbosa@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA WELLYNE BARBOSA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA WELLYNE BARBOSA SILVA', 'mariawellynebarbosa@gmail.com', 'student', 3416151, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3416151, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'mariawellynebarbosa@gmail.com';
    END IF;

    -- Student: MARIA YASMIM SILVA ALEXANDRIA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'mariayasss03@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA YASMIM SILVA ALEXANDRIA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA YASMIM SILVA ALEXANDRIA', 'mariayasss03@gmail.com', 'student', 4019311, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4019311, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'mariayasss03@gmail.com';
    END IF;

    -- Student: NICOLLY GOMES DA SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'nicollyg453@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"NICOLLY GOMES DA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'NICOLLY GOMES DA SILVA', 'nicollyg453@gmail.com', 'student', 3428950, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3428950, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'nicollyg453@gmail.com';
    END IF;

    -- Student: PEDRO GABRIEL INACIO BERTO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'loloopedrog@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"PEDRO GABRIEL INACIO BERTO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'PEDRO GABRIEL INACIO BERTO', 'loloopedrog@gmail.com', 'student', 4761543, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4761543, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'loloopedrog@gmail.com';
    END IF;

    -- Student: SAMUEL DE SOUSA ROCHA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3987892@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"SAMUEL DE SOUSA ROCHA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'SAMUEL DE SOUSA ROCHA', 'aluno_3987892@biblioedu.com', 'student', 3987892, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3987892, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'aluno_3987892@biblioedu.com';
    END IF;

    -- Student: SARA FERREIRA DA COSTA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', '5f57455474@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"SARA FERREIRA DA COSTA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'SARA FERREIRA DA COSTA', '5f57455474@gmail.com', 'student', 3421177, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3421177, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = '5f57455474@gmail.com';
    END IF;

    -- Student: SAVIO AQUINO SANTOS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'pereirabezerraandes@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"SAVIO AQUINO SANTOS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'SAVIO AQUINO SANTOS', 'pereirabezerraandes@gmail.com', 'student', 3205877, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3205877, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'pereirabezerraandes@gmail.com';
    END IF;

    -- Student: TAYLLANE CAROLINO PINHEIRO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'tayllanecarolinop@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"TAYLLANE CAROLINO PINHEIRO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'TAYLLANE CAROLINO PINHEIRO', 'tayllanecarolinop@gmail.com', 'student', 4899715, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4899715, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'tayllanecarolinop@gmail.com';
    END IF;

    -- Student: WILLAMYS TIBURTINO DA SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3416525@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"WILLAMYS TIBURTINO DA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'WILLAMYS TIBURTINO DA SILVA', 'aluno_3416525@biblioedu.com', 'student', 3416525, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3416525, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'aluno_3416525@biblioedu.com';
    END IF;

    -- Student: YTALO BRENO DOS SANTOS ALEXANDRE
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'breninhosantos668@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"YTALO BRENO DOS SANTOS ALEXANDRE"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'YTALO BRENO DOS SANTOS ALEXANDRE', 'breninhosantos668@gmail.com', 'student', 3416318, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3416318, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'breninhosantos668@gmail.com';
    END IF;

    -- Student: AGNALDO LEITE DE LUCENA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_5676874@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"AGNALDO LEITE DE LUCENA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'AGNALDO LEITE DE LUCENA', 'aluno_5676874@biblioedu.com', 'student', 5676874, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 5676874, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'aluno_5676874@biblioedu.com';
    END IF;

    -- Student: ALEXSANDRO SANTANA DOS SANTOS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_4898569@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ALEXSANDRO SANTANA DOS SANTOS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'ALEXSANDRO SANTANA DOS SANTOS', 'aluno_4898569@biblioedu.com', 'student', 4898569, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4898569, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'aluno_4898569@biblioedu.com';
    END IF;

    -- Student: ANA ALICIA DE MATOS JUVINO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'maria.santos6280@aluno.ce.gov.', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ANA ALICIA DE MATOS JUVINO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'ANA ALICIA DE MATOS JUVINO', 'maria.santos6280@aluno.ce.gov.', 'student', 2461373, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 2461373, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'maria.santos6280@aluno.ce.gov.';
    END IF;

    -- Student: ANA CLARA DA SILVA SOUZA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3182234@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ANA CLARA DA SILVA SOUZA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'ANA CLARA DA SILVA SOUZA', 'aluno_3182234@biblioedu.com', 'student', 3182234, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3182234, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'aluno_3182234@biblioedu.com';
    END IF;

    -- Student: ANA FRANCISCA DE SOUZA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'maria.santos6280@aluno.ce.gov.', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ANA FRANCISCA DE SOUZA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'ANA FRANCISCA DE SOUZA', 'maria.santos6280@aluno.ce.gov.', 'student', 2724113, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 2724113, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'maria.santos6280@aluno.ce.gov.';
    END IF;

    -- Student: ANGELA MARIA CAVALCANTE ARAUJO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3984587@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ANGELA MARIA CAVALCANTE ARAUJO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'ANGELA MARIA CAVALCANTE ARAUJO', 'aluno_3984587@biblioedu.com', 'student', 3984587, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3984587, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'aluno_3984587@biblioedu.com';
    END IF;

    -- Student: APARECIDA PEREIRA DE SOUSA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3206004@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"APARECIDA PEREIRA DE SOUSA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'APARECIDA PEREIRA DE SOUSA', 'aluno_3206004@biblioedu.com', 'student', 3206004, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3206004, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'aluno_3206004@biblioedu.com';
    END IF;

    -- Student: CAIO HENRIQUE CAZUZA PEREIRA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_5676925@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"CAIO HENRIQUE CAZUZA PEREIRA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'CAIO HENRIQUE CAZUZA PEREIRA', 'aluno_5676925@biblioedu.com', 'student', 5676925, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 5676925, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'aluno_5676925@biblioedu.com';
    END IF;

    -- Student: CEZAR INACIO DA SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3987789@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"CEZAR INACIO DA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'CEZAR INACIO DA SILVA', 'aluno_3987789@biblioedu.com', 'student', 3987789, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3987789, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'aluno_3987789@biblioedu.com';
    END IF;

    -- Student: DANIEL PEDRO DO NASCIMENTO SANTOS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3410893@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"DANIEL PEDRO DO NASCIMENTO SANTOS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'DANIEL PEDRO DO NASCIMENTO SANTOS', 'aluno_3410893@biblioedu.com', 'student', 3410893, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3410893, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'aluno_3410893@biblioedu.com';
    END IF;

    -- Student: DAVI WILKER CARVALHO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3984616@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"DAVI WILKER CARVALHO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'DAVI WILKER CARVALHO', 'aluno_3984616@biblioedu.com', 'student', 3984616, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3984616, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'aluno_3984616@biblioedu.com';
    END IF;

    -- Student: DIEGO MAURICIO FELIX DOS SANTOS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3421356@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"DIEGO MAURICIO FELIX DOS SANTOS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'DIEGO MAURICIO FELIX DOS SANTOS', 'aluno_3421356@biblioedu.com', 'student', 3421356, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3421356, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'aluno_3421356@biblioedu.com';
    END IF;

    -- Student: DIOGO PEREIRA DA SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'maria.santos6280@aluno.ce.gov.', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"DIOGO PEREIRA DA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'DIOGO PEREIRA DA SILVA', 'maria.santos6280@aluno.ce.gov.', 'student', 2483095, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 2483095, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'maria.santos6280@aluno.ce.gov.';
    END IF;

    -- Student: EMILLY EVELLY ALVES IZIDIO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3404644@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"EMILLY EVELLY ALVES IZIDIO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'EMILLY EVELLY ALVES IZIDIO', 'aluno_3404644@biblioedu.com', 'student', 3404644, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3404644, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'aluno_3404644@biblioedu.com';
    END IF;

    -- Student: EWELY DESYREE FERREIRA DE ALMEIDA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_4730391@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"EWELY DESYREE FERREIRA DE ALMEIDA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'EWELY DESYREE FERREIRA DE ALMEIDA', 'aluno_4730391@biblioedu.com', 'student', 4730391, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4730391, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'aluno_4730391@biblioedu.com';
    END IF;

    -- Student: FRANCISCO SAULO SILVA CLEMENTINO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_4011418@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"FRANCISCO SAULO SILVA CLEMENTINO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'FRANCISCO SAULO SILVA CLEMENTINO', 'aluno_4011418@biblioedu.com', 'student', 4011418, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4011418, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'aluno_4011418@biblioedu.com';
    END IF;

    -- Student: GUILHERME MARTINS EVANGELISTA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_4017263@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"GUILHERME MARTINS EVANGELISTA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'GUILHERME MARTINS EVANGELISTA', 'aluno_4017263@biblioedu.com', 'student', 4017263, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4017263, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'aluno_4017263@biblioedu.com';
    END IF;

    -- Student: HENRIQUE FERNANDES ALVES
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_5670511@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"HENRIQUE FERNANDES ALVES"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'HENRIQUE FERNANDES ALVES', 'aluno_5670511@biblioedu.com', 'student', 5670511, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 5670511, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'aluno_5670511@biblioedu.com';
    END IF;

    -- Student: IVAN FIRMINO ALVES FILHO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3932917@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"IVAN FIRMINO ALVES FILHO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'IVAN FIRMINO ALVES FILHO', 'aluno_3932917@biblioedu.com', 'student', 3932917, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3932917, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'aluno_3932917@biblioedu.com';
    END IF;

    -- Student: JOAO LUCAS OLIVEIRA LIMA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3404655@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOAO LUCAS OLIVEIRA LIMA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'JOAO LUCAS OLIVEIRA LIMA', 'aluno_3404655@biblioedu.com', 'student', 3404655, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3404655, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'aluno_3404655@biblioedu.com';
    END IF;

    -- Student: JOAO PAULO LUCIEN MARTINS TEIXEIRA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'joaopaulobsanto@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOAO PAULO LUCIEN MARTINS TEIXEIRA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'JOAO PAULO LUCIEN MARTINS TEIXEIRA', 'joaopaulobsanto@gmail.com', 'student', 3405157, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3405157, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'joaopaulobsanto@gmail.com';
    END IF;

    -- Student: JOSE ARTHUR MARCULINO VIDAL SANTOS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_5292675@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOSE ARTHUR MARCULINO VIDAL SANTOS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'JOSE ARTHUR MARCULINO VIDAL SANTOS', 'aluno_5292675@biblioedu.com', 'student', 5292675, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 5292675, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'aluno_5292675@biblioedu.com';
    END IF;

    -- Student: JOSE ERIK SAMPAIO DA SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'raquelsousa0004@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOSE ERIK SAMPAIO DA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'JOSE ERIK SAMPAIO DA SILVA', 'raquelsousa0004@gmail.com', 'student', 2949251, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 2949251, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'raquelsousa0004@gmail.com';
    END IF;

    -- Student: JOSE JAKSON PEREIRA SILVA FILHO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3608614@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOSE JAKSON PEREIRA SILVA FILHO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'JOSE JAKSON PEREIRA SILVA FILHO', 'aluno_3608614@biblioedu.com', 'student', 3608614, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3608614, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'aluno_3608614@biblioedu.com';
    END IF;

    -- Student: JOSE RYAN NOVAES SANTOS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'ryannovaes70@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOSE RYAN NOVAES SANTOS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'JOSE RYAN NOVAES SANTOS', 'ryannovaes70@gmail.com', 'student', 3421641, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3421641, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'ryannovaes70@gmail.com';
    END IF;

    -- Student: JOSE THIAGO SOUSA DE MOURA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'moratiago014@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOSE THIAGO SOUSA DE MOURA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'JOSE THIAGO SOUSA DE MOURA', 'moratiago014@gmail.com', 'student', 3421363, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3421363, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'moratiago014@gmail.com';
    END IF;

    -- Student: JULIO CESAR CAMPOS DE SOUZA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3205939@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JULIO CESAR CAMPOS DE SOUZA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'JULIO CESAR CAMPOS DE SOUZA', 'aluno_3205939@biblioedu.com', 'student', 3205939, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3205939, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'aluno_3205939@biblioedu.com';
    END IF;

    -- Student: KARLOS EDUARDO PEREIRA DE LIMA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3608626@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"KARLOS EDUARDO PEREIRA DE LIMA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'KARLOS EDUARDO PEREIRA DE LIMA', 'aluno_3608626@biblioedu.com', 'student', 3608626, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3608626, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'aluno_3608626@biblioedu.com';
    END IF;

    -- Student: KLEYDSON AKON ALVES DOS SANTOS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_5676834@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"KLEYDSON AKON ALVES DOS SANTOS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'KLEYDSON AKON ALVES DOS SANTOS', 'aluno_5676834@biblioedu.com', 'student', 5676834, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 5676834, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'aluno_5676834@biblioedu.com';
    END IF;

    -- Student: LAIS MILENA PEREIRA DA SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3978826@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"LAIS MILENA PEREIRA DA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'LAIS MILENA PEREIRA DA SILVA', 'aluno_3978826@biblioedu.com', 'student', 3978826, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3978826, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'aluno_3978826@biblioedu.com';
    END IF;

    -- Student: LAYSE PEREIRA DE ANDRADE
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3159817@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"LAYSE PEREIRA DE ANDRADE"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'LAYSE PEREIRA DE ANDRADE', 'aluno_3159817@biblioedu.com', 'student', 3159817, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3159817, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'aluno_3159817@biblioedu.com';
    END IF;

    -- Student: LIVIA MARIA ALVES DA SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'maria.santos6280@aluno.ce.gov.', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"LIVIA MARIA ALVES DA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'LIVIA MARIA ALVES DA SILVA', 'maria.santos6280@aluno.ce.gov.', 'student', 2189508, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 2189508, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'maria.santos6280@aluno.ce.gov.';
    END IF;

    -- Student: LUAN INACIO SAMPAIO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3602368@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"LUAN INACIO SAMPAIO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'LUAN INACIO SAMPAIO', 'aluno_3602368@biblioedu.com', 'student', 3602368, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3602368, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'aluno_3602368@biblioedu.com';
    END IF;

    -- Student: LUIGGYANE MARIA COSTA GALDINO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3416147@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"LUIGGYANE MARIA COSTA GALDINO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'LUIGGYANE MARIA COSTA GALDINO', 'aluno_3416147@biblioedu.com', 'student', 3416147, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3416147, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'aluno_3416147@biblioedu.com';
    END IF;

    -- Student: MARIA LUYZA FERREIRA DA SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3411727@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA LUYZA FERREIRA DA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA LUYZA FERREIRA DA SILVA', 'aluno_3411727@biblioedu.com', 'student', 3411727, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3411727, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'aluno_3411727@biblioedu.com';
    END IF;

    -- Student: MARIA RAYSSA SOUSA DOS SANTOS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'm98047732@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA RAYSSA SOUSA DOS SANTOS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA RAYSSA SOUSA DOS SANTOS', 'm98047732@gmail.com', 'student', 2724730, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 2724730, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'm98047732@gmail.com';
    END IF;

    -- Student: MIGUEL PEREIRA DE LUCENA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_4013542@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MIGUEL PEREIRA DE LUCENA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MIGUEL PEREIRA DE LUCENA', 'aluno_4013542@biblioedu.com', 'student', 4013542, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4013542, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'aluno_4013542@biblioedu.com';
    END IF;

    -- Student: RONALD ATAIDE RIO NEGRO DA SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_4254814@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"RONALD ATAIDE RIO NEGRO DA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'RONALD ATAIDE RIO NEGRO DA SILVA', 'aluno_4254814@biblioedu.com', 'student', 4254814, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4254814, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'aluno_4254814@biblioedu.com';
    END IF;

    -- Student: SALEFE LORRAN FERREIRA DOS SANTOS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_4259744@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"SALEFE LORRAN FERREIRA DOS SANTOS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'SALEFE LORRAN FERREIRA DOS SANTOS', 'aluno_4259744@biblioedu.com', 'student', 4259744, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4259744, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'aluno_4259744@biblioedu.com';
    END IF;

    -- Student: SANIELDER FERREIRA OLIVEIRA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3416310@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"SANIELDER FERREIRA OLIVEIRA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'SANIELDER FERREIRA OLIVEIRA', 'aluno_3416310@biblioedu.com', 'student', 3416310, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3416310, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'aluno_3416310@biblioedu.com';
    END IF;

    -- Student: TAYLOR PINHEIRO ALVES FILHO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_4899799@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"TAYLOR PINHEIRO ALVES FILHO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'TAYLOR PINHEIRO ALVES FILHO', 'aluno_4899799@biblioedu.com', 'student', 4899799, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4899799, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'aluno_4899799@biblioedu.com';
    END IF;

    -- Student: TERESA DAVILLA EVANGELISTA SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_4797313@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"TERESA DAVILLA EVANGELISTA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'TERESA DAVILLA EVANGELISTA SILVA', 'aluno_4797313@biblioedu.com', 'student', 4797313, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4797313, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'aluno_4797313@biblioedu.com';
    END IF;

    -- Student: VANESSA CALISTA SOARES
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_4202754@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"VANESSA CALISTA SOARES"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'VANESSA CALISTA SOARES', 'aluno_4202754@biblioedu.com', 'student', 4202754, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4202754, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'aluno_4202754@biblioedu.com';
    END IF;

    -- Student: YGOR EUGENIO SANTOS SANTANA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'ygoreugenio98@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"YGOR EUGENIO SANTOS SANTANA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'YGOR EUGENIO SANTOS SANTANA', 'ygoreugenio98@gmail.com', 'student', 3996540, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3996540, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'ygoreugenio98@gmail.com';
    END IF;

    -- Student: ADLA KERZIA RODRIGUES SANTOS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3987714@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ADLA KERZIA RODRIGUES SANTOS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'ADLA KERZIA RODRIGUES SANTOS', 'aluno_3987714@biblioedu.com', 'student', 3987714, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3987714, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'aluno_3987714@biblioedu.com';
    END IF;

    -- Student: ADNA ALVES DA SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3426197@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ADNA ALVES DA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'ADNA ALVES DA SILVA', 'aluno_3426197@biblioedu.com', 'student', 3426197, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3426197, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'aluno_3426197@biblioedu.com';
    END IF;

    -- Student: AGUIDA SIQUEIRA LOURENCO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aguidasiqueira3@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"AGUIDA SIQUEIRA LOURENCO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'AGUIDA SIQUEIRA LOURENCO', 'aguidasiqueira3@gmail.com', 'student', 3996024, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3996024, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'aguidasiqueira3@gmail.com';
    END IF;

    -- Student: ALTINO YARLLEN PINHEIRO DE SOUSA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'sousayarllen9@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ALTINO YARLLEN PINHEIRO DE SOUSA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'ALTINO YARLLEN PINHEIRO DE SOUSA', 'sousayarllen9@gmail.com', 'student', 3416336, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3416336, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'sousayarllen9@gmail.com';
    END IF;

    -- Student: AMANDA MATIAS RIBEIRO DE SOUSA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3404619@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"AMANDA MATIAS RIBEIRO DE SOUSA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'AMANDA MATIAS RIBEIRO DE SOUSA', 'aluno_3404619@biblioedu.com', 'student', 3404619, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3404619, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'aluno_3404619@biblioedu.com';
    END IF;

    -- Student: ANA VITORIA DE SOUSA SANTOS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'anavitoria9067@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ANA VITORIA DE SOUSA SANTOS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'ANA VITORIA DE SOUSA SANTOS', 'anavitoria9067@gmail.com', 'student', 5016973, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 5016973, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'anavitoria9067@gmail.com';
    END IF;

    -- Student: ARIADNE LOUYSE CUNHA DA SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'ariadnelouyse@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ARIADNE LOUYSE CUNHA DA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'ARIADNE LOUYSE CUNHA DA SILVA', 'ariadnelouyse@gmail.com', 'student', 3416342, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3416342, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'ariadnelouyse@gmail.com';
    END IF;

    -- Student: CECILLYA NASCIMENTO OLIVEIRA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_5672704@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"CECILLYA NASCIMENTO OLIVEIRA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'CECILLYA NASCIMENTO OLIVEIRA', 'aluno_5672704@biblioedu.com', 'student', 5672704, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 5672704, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'aluno_5672704@biblioedu.com';
    END IF;

    -- Student: CICERA VITORIA LOURENCO DA SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_4415471@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"CICERA VITORIA LOURENCO DA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'CICERA VITORIA LOURENCO DA SILVA', 'aluno_4415471@biblioedu.com', 'student', 4415471, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4415471, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'aluno_4415471@biblioedu.com';
    END IF;

    -- Student: DEYVD KAWE FILGUEIRA EVANGELISTA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_4010932@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"DEYVD KAWE FILGUEIRA EVANGELISTA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'DEYVD KAWE FILGUEIRA EVANGELISTA', 'aluno_4010932@biblioedu.com', 'student', 4010932, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4010932, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'aluno_4010932@biblioedu.com';
    END IF;

    -- Student: EDSON SANTOS MARTINS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3978662@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"EDSON SANTOS MARTINS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'EDSON SANTOS MARTINS', 'aluno_3978662@biblioedu.com', 'student', 3978662, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3978662, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'aluno_3978662@biblioedu.com';
    END IF;

    -- Student: ESAU ARAUJO MAIA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3417537@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ESAU ARAUJO MAIA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'ESAU ARAUJO MAIA', 'aluno_3417537@biblioedu.com', 'student', 3417537, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3417537, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'aluno_3417537@biblioedu.com';
    END IF;

    -- Student: FATIMA MAYARA SIMPLICIO DA SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3416488@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"FATIMA MAYARA SIMPLICIO DA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'FATIMA MAYARA SIMPLICIO DA SILVA', 'aluno_3416488@biblioedu.com', 'student', 3416488, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3416488, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'aluno_3416488@biblioedu.com';
    END IF;

    -- Student: FRANCISCA LUYANE DA SILVA MATOS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3427001@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"FRANCISCA LUYANE DA SILVA MATOS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'FRANCISCA LUYANE DA SILVA MATOS', 'aluno_3427001@biblioedu.com', 'student', 3427001, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3427001, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'aluno_3427001@biblioedu.com';
    END IF;

    -- Student: FRANCISCO DE ASSIS SOUZA ALVES NETO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'fneto2577@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"FRANCISCO DE ASSIS SOUZA ALVES NETO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'FRANCISCO DE ASSIS SOUZA ALVES NETO', 'fneto2577@gmail.com', 'student', 4898304, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4898304, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'fneto2577@gmail.com';
    END IF;

    -- Student: GEOVANA PEREIRA DOS SANTOS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3611032@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"GEOVANA PEREIRA DOS SANTOS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'GEOVANA PEREIRA DOS SANTOS', 'aluno_3611032@biblioedu.com', 'student', 3611032, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3611032, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'aluno_3611032@biblioedu.com';
    END IF;

    -- Student: HERLON ARAUJO SOUZA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_4387690@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"HERLON ARAUJO SOUZA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'HERLON ARAUJO SOUZA', 'aluno_4387690@biblioedu.com', 'student', 4387690, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4387690, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'aluno_4387690@biblioedu.com';
    END IF;

    -- Student: HEVILLY MARIA ALVES GONZAGA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_4011172@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"HEVILLY MARIA ALVES GONZAGA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'HEVILLY MARIA ALVES GONZAGA', 'aluno_4011172@biblioedu.com', 'student', 4011172, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4011172, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'aluno_4011172@biblioedu.com';
    END IF;

    -- Student: HISYS GONCALVES DA SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'hisys2810@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"HISYS GONCALVES DA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'HISYS GONCALVES DA SILVA', 'hisys2810@gmail.com', 'student', 3610662, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3610662, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'hisys2810@gmail.com';
    END IF;

    -- Student: INACIO GABRIEL SILVA FERREIRA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3411742@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"INACIO GABRIEL SILVA FERREIRA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'INACIO GABRIEL SILVA FERREIRA', 'aluno_3411742@biblioedu.com', 'student', 3411742, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3411742, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'aluno_3411742@biblioedu.com';
    END IF;

    -- Student: JEAN LUCCA SALVIANO DA ROCHA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_5672577@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JEAN LUCCA SALVIANO DA ROCHA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'JEAN LUCCA SALVIANO DA ROCHA', 'aluno_5672577@biblioedu.com', 'student', 5672577, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 5672577, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'aluno_5672577@biblioedu.com';
    END IF;

    -- Student: KEYLA TERESA FRUTUOSO DOS SANTOS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3415563@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"KEYLA TERESA FRUTUOSO DOS SANTOS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'KEYLA TERESA FRUTUOSO DOS SANTOS', 'aluno_3415563@biblioedu.com', 'student', 3415563, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3415563, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'aluno_3415563@biblioedu.com';
    END IF;

    -- Student: LAYSA DA SILVA NASCIMENTO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'maria.santos6280@aluno.ce.gov.', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"LAYSA DA SILVA NASCIMENTO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'LAYSA DA SILVA NASCIMENTO', 'maria.santos6280@aluno.ce.gov.', 'student', 2723158, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 2723158, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'maria.santos6280@aluno.ce.gov.';
    END IF;

    -- Student: LETICIA GOMES MACEDO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_5672555@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"LETICIA GOMES MACEDO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'LETICIA GOMES MACEDO', 'aluno_5672555@biblioedu.com', 'student', 5672555, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 5672555, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'aluno_5672555@biblioedu.com';
    END IF;

    -- Student: LUIZ EDUARDO CARVALHO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'luiseduardo0123450@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"LUIZ EDUARDO CARVALHO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'LUIZ EDUARDO CARVALHO', 'luiseduardo0123450@gmail.com', 'student', 4378989, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4378989, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'luiseduardo0123450@gmail.com';
    END IF;

    -- Student: MARCOS VINICIUS MONTEIRO FIRMINO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_4855485@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARCOS VINICIUS MONTEIRO FIRMINO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARCOS VINICIUS MONTEIRO FIRMINO', 'aluno_4855485@biblioedu.com', 'student', 4855485, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4855485, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'aluno_4855485@biblioedu.com';
    END IF;

    -- Student: MARIA ARIELLY LUCENA CARDOSO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3421647@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA ARIELLY LUCENA CARDOSO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA ARIELLY LUCENA CARDOSO', 'aluno_3421647@biblioedu.com', 'student', 3421647, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3421647, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'aluno_3421647@biblioedu.com';
    END IF;

    -- Student: MARIA CLARA FERREIRA DE SOUSA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'fmariaclara668@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA CLARA FERREIRA DE SOUSA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA CLARA FERREIRA DE SOUSA', 'fmariaclara668@gmail.com', 'student', 3416518, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3416518, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'fmariaclara668@gmail.com';
    END IF;

    -- Student: MARIA EVELLYN LIMA MARIANO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'levellyn584@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA EVELLYN LIMA MARIANO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA EVELLYN LIMA MARIANO', 'levellyn584@gmail.com', 'student', 3962774, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3962774, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'levellyn584@gmail.com';
    END IF;

    -- Student: MARIA HELOYSA ALBERTO FIRMINO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'helogames87@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA HELOYSA ALBERTO FIRMINO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA HELOYSA ALBERTO FIRMINO', 'helogames87@gmail.com', 'student', 3849395, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3849395, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'helogames87@gmail.com';
    END IF;

    -- Student: MARIA LAIS SANTOS SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3987859@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA LAIS SANTOS SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA LAIS SANTOS SILVA', 'aluno_3987859@biblioedu.com', 'student', 3987859, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3987859, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'aluno_3987859@biblioedu.com';
    END IF;

    -- Student: MARIA LETICIA ALVES PEREIRA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3987865@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA LETICIA ALVES PEREIRA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA LETICIA ALVES PEREIRA', 'aluno_3987865@biblioedu.com', 'student', 3987865, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3987865, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'aluno_3987865@biblioedu.com';
    END IF;

    -- Student: MARIANA DOS SANTOS TAVARES
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'marianasantos.tavares30@gmail.', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIANA DOS SANTOS TAVARES"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIANA DOS SANTOS TAVARES', 'marianasantos.tavares30@gmail.', 'student', 5291628, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 5291628, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'marianasantos.tavares30@gmail.';
    END IF;

    -- Student: MARIA NATANAELY TENORIO DA CRUZ
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'mariazinhacruzz@icloud.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA NATANAELY TENORIO DA CRUZ"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA NATANAELY TENORIO DA CRUZ', 'mariazinhacruzz@icloud.com', 'student', 3416150, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3416150, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'mariazinhacruzz@icloud.com';
    END IF;

    -- Student: MARIA NAYARA DE SOUZA SANTOS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'mnayaradesouzas19@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA NAYARA DE SOUZA SANTOS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA NAYARA DE SOUZA SANTOS', 'mnayaradesouzas19@gmail.com', 'student', 3416521, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3416521, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'mnayaradesouzas19@gmail.com';
    END IF;

    -- Student: PEDRO LUCAS MACEDO VENCESLAU
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_5672526@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"PEDRO LUCAS MACEDO VENCESLAU"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'PEDRO LUCAS MACEDO VENCESLAU', 'aluno_5672526@biblioedu.com', 'student', 5672526, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 5672526, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'aluno_5672526@biblioedu.com';
    END IF;

    -- Student: PEDRO RIKELVY INACIO DE ARAUJO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3987877@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"PEDRO RIKELVY INACIO DE ARAUJO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'PEDRO RIKELVY INACIO DE ARAUJO', 'aluno_3987877@biblioedu.com', 'student', 3987877, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3987877, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'aluno_3987877@biblioedu.com';
    END IF;

    -- Student: RANIELY SABINO MACHADO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'ranielysabinomachado@gmail.', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"RANIELY SABINO MACHADO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'RANIELY SABINO MACHADO', 'ranielysabinomachado@gmail.', 'student', 3406923, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3406923, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'ranielysabinomachado@gmail.';
    END IF;

    -- Student: SAMYA RAFAELLY ALEXANDRIA SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3978907@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"SAMYA RAFAELLY ALEXANDRIA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'SAMYA RAFAELLY ALEXANDRIA SILVA', 'aluno_3978907@biblioedu.com', 'student', 3978907, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3978907, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'aluno_3978907@biblioedu.com';
    END IF;

    -- Student: SARA BRINGEL FERREIRA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3408723@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"SARA BRINGEL FERREIRA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'SARA BRINGEL FERREIRA', 'aluno_3408723@biblioedu.com', 'student', 3408723, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3408723, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'aluno_3408723@biblioedu.com';
    END IF;

    -- Student: SIMARA LAYS SECUNDO RICARTE
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'maria.santos6280@aluno.ce.gov.', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"SIMARA LAYS SECUNDO RICARTE"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'SIMARA LAYS SECUNDO RICARTE', 'maria.santos6280@aluno.ce.gov.', 'student', 2713584, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 2713584, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'maria.santos6280@aluno.ce.gov.';
    END IF;

    -- Student: SOFIA TORRES DOS SANTOS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3962767@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"SOFIA TORRES DOS SANTOS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'SOFIA TORRES DOS SANTOS', 'aluno_3962767@biblioedu.com', 'student', 3962767, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3962767, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'aluno_3962767@biblioedu.com';
    END IF;

    -- Student: TEREZA DAVYLLA VIEIRA DE OLIVEIRA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_5672610@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"TEREZA DAVYLLA VIEIRA DE OLIVEIRA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'TEREZA DAVYLLA VIEIRA DE OLIVEIRA', 'aluno_5672610@biblioedu.com', 'student', 5672610, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 5672610, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'aluno_5672610@biblioedu.com';
    END IF;

    -- Student: YASMIN CALDAS ALVES
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_4012872@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"YASMIN CALDAS ALVES"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'YASMIN CALDAS ALVES', 'aluno_4012872@biblioedu.com', 'student', 4012872, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4012872, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'aluno_4012872@biblioedu.com';
    END IF;

    -- Student: YOHANN SOUSA DE OLIVEIRA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_4435406@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"YOHANN SOUSA DE OLIVEIRA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'YOHANN SOUSA DE OLIVEIRA', 'aluno_4435406@biblioedu.com', 'student', 4435406, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4435406, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'aluno_4435406@biblioedu.com';
    END IF;

    -- Student: ADRIAN DIEGO TAVARES DE ARAUJO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_4794280@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ADRIAN DIEGO TAVARES DE ARAUJO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'ADRIAN DIEGO TAVARES DE ARAUJO', 'aluno_4794280@biblioedu.com', 'student', 4794280, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4794280, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'aluno_4794280@biblioedu.com';
    END IF;

    -- Student: ANA CLARA SANTOS FERREIRA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_4613999@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ANA CLARA SANTOS FERREIRA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'ANA CLARA SANTOS FERREIRA', 'aluno_4613999@biblioedu.com', 'student', 4613999, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4613999, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'aluno_4613999@biblioedu.com';
    END IF;

    -- Student: ANA ISABELLY BARBOSA DA SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3950019@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ANA ISABELLY BARBOSA DA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'ANA ISABELLY BARBOSA DA SILVA', 'aluno_3950019@biblioedu.com', 'student', 3950019, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3950019, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'aluno_3950019@biblioedu.com';
    END IF;

    -- Student: ANA LIVIA DA SILVA PAZ
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3426648@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ANA LIVIA DA SILVA PAZ"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'ANA LIVIA DA SILVA PAZ', 'aluno_3426648@biblioedu.com', 'student', 3426648, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3426648, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'aluno_3426648@biblioedu.com';
    END IF;

    -- Student: ANA VITORIA NASCIMENTO SANTOS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_4011393@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ANA VITORIA NASCIMENTO SANTOS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'ANA VITORIA NASCIMENTO SANTOS', 'aluno_4011393@biblioedu.com', 'student', 4011393, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4011393, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'aluno_4011393@biblioedu.com';
    END IF;

    -- Student: ANTONIO TAVARES MENDES DO NASCIMENTO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3404849@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ANTONIO TAVARES MENDES DO NASCIMENTO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'ANTONIO TAVARES MENDES DO NASCIMENTO', 'aluno_3404849@biblioedu.com', 'student', 3404849, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3404849, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'aluno_3404849@biblioedu.com';
    END IF;

    -- Student: CARLOS EDUARDO GONCALVES MENDONCA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'carloseduardolordsananda@gmail', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"CARLOS EDUARDO GONCALVES MENDONCA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'CARLOS EDUARDO GONCALVES MENDONCA', 'carloseduardolordsananda@gmail', 'student', 4630859, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4630859, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'carloseduardolordsananda@gmail';
    END IF;

    -- Student: CARLOS WESLEY NOGUEIRA DE MOURA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'wm306923@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"CARLOS WESLEY NOGUEIRA DE MOURA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'CARLOS WESLEY NOGUEIRA DE MOURA', 'wm306923@gmail.com', 'student', 3426658, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3426658, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'wm306923@gmail.com';
    END IF;

    -- Student: DIOGO LIMA COSTA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_4013056@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"DIOGO LIMA COSTA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'DIOGO LIMA COSTA', 'aluno_4013056@biblioedu.com', 'student', 4013056, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4013056, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'aluno_4013056@biblioedu.com';
    END IF;

    -- Student: EMANUELLE MARIA ANDRADE DA SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3422595@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"EMANUELLE MARIA ANDRADE DA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'EMANUELLE MARIA ANDRADE DA SILVA', 'aluno_3422595@biblioedu.com', 'student', 3422595, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3422595, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'aluno_3422595@biblioedu.com';
    END IF;

    -- Student: EMILLY MARIA OLIVEIRA COELHO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'emillymariaoliveira957@gmail.', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"EMILLY MARIA OLIVEIRA COELHO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'EMILLY MARIA OLIVEIRA COELHO', 'emillymariaoliveira957@gmail.', 'student', 4468148, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4468148, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'emillymariaoliveira957@gmail.';
    END IF;

    -- Student: FRANCISCO GABRIEL ANGELO DE OLIVEIRA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3411739@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"FRANCISCO GABRIEL ANGELO DE OLIVEIRA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'FRANCISCO GABRIEL ANGELO DE OLIVEIRA', 'aluno_3411739@biblioedu.com', 'student', 3411739, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3411739, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'aluno_3411739@biblioedu.com';
    END IF;

    -- Student: GABRIEL ASAF ROCHA NEVES
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_5676751@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"GABRIEL ASAF ROCHA NEVES"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'GABRIEL ASAF ROCHA NEVES', 'aluno_5676751@biblioedu.com', 'student', 5676751, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 5676751, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'aluno_5676751@biblioedu.com';
    END IF;

    -- Student: IANI THAILA FERREIRA SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_4015406@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"IANI THAILA FERREIRA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'IANI THAILA FERREIRA SILVA', 'aluno_4015406@biblioedu.com', 'student', 4015406, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4015406, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'aluno_4015406@biblioedu.com';
    END IF;

    -- Student: JHON WEBERTY SOUZA LEITE
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_4572566@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JHON WEBERTY SOUZA LEITE"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'JHON WEBERTY SOUZA LEITE', 'aluno_4572566@biblioedu.com', 'student', 4572566, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4572566, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'aluno_4572566@biblioedu.com';
    END IF;

    -- Student: JOAO VICTOR DA SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'joaovictor2024silva@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOAO VICTOR DA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'JOAO VICTOR DA SILVA', 'joaovictor2024silva@gmail.com', 'student', 3412617, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3412617, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'joaovictor2024silva@gmail.com';
    END IF;

    -- Student: JOAO VITOR ALVES PEREIRA SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3404950@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOAO VITOR ALVES PEREIRA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'JOAO VITOR ALVES PEREIRA SILVA', 'aluno_3404950@biblioedu.com', 'student', 3404950, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3404950, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'aluno_3404950@biblioedu.com';
    END IF;

    -- Student: JONATHAM ANDRADE DOS SANTOS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'maria.santos6280@aluno.ce.gov.', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JONATHAM ANDRADE DOS SANTOS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'JONATHAM ANDRADE DOS SANTOS', 'maria.santos6280@aluno.ce.gov.', 'student', 2241848, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 2241848, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'maria.santos6280@aluno.ce.gov.';
    END IF;

    -- Student: JORGE HYAGO TAVARES FERREIRA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_4897584@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JORGE HYAGO TAVARES FERREIRA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'JORGE HYAGO TAVARES FERREIRA', 'aluno_4897584@biblioedu.com', 'student', 4897584, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4897584, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'aluno_4897584@biblioedu.com';
    END IF;

    -- Student: JOSE ALAN CARVALHO SANTOS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_4011097@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOSE ALAN CARVALHO SANTOS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'JOSE ALAN CARVALHO SANTOS', 'aluno_4011097@biblioedu.com', 'student', 4011097, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4011097, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'aluno_4011097@biblioedu.com';
    END IF;

    -- Student: JOSE EDUARDO FIGUEIREDO SANTOS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3406187@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOSE EDUARDO FIGUEIREDO SANTOS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'JOSE EDUARDO FIGUEIREDO SANTOS', 'aluno_3406187@biblioedu.com', 'student', 3406187, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3406187, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'aluno_3406187@biblioedu.com';
    END IF;

    -- Student: JOSE EVERTON CARVALHO DA SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_4013337@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOSE EVERTON CARVALHO DA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'JOSE EVERTON CARVALHO DA SILVA', 'aluno_4013337@biblioedu.com', 'student', 4013337, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4013337, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'aluno_4013337@biblioedu.com';
    END IF;

    -- Student: JOSE MATHEUS ALVES BEZERRA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_4629086@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOSE MATHEUS ALVES BEZERRA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'JOSE MATHEUS ALVES BEZERRA', 'aluno_4629086@biblioedu.com', 'student', 4629086, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4629086, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'aluno_4629086@biblioedu.com';
    END IF;

    -- Student: JOSE YAGO DE ARAUJO MARIANO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'yagosomg3@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOSE YAGO DE ARAUJO MARIANO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'JOSE YAGO DE ARAUJO MARIANO', 'yagosomg3@gmail.com', 'student', 3408714, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3408714, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'yagosomg3@gmail.com';
    END IF;

    -- Student: KALINE SOARES DE SOUZA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3612578@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"KALINE SOARES DE SOUZA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'KALINE SOARES DE SOUZA', 'aluno_3612578@biblioedu.com', 'student', 3612578, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3612578, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'aluno_3612578@biblioedu.com';
    END IF;

    -- Student: KAMILA SOARES CLEMENTINO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_4433522@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"KAMILA SOARES CLEMENTINO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'KAMILA SOARES CLEMENTINO', 'aluno_4433522@biblioedu.com', 'student', 4433522, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4433522, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'aluno_4433522@biblioedu.com';
    END IF;

    -- Student: KAUA OLIVEIRA ALVES
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'kauaoliveiraalves03@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"KAUA OLIVEIRA ALVES"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'KAUA OLIVEIRA ALVES', 'kauaoliveiraalves03@gmail.com', 'student', 3909723, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3909723, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'kauaoliveiraalves03@gmail.com';
    END IF;

    -- Student: KAYO LUCAS ROCHA SANTOS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_5461172@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"KAYO LUCAS ROCHA SANTOS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'KAYO LUCAS ROCHA SANTOS', 'aluno_5461172@biblioedu.com', 'student', 5461172, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 5461172, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'aluno_5461172@biblioedu.com';
    END IF;

    -- Student: KELLRYTON WALLACE CARDOSO PEREIRA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'kellrytonc@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"KELLRYTON WALLACE CARDOSO PEREIRA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'KELLRYTON WALLACE CARDOSO PEREIRA', 'kellrytonc@gmail.com', 'student', 3609026, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3609026, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'kellrytonc@gmail.com';
    END IF;

    -- Student: LEVY FIGUEIREDO MARINHO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'cjuvino6@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"LEVY FIGUEIREDO MARINHO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'LEVY FIGUEIREDO MARINHO', 'cjuvino6@gmail.com', 'student', 4835093, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4835093, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'cjuvino6@gmail.com';
    END IF;

    -- Student: LIVYA NASCIMENTO SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_5672974@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"LIVYA NASCIMENTO SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'LIVYA NASCIMENTO SILVA', 'aluno_5672974@biblioedu.com', 'student', 5672974, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 5672974, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'aluno_5672974@biblioedu.com';
    END IF;

    -- Student: LUAN GUSTAVO DE FIGUEIREDO FURTADO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_4824737@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"LUAN GUSTAVO DE FIGUEIREDO FURTADO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'LUAN GUSTAVO DE FIGUEIREDO FURTADO', 'aluno_4824737@biblioedu.com', 'student', 4824737, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4824737, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'aluno_4824737@biblioedu.com';
    END IF;

    -- Student: MARIA ARYADNE DE SOUSA FERREIRA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aryadne326ferreira@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA ARYADNE DE SOUSA FERREIRA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA ARYADNE DE SOUSA FERREIRA', 'aryadne326ferreira@gmail.com', 'student', 3417221, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3417221, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'aryadne326ferreira@gmail.com';
    END IF;

    -- Student: MARIA CECILIA MATIAS DA SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3623418@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA CECILIA MATIAS DA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA CECILIA MATIAS DA SILVA', 'aluno_3623418@biblioedu.com', 'student', 3623418, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3623418, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'aluno_3623418@biblioedu.com';
    END IF;

    -- Student: MARIA EDUARDA GOMES MARCOLINO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_5672951@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA EDUARDA GOMES MARCOLINO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA EDUARDA GOMES MARCOLINO', 'aluno_5672951@biblioedu.com', 'student', 5672951, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 5672951, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'aluno_5672951@biblioedu.com';
    END IF;

    -- Student: MARIA ELYZA SANTANA DA SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'elyzasantana.ti@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA ELYZA SANTANA DA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA ELYZA SANTANA DA SILVA', 'elyzasantana.ti@gmail.com', 'student', 3417234, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3417234, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'elyzasantana.ti@gmail.com';
    END IF;

    -- Student: MARIA FERNANDA SOARES SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3428941@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA FERNANDA SOARES SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA FERNANDA SOARES SILVA', 'aluno_3428941@biblioedu.com', 'student', 3428941, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3428941, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'aluno_3428941@biblioedu.com';
    END IF;

    -- Student: MARIA HELOA SOUSA RODRIGUES
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_4011460@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA HELOA SOUSA RODRIGUES"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA HELOA SOUSA RODRIGUES', 'aluno_4011460@biblioedu.com', 'student', 4011460, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4011460, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'aluno_4011460@biblioedu.com';
    END IF;

    -- Student: MARIA JAQUELINE DE MOURA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'maria.santos6280@aluno.ce.gov.', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA JAQUELINE DE MOURA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA JAQUELINE DE MOURA', 'maria.santos6280@aluno.ce.gov.', 'student', 2685322, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 2685322, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'maria.santos6280@aluno.ce.gov.';
    END IF;

    -- Student: MARIA MICHELLE DA SILVA SOUSA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3420545@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA MICHELLE DA SILVA SOUSA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA MICHELLE DA SILVA SOUSA', 'aluno_3420545@biblioedu.com', 'student', 3420545, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3420545, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'aluno_3420545@biblioedu.com';
    END IF;

    -- Student: MARIA RITA FABLICIO DA SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_4011346@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA RITA FABLICIO DA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA RITA FABLICIO DA SILVA', 'aluno_4011346@biblioedu.com', 'student', 4011346, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4011346, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'aluno_4011346@biblioedu.com';
    END IF;

    -- Student: MYLENA DHEYSLA DOS SANTOS OLIVEIRA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3426428@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MYLENA DHEYSLA DOS SANTOS OLIVEIRA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MYLENA DHEYSLA DOS SANTOS OLIVEIRA', 'aluno_3426428@biblioedu.com', 'student', 3426428, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3426428, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'aluno_3426428@biblioedu.com';
    END IF;

    -- Student: PEDRO ASSUERO MONTEIRO LACERDA DE
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'passuero023@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"PEDRO ASSUERO MONTEIRO LACERDA DE"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'PEDRO ASSUERO MONTEIRO LACERDA DE', 'passuero023@gmail.com', 'student', 4531300, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4531300, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'passuero023@gmail.com';
    END IF;

    -- Student: PEDRO MIGUEL DOS SANTOS NETO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3415580@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"PEDRO MIGUEL DOS SANTOS NETO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'PEDRO MIGUEL DOS SANTOS NETO', 'aluno_3415580@biblioedu.com', 'student', 3415580, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3415580, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'aluno_3415580@biblioedu.com';
    END IF;

    -- Student: VICTOR GABRIEL ALVES DE ARAUJO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3405613@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"VICTOR GABRIEL ALVES DE ARAUJO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'VICTOR GABRIEL ALVES DE ARAUJO', 'aluno_3405613@biblioedu.com', 'student', 3405613, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3405613, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'aluno_3405613@biblioedu.com';
    END IF;

    -- Student: ANA LETICIA NUNES LUCENA TAVARES
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'analeticianunes2025@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ANA LETICIA NUNES LUCENA TAVARES"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'ANA LETICIA NUNES LUCENA TAVARES', 'analeticianunes2025@gmail.com', 'student', 4105500, '2º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4105500, class_year = '2º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'analeticianunes2025@gmail.com';
    END IF;

    -- Student: ANA LIVIA DE SOUSA QUERINO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'querinolivia63@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ANA LIVIA DE SOUSA QUERINO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'ANA LIVIA DE SOUSA QUERINO', 'querinolivia63@gmail.com', 'student', 3708834, '2º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3708834, class_year = '2º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'querinolivia63@gmail.com';
    END IF;

    -- Student: ANNA LUYZA LOPES DA SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'annaluyzasilva810@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ANNA LUYZA LOPES DA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'ANNA LUYZA LOPES DA SILVA', 'annaluyzasilva810@gmail.com', 'student', 3764701, '2º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3764701, class_year = '2º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'annaluyzasilva810@gmail.com';
    END IF;

    -- Student: ANTONIO HENRIQUE SOUZA ARAUJO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'henriquebva2025@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ANTONIO HENRIQUE SOUZA ARAUJO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'ANTONIO HENRIQUE SOUZA ARAUJO', 'henriquebva2025@gmail.com', 'student', 2094329, '2º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 2094329, class_year = '2º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'henriquebva2025@gmail.com';
    END IF;

    -- Student: CAIO EMANUEL SANTOS INACIO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'caioe6880@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"CAIO EMANUEL SANTOS INACIO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'CAIO EMANUEL SANTOS INACIO', 'caioe6880@gmail.com', 'student', 3421735, '2º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3421735, class_year = '2º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'caioe6880@gmail.com';
    END IF;

    -- Student: CICERO CAIO FERNANDES DE SOUSA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'cicerocaiofernandes20@gmail.', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"CICERO CAIO FERNANDES DE SOUSA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'CICERO CAIO FERNANDES DE SOUSA', 'cicerocaiofernandes20@gmail.', 'student', 3422188, '2º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3422188, class_year = '2º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'cicerocaiofernandes20@gmail.';
    END IF;

    -- Student: CICERO GUSTAVO ALVES GOMES
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'cicerogustavo204@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"CICERO GUSTAVO ALVES GOMES"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'CICERO GUSTAVO ALVES GOMES', 'cicerogustavo204@gmail.com', 'student', 2710354, '2º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 2710354, class_year = '2º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'cicerogustavo204@gmail.com';
    END IF;

    -- Student: CICERO KAYQUE EMIDIO DOS SANTOS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'kayquecicero9@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"CICERO KAYQUE EMIDIO DOS SANTOS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'CICERO KAYQUE EMIDIO DOS SANTOS', 'kayquecicero9@gmail.com', 'student', 2249698, '2º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 2249698, class_year = '2º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'kayquecicero9@gmail.com';
    END IF;

    -- Student: EDSON KAUE MENEZES HOLANDA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'edsonkaue216@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"EDSON KAUE MENEZES HOLANDA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'EDSON KAUE MENEZES HOLANDA', 'edsonkaue216@gmail.com', 'student', 3405782, '2º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3405782, class_year = '2º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'edsonkaue216@gmail.com';
    END IF;

    -- Student: FERNANDO ALVES DE LIMA NETO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'beh5960@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"FERNANDO ALVES DE LIMA NETO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'FERNANDO ALVES DE LIMA NETO', 'beh5960@gmail.com', 'student', 3785443, '2º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3785443, class_year = '2º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'beh5960@gmail.com';
    END IF;

    -- Student: FRANCISCA LUIZA DA SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'luizafausto251@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"FRANCISCA LUIZA DA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'FRANCISCA LUIZA DA SILVA', 'luizafausto251@gmail.com', 'student', 3756751, '2º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3756751, class_year = '2º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'luizafausto251@gmail.com';
    END IF;

    -- Student: FRANCISCA VITORIA LINS DA SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'vitorialins1253@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"FRANCISCA VITORIA LINS DA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'FRANCISCA VITORIA LINS DA SILVA', 'vitorialins1253@gmail.com', 'student', 3607274, '2º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3607274, class_year = '2º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'vitorialins1253@gmail.com';
    END IF;

    -- Student: FRANCISCO SERGIO DA SILVA NETO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'franciscosergiodasilvaneto@gmail', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"FRANCISCO SERGIO DA SILVA NETO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'FRANCISCO SERGIO DA SILVA NETO', 'franciscosergiodasilvaneto@gmail', 'student', 3794536, '2º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3794536, class_year = '2º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'franciscosergiodasilvaneto@gmail';
    END IF;

    -- Student: FRANCISCO YARLEY AZEVEDO RODRIGUES
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'yarley.rodrigues2506@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"FRANCISCO YARLEY AZEVEDO RODRIGUES"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'FRANCISCO YARLEY AZEVEDO RODRIGUES', 'yarley.rodrigues2506@gmail.com', 'student', 3417386, '2º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3417386, class_year = '2º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'yarley.rodrigues2506@gmail.com';
    END IF;

    -- Student: HEVELLY ALMEIDA MATIAS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'hevellyalmeida238@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"HEVELLY ALMEIDA MATIAS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'HEVELLY ALMEIDA MATIAS', 'hevellyalmeida238@gmail.com', 'student', 2723926, '2º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 2723926, class_year = '2º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'hevellyalmeida238@gmail.com';
    END IF;

    -- Student: ISAQUE VICENTE DA SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'franciscobeneditovicente@gmail.', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ISAQUE VICENTE DA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'ISAQUE VICENTE DA SILVA', 'franciscobeneditovicente@gmail.', 'student', 5423735, '2º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 5423735, class_year = '2º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'franciscobeneditovicente@gmail.';
    END IF;

    -- Student: JOAO PEDRO MENDES LOPES
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'joaopedrobva2025@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOAO PEDRO MENDES LOPES"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'JOAO PEDRO MENDES LOPES', 'joaopedrobva2025@gmail.com', 'student', 3784121, '2º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3784121, class_year = '2º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'joaopedrobva2025@gmail.com';
    END IF;

    -- Student: JOSE KAIO LIMA DA SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'kaiolima02.bs@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOSE KAIO LIMA DA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'JOSE KAIO LIMA DA SILVA', 'kaiolima02.bs@gmail.com', 'student', 2189730, '2º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 2189730, class_year = '2º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'kaiolima02.bs@gmail.com';
    END IF;

    -- Student: KEYLA HELLEN ALVES SOARES
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'alveskeyla26@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"KEYLA HELLEN ALVES SOARES"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'KEYLA HELLEN ALVES SOARES', 'alveskeyla26@gmail.com', 'student', 3431010, '2º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3431010, class_year = '2º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'alveskeyla26@gmail.com';
    END IF;

    -- Student: LARA HELOISA CARVALHO GOMES
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'laraheloisacarvalho091@gmail.', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"LARA HELOISA CARVALHO GOMES"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'LARA HELOISA CARVALHO GOMES', 'laraheloisacarvalho091@gmail.', 'student', 3784728, '2º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3784728, class_year = '2º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'laraheloisacarvalho091@gmail.';
    END IF;

    -- Student: LETICIA EMILLY DA SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'dasilvaleticiaemilly@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"LETICIA EMILLY DA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'LETICIA EMILLY DA SILVA', 'dasilvaleticiaemilly@gmail.com', 'student', 3413191, '2º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3413191, class_year = '2º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'dasilvaleticiaemilly@gmail.com';
    END IF;

    -- Student: LUIS GUSTAVO SILVA SANTOS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'luisgustavoss2019@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"LUIS GUSTAVO SILVA SANTOS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'LUIS GUSTAVO SILVA SANTOS', 'luisgustavoss2019@gmail.com', 'student', 3408849, '2º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3408849, class_year = '2º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'luisgustavoss2019@gmail.com';
    END IF;

    -- Student: MARIA ANISLAINE CORDEIRO ARAUJO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'mariaanislaine39@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA ANISLAINE CORDEIRO ARAUJO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA ANISLAINE CORDEIRO ARAUJO', 'mariaanislaine39@gmail.com', 'student', 3420835, '2º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3420835, class_year = '2º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'mariaanislaine39@gmail.com';
    END IF;

    -- Student: MARIA CECILIA PEREIRA MARTINS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'mariacelilia2000@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA CECILIA PEREIRA MARTINS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA CECILIA PEREIRA MARTINS', 'mariacelilia2000@gmail.com', 'student', 2704001, '2º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 2704001, class_year = '2º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'mariacelilia2000@gmail.com';
    END IF;

    -- Student: MARIA CLARA VERICIO DA SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'mariaclaravericio726@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA CLARA VERICIO DA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA CLARA VERICIO DA SILVA', 'mariaclaravericio726@gmail.com', 'student', 3784766, '2º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3784766, class_year = '2º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'mariaclaravericio726@gmail.com';
    END IF;

    -- Student: MARIA DAYNARA MONTEIRO DE OLIVEIRA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'daynaramonteirodeoliveira@gmail', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA DAYNARA MONTEIRO DE OLIVEIRA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA DAYNARA MONTEIRO DE OLIVEIRA', 'daynaramonteirodeoliveira@gmail', 'student', 3417404, '2º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3417404, class_year = '2º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'daynaramonteirodeoliveira@gmail';
    END IF;

    -- Student: MARIA EDUARDA CARDOSO OLIVEIRA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'ec480164@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA EDUARDA CARDOSO OLIVEIRA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA EDUARDA CARDOSO OLIVEIRA', 'ec480164@gmail.com', 'student', 3495221, '2º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3495221, class_year = '2º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'ec480164@gmail.com';
    END IF;

    -- Student: MARIA EDUARDA DE OLIVEIRA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'maria3793937@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA EDUARDA DE OLIVEIRA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA EDUARDA DE OLIVEIRA', 'maria3793937@gmail.com', 'student', 4823650, '2º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4823650, class_year = '2º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'maria3793937@gmail.com';
    END IF;

    -- Student: MARIA ELOISA COSTA FERREIRA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'eloisafcosta2009@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA ELOISA COSTA FERREIRA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA ELOISA COSTA FERREIRA', 'eloisafcosta2009@gmail.com', 'student', 2195020, '2º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 2195020, class_year = '2º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'eloisafcosta2009@gmail.com';
    END IF;

    -- Student: MARIA GIZELLY OLIVEIRA DO NASCIMENTO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'mariagizelly39@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA GIZELLY OLIVEIRA DO NASCIMENTO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA GIZELLY OLIVEIRA DO NASCIMENTO', 'mariagizelly39@gmail.com', 'student', 3416554, '2º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3416554, class_year = '2º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'mariagizelly39@gmail.com';
    END IF;

    -- Student: MARIA ISADORA FERREIRA DA SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'i81737594@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA ISADORA FERREIRA DA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA ISADORA FERREIRA DA SILVA', 'i81737594@gmail.com', 'student', 2710750, '2º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 2710750, class_year = '2º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'i81737594@gmail.com';
    END IF;

    -- Student: MARIA KEMELY LIMA DE ARAUJO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'kemelyaraujo7@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA KEMELY LIMA DE ARAUJO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA KEMELY LIMA DE ARAUJO', 'kemelyaraujo7@gmail.com', 'student', 2704768, '2º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 2704768, class_year = '2º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'kemelyaraujo7@gmail.com';
    END IF;

    -- Student: MARIA LUIZA INACIO PEREIRA DA SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'luiza2009mm@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA LUIZA INACIO PEREIRA DA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA LUIZA INACIO PEREIRA DA SILVA', 'luiza2009mm@gmail.com', 'student', 3794436, '2º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3794436, class_year = '2º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'luiza2009mm@gmail.com';
    END IF;

    -- Student: MARIA MIRELLA FIRMINO DA SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3429425@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA MIRELLA FIRMINO DA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA MIRELLA FIRMINO DA SILVA', 'aluno_3429425@biblioedu.com', 'student', 3429425, '2º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3429425, class_year = '2º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'aluno_3429425@biblioedu.com';
    END IF;

    -- Student: MARIA SAVANA PINHEIRO DO NASCIMENTO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'msavana2010@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA SAVANA PINHEIRO DO NASCIMENTO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA SAVANA PINHEIRO DO NASCIMENTO', 'msavana2010@gmail.com', 'student', 3762842, '2º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3762842, class_year = '2º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'msavana2010@gmail.com';
    END IF;

    -- Student: MARIA SOLANGE ALVES ALBERTO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'mariiaasolangealves2907@gmail.', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA SOLANGE ALVES ALBERTO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA SOLANGE ALVES ALBERTO', 'mariiaasolangealves2907@gmail.', 'student', 3788576, '2º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3788576, class_year = '2º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'mariiaasolangealves2907@gmail.';
    END IF;

    -- Student: MARIA VITORIA CAROLINO DE JESUS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'mariacarolino60@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA VITORIA CAROLINO DE JESUS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA VITORIA CAROLINO DE JESUS', 'mariacarolino60@gmail.com', 'student', 2725132, '2º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 2725132, class_year = '2º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'mariacarolino60@gmail.com';
    END IF;

    -- Student: MAYZA MAYARA OLIVEIRA RIBEIRO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'mayzamayara395@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MAYZA MAYARA OLIVEIRA RIBEIRO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MAYZA MAYARA OLIVEIRA RIBEIRO', 'mayzamayara395@gmail.com', 'student', 3788596, '2º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3788596, class_year = '2º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'mayzamayara395@gmail.com';
    END IF;

    -- Student: MIGUEL SEVERINO SANTOS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'miguelss4xgt@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MIGUEL SEVERINO SANTOS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MIGUEL SEVERINO SANTOS', 'miguelss4xgt@gmail.com', 'student', 3966480, '2º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3966480, class_year = '2º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'miguelss4xgt@gmail.com';
    END IF;

    -- Student: PAULO RICARDO DOS SANTOS SILVA SOUZA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'pauloricardobva@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"PAULO RICARDO DOS SANTOS SILVA SOUZA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'PAULO RICARDO DOS SANTOS SILVA SOUZA', 'pauloricardobva@gmail.com', 'student', 3624265, '2º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3624265, class_year = '2º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'pauloricardobva@gmail.com';
    END IF;

    -- Student: SUZANA DAVYLA ALEXANDRIA DA SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'suzanaalexandria100@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"SUZANA DAVYLA ALEXANDRIA DA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'SUZANA DAVYLA ALEXANDRIA DA SILVA', 'suzanaalexandria100@gmail.com', 'student', 2375273, '2º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 2375273, class_year = '2º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'suzanaalexandria100@gmail.com';
    END IF;

    -- Student: YCARO BRUNO GOMES SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'fatimasandra1611@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"YCARO BRUNO GOMES SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'YCARO BRUNO GOMES SILVA', 'fatimasandra1611@gmail.com', 'student', 2710994, '2º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 2710994, class_year = '2º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'fatimasandra1611@gmail.com';
    END IF;

    -- Student: ADRIELY VIEIRA DA SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'adrielybva2025@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ADRIELY VIEIRA DA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'ADRIELY VIEIRA DA SILVA', 'adrielybva2025@gmail.com', 'student', 4692915, '2º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4692915, class_year = '2º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'adrielybva2025@gmail.com';
    END IF;

    -- Student: ALEXANDRE LEVI MOTA DANTAS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'alexandrelevi962@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ALEXANDRE LEVI MOTA DANTAS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'ALEXANDRE LEVI MOTA DANTAS', 'alexandrelevi962@gmail.com', 'student', 5179661, '2º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 5179661, class_year = '2º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'alexandrelevi962@gmail.com';
    END IF;

    -- Student: ANA LIVIA MATIAS MARTINS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'analiviamatiasmtns2@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ANA LIVIA MATIAS MARTINS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'ANA LIVIA MATIAS MARTINS', 'analiviamatiasmtns2@gmail.com', 'student', 3783764, '2º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3783764, class_year = '2º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'analiviamatiasmtns2@gmail.com';
    END IF;

    -- Student: AQUILES ALVES MELO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aquilesbva2025@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"AQUILES ALVES MELO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'AQUILES ALVES MELO', 'aquilesbva2025@gmail.com', 'student', 3410448, '2º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3410448, class_year = '2º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'aquilesbva2025@gmail.com';
    END IF;

    -- Student: DAVID GABRIEL LIMA SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'davidgabtiellima@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"DAVID GABRIEL LIMA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'DAVID GABRIEL LIMA SILVA', 'davidgabtiellima@gmail.com', 'student', 3794386, '2º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3794386, class_year = '2º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'davidgabtiellima@gmail.com';
    END IF;

    -- Student: DEMILLY MARIA SILVA SANTOS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'demillymss@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"DEMILLY MARIA SILVA SANTOS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'DEMILLY MARIA SILVA SANTOS', 'demillymss@gmail.com', 'student', 4690135, '2º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4690135, class_year = '2º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'demillymss@gmail.com';
    END IF;

    -- Student: EDGEVANIA SERAFIM DE ARAUJO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'edgevaniaaraujo@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"EDGEVANIA SERAFIM DE ARAUJO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'EDGEVANIA SERAFIM DE ARAUJO', 'edgevaniaaraujo@gmail.com', 'student', 3417277, '2º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3417277, class_year = '2º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'edgevaniaaraujo@gmail.com';
    END IF;

    -- Student: ERICK DAVI BARBOZA NUNES
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'erickdavibva25@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ERICK DAVI BARBOZA NUNES"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'ERICK DAVI BARBOZA NUNES', 'erickdavibva25@gmail.com', 'student', 4435518, '2º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4435518, class_year = '2º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'erickdavibva25@gmail.com';
    END IF;

    -- Student: ESTHEFANNY ELOISI DA SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'esthefannyeloisi28@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ESTHEFANNY ELOISI DA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'ESTHEFANNY ELOISI DA SILVA', 'esthefannyeloisi28@gmail.com', 'student', 3416987, '2º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3416987, class_year = '2º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'esthefannyeloisi28@gmail.com';
    END IF;

    -- Student: FRANCISCA BEATRIZ ALVES DE ARAUJO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'franciscabeatriz689@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"FRANCISCA BEATRIZ ALVES DE ARAUJO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'FRANCISCA BEATRIZ ALVES DE ARAUJO', 'franciscabeatriz689@gmail.com', 'student', 3431002, '2º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3431002, class_year = '2º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'franciscabeatriz689@gmail.com';
    END IF;

    -- Student: FRANCISCO ARTHUR GOMES BATISTA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'fcoadjedam@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"FRANCISCO ARTHUR GOMES BATISTA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'FRANCISCO ARTHUR GOMES BATISTA', 'fcoadjedam@gmail.com', 'student', 4193679, '2º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4193679, class_year = '2º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'fcoadjedam@gmail.com';
    END IF;

    -- Student: FRANCISCO ROBSON BARBOSA LIMA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'franciscorobsonbarbosa5@gmail.', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"FRANCISCO ROBSON BARBOSA LIMA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'FRANCISCO ROBSON BARBOSA LIMA', 'franciscorobsonbarbosa5@gmail.', 'student', 2703279, '2º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 2703279, class_year = '2º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'franciscorobsonbarbosa5@gmail.';
    END IF;

    -- Student: HALISSON ALVES PEREIRA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'halissonalves149@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"HALISSON ALVES PEREIRA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'HALISSON ALVES PEREIRA', 'halissonalves149@gmail.com', 'student', 3787738, '2º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3787738, class_year = '2º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'halissonalves149@gmail.com';
    END IF;

    -- Student: JENIFFER VITORIA FABLICIO FERREIRA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'jennyvitoriafer@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JENIFFER VITORIA FABLICIO FERREIRA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'JENIFFER VITORIA FABLICIO FERREIRA', 'jennyvitoriafer@gmail.com', 'student', 3795852, '2º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3795852, class_year = '2º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'jennyvitoriafer@gmail.com';
    END IF;

    -- Student: JOAO CARLOS FERREIRA DA SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'ferreirasilvajoaocarlos8@gmail.', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOAO CARLOS FERREIRA DA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'JOAO CARLOS FERREIRA DA SILVA', 'ferreirasilvajoaocarlos8@gmail.', 'student', 4002203, '2º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4002203, class_year = '2º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'ferreirasilvajoaocarlos8@gmail.';
    END IF;

    -- Student: JOAO GABRIEL NOVAIS GOMES
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'joaogabrielnovaisgomes@gmail.', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOAO GABRIEL NOVAIS GOMES"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'JOAO GABRIEL NOVAIS GOMES', 'joaogabrielnovaisgomes@gmail.', 'student', 2708579, '2º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 2708579, class_year = '2º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'joaogabrielnovaisgomes@gmail.';
    END IF;

    -- Student: JOSE ARTUR OLIMPIO FEITOSA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'arturfeitosa23@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOSE ARTUR OLIMPIO FEITOSA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'JOSE ARTUR OLIMPIO FEITOSA', 'arturfeitosa23@gmail.com', 'student', 2703341, '2º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 2703341, class_year = '2º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'arturfeitosa23@gmail.com';
    END IF;

    -- Student: JOSE HERBERT CARVALHO LIMA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'joseherbertcl13@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOSE HERBERT CARVALHO LIMA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'JOSE HERBERT CARVALHO LIMA', 'joseherbertcl13@gmail.com', 'student', 4948765, '2º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4948765, class_year = '2º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'joseherbertcl13@gmail.com';
    END IF;

    -- Student: JOSE RENAN ALVES BARBOSA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'joserenanr88@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOSE RENAN ALVES BARBOSA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'JOSE RENAN ALVES BARBOSA', 'joserenanr88@gmail.com', 'student', 3733966, '2º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3733966, class_year = '2º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'joserenanr88@gmail.com';
    END IF;

    -- Student: JOSE VICTOR ALBERTO MARTINS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'josevictoralbertomartins7@gmail.', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOSE VICTOR ALBERTO MARTINS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'JOSE VICTOR ALBERTO MARTINS', 'josevictoralbertomartins7@gmail.', 'student', 4239099, '2º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4239099, class_year = '2º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'josevictoralbertomartins7@gmail.';
    END IF;

    -- Student: JOSE VICTOR GOMES RODRIGUES ALVES
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'fcney244mtb@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOSE VICTOR GOMES RODRIGUES ALVES"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'JOSE VICTOR GOMES RODRIGUES ALVES', 'fcney244mtb@gmail.com', 'student', 4782392, '2º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4782392, class_year = '2º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'fcney244mtb@gmail.com';
    END IF;

    -- Student: JOYCE VITORIA LIMA MEDEIROS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'joycitalima7@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOYCE VITORIA LIMA MEDEIROS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'JOYCE VITORIA LIMA MEDEIROS', 'joycitalima7@gmail.com', 'student', 4856044, '2º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4856044, class_year = '2º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'joycitalima7@gmail.com';
    END IF;

    -- Student: KAIKY GOMES DE SOUZA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'kaikygomesx@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"KAIKY GOMES DE SOUZA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'KAIKY GOMES DE SOUZA', 'kaikygomesx@gmail.com', 'student', 2710624, '2º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 2710624, class_year = '2º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'kaikygomesx@gmail.com';
    END IF;

    -- Student: KESIA IZIDIO TAVARES
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'kesiaizidio780@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"KESIA IZIDIO TAVARES"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'KESIA IZIDIO TAVARES', 'kesiaizidio780@gmail.com', 'student', 3784718, '2º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3784718, class_year = '2º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'kesiaizidio780@gmail.com';
    END IF;

    -- Student: LAUANNY ALMEIDA DA SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'lauannyalmeida35@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"LAUANNY ALMEIDA DA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'LAUANNY ALMEIDA DA SILVA', 'lauannyalmeida35@gmail.com', 'student', 4221584, '2º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4221584, class_year = '2º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'lauannyalmeida35@gmail.com';
    END IF;

    -- Student: LEVI ADRIANO CANDIDO SOUSA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'leviadrianocandidosousaadriano@', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"LEVI ADRIANO CANDIDO SOUSA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'LEVI ADRIANO CANDIDO SOUSA', 'leviadrianocandidosousaadriano@', 'student', 3733905, '2º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3733905, class_year = '2º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'leviadrianocandidosousaadriano@';
    END IF;

    -- Student: MAIRA FARIAS SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'mairafarias410@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MAIRA FARIAS SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MAIRA FARIAS SILVA', 'mairafarias410@gmail.com', 'student', 3784744, '2º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3784744, class_year = '2º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'mairafarias410@gmail.com';
    END IF;

    -- Student: MARIA ANDREIA CARVALHO GOMES
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'carvalhoaandreia26@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA ANDREIA CARVALHO GOMES"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA ANDREIA CARVALHO GOMES', 'carvalhoaandreia26@gmail.com', 'student', 3784758, '2º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3784758, class_year = '2º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'carvalhoaandreia26@gmail.com';
    END IF;

    -- Student: MARIA DANIELY FIDELES AGOSTINHO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'danielymariar15@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA DANIELY FIDELES AGOSTINHO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA DANIELY FIDELES AGOSTINHO', 'danielymariar15@gmail.com', 'student', 3422392, '2º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3422392, class_year = '2º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'danielymariar15@gmail.com';
    END IF;

    -- Student: MARIA EDUARDA ALVES DOS SANTOS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'eduardaalves8701@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA EDUARDA ALVES DOS SANTOS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA EDUARDA ALVES DOS SANTOS', 'eduardaalves8701@gmail.com', 'student', 3416556, '2º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3416556, class_year = '2º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'eduardaalves8701@gmail.com';
    END IF;

    -- Student: MARIA EDUARDA FERREIRA LIMA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'mariaeduardabva2025@gmail.', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA EDUARDA FERREIRA LIMA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA EDUARDA FERREIRA LIMA', 'mariaeduardabva2025@gmail.', 'student', 3861608, '2º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3861608, class_year = '2º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'mariaeduardabva2025@gmail.';
    END IF;

    -- Student: MARIA ELISABETH DA SILVA LIMA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'elisabethsilva0409@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA ELISABETH DA SILVA LIMA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA ELISABETH DA SILVA LIMA', 'elisabethsilva0409@gmail.com', 'student', 2244477, '2º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 2244477, class_year = '2º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'elisabethsilva0409@gmail.com';
    END IF;

    -- Student: MARIA ISABEL FERNANDES DOS SANTOS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'mariaisabelbva2025@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA ISABEL FERNANDES DOS SANTOS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA ISABEL FERNANDES DOS SANTOS', 'mariaisabelbva2025@gmail.com', 'student', 3798280, '2º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3798280, class_year = '2º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'mariaisabelbva2025@gmail.com';
    END IF;

    -- Student: MARIA ISADORA PEREIRA FIGUEIREDO ARAUJO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'maria.isa102020@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA ISADORA PEREIRA FIGUEIREDO ARAUJO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA ISADORA PEREIRA FIGUEIREDO ARAUJO', 'maria.isa102020@gmail.com', 'student', 5422464, '2º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 5422464, class_year = '2º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'maria.isa102020@gmail.com';
    END IF;

    -- Student: MARIA JOELINY DIAS DOS SANTOS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'joelinydias@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA JOELINY DIAS DOS SANTOS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA JOELINY DIAS DOS SANTOS', 'joelinydias@gmail.com', 'student', 3416559, '2º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3416559, class_year = '2º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'joelinydias@gmail.com';
    END IF;

    -- Student: MARIA LETICIA ELISEU FURTADO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'leticiafurtado573@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA LETICIA ELISEU FURTADO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA LETICIA ELISEU FURTADO', 'leticiafurtado573@gmail.com', 'student', 2704097, '2º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 2704097, class_year = '2º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'leticiafurtado573@gmail.com';
    END IF;

    -- Student: MARIANNE SANTOS SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'mariannesantosbva@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIANNE SANTOS SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIANNE SANTOS SILVA', 'mariannesantosbva@gmail.com', 'student', 3784781, '2º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3784781, class_year = '2º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'mariannesantosbva@gmail.com';
    END IF;

    -- Student: MIGUEL GABRIEL PEREIRA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'm26131465@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MIGUEL GABRIEL PEREIRA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MIGUEL GABRIEL PEREIRA', 'm26131465@gmail.com', 'student', 4437098, '2º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4437098, class_year = '2º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'm26131465@gmail.com';
    END IF;

    -- Student: PEDRO JONAS TAVARES FIGUEIREDO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', '1401weli@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"PEDRO JONAS TAVARES FIGUEIREDO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'PEDRO JONAS TAVARES FIGUEIREDO', '1401weli@gmail.com', 'student', 4672871, '2º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4672871, class_year = '2º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = '1401weli@gmail.com';
    END IF;

    -- Student: PEDRO OTAVIO CAETANO SOUSA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'pedrootaviocaetanosousa5@gmail', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"PEDRO OTAVIO CAETANO SOUSA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'PEDRO OTAVIO CAETANO SOUSA', 'pedrootaviocaetanosousa5@gmail', 'student', 5294435, '2º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 5294435, class_year = '2º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'pedrootaviocaetanosousa5@gmail';
    END IF;

    -- Student: RARYSSON LUCAS CAVALCANTE EVANGELISTA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'r38622471@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"RARYSSON LUCAS CAVALCANTE EVANGELISTA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'RARYSSON LUCAS CAVALCANTE EVANGELISTA', 'r38622471@gmail.com', 'student', 3795986, '2º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3795986, class_year = '2º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'r38622471@gmail.com';
    END IF;

    -- Student: VITOR MONTEIRO GOMES
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'vitormonteir3@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"VITOR MONTEIRO GOMES"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'VITOR MONTEIRO GOMES', 'vitormonteir3@gmail.com', 'student', 3414361, '2º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3414361, class_year = '2º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'vitormonteir3@gmail.com';
    END IF;

    -- Student: YAGO PEREIRA GOMES
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3796950@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"YAGO PEREIRA GOMES"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'YAGO PEREIRA GOMES', 'aluno_3796950@biblioedu.com', 'student', 3796950, '2º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3796950, class_year = '2º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'aluno_3796950@biblioedu.com';
    END IF;

    -- Student: YTALLO HORACIO DA SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'horacioytallo709@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"YTALLO HORACIO DA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'YTALLO HORACIO DA SILVA', 'horacioytallo709@gmail.com', 'student', 3413122, '2º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3413122, class_year = '2º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'horacioytallo709@gmail.com';
    END IF;

    -- Student: ALANA ALVES EVANGELISTA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'alanaalvesbva2025@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ALANA ALVES EVANGELISTA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'ALANA ALVES EVANGELISTA', 'alanaalvesbva2025@gmail.com', 'student', 3791484, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3791484, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'alanaalvesbva2025@gmail.com';
    END IF;

    -- Student: ANA CAROLINA DOS SANTOS PINHEIRO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'pinheirocarolina327@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ANA CAROLINA DOS SANTOS PINHEIRO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'ANA CAROLINA DOS SANTOS PINHEIRO', 'pinheirocarolina327@gmail.com', 'student', 3697444, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3697444, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'pinheirocarolina327@gmail.com';
    END IF;

    -- Student: ANA FLAVIA MADEIRO DE LIMA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'anaflaviaafml9@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ANA FLAVIA MADEIRO DE LIMA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'ANA FLAVIA MADEIRO DE LIMA', 'anaflaviaafml9@gmail.com', 'student', 3785418, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3785418, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'anaflaviaafml9@gmail.com';
    END IF;

    -- Student: ANA LIDHIA LIMA SANTOS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'analidhialimasantos@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ANA LIDHIA LIMA SANTOS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'ANA LIDHIA LIMA SANTOS', 'analidhialimasantos@gmail.com', 'student', 4982048, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4982048, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'analidhialimasantos@gmail.com';
    END IF;

    -- Student: ANA MARISA ROSENDO DE LIMA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'anamarisa595@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ANA MARISA ROSENDO DE LIMA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'ANA MARISA ROSENDO DE LIMA', 'anamarisa595@gmail.com', 'student', 4799103, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4799103, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'anamarisa595@gmail.com';
    END IF;

    -- Student: ANA YVINA GOMES VIDAL
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'ayvii1299@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ANA YVINA GOMES VIDAL"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'ANA YVINA GOMES VIDAL', 'ayvii1299@gmail.com', 'student', 4799708, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4799708, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'ayvii1299@gmail.com';
    END IF;

    -- Student: AURELIA TIBURCIO DE LUCENA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aureliabva2025@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"AURELIA TIBURCIO DE LUCENA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'AURELIA TIBURCIO DE LUCENA', 'aureliabva2025@gmail.com', 'student', 2086472, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 2086472, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'aureliabva2025@gmail.com';
    END IF;

    -- Student: BIANCA LIMA COSTA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'bianalitecs@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"BIANCA LIMA COSTA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'BIANCA LIMA COSTA', 'bianalitecs@gmail.com', 'student', 4002192, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4002192, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'bianalitecs@gmail.com';
    END IF;

    -- Student: CINDY MABEL DE OLIVEIRA SANTOS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'cindymabel533@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"CINDY MABEL DE OLIVEIRA SANTOS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'CINDY MABEL DE OLIVEIRA SANTOS', 'cindymabel533@gmail.com', 'student', 4782358, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4782358, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'cindymabel533@gmail.com';
    END IF;

    -- Student: DAVI ROSA SANTOS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'davialunoonline@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"DAVI ROSA SANTOS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'DAVI ROSA SANTOS', 'davialunoonline@gmail.com', 'student', 4435505, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4435505, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'davialunoonline@gmail.com';
    END IF;

    -- Student: GABRIELLY CLEMENTINO LEITE
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'gabrielaalmeida4556@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"GABRIELLY CLEMENTINO LEITE"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'GABRIELLY CLEMENTINO LEITE', 'gabrielaalmeida4556@gmail.com', 'student', 3796822, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3796822, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'gabrielaalmeida4556@gmail.com';
    END IF;

    -- Student: GLICYA RAYANNY DA SILVA COSTA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'glicyarayyanny.silvaa@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"GLICYA RAYANNY DA SILVA COSTA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'GLICYA RAYANNY DA SILVA COSTA', 'glicyarayyanny.silvaa@gmail.com', 'student', 5133166, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 5133166, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'glicyarayyanny.silvaa@gmail.com';
    END IF;

    -- Student: JOSE AIRTON PEREIRA DA SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'joseairtonnm2009@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOSE AIRTON PEREIRA DA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'JOSE AIRTON PEREIRA DA SILVA', 'joseairtonnm2009@gmail.com', 'student', 3416644, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3416644, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'joseairtonnm2009@gmail.com';
    END IF;

    -- Student: JOSE KEIRRYSON ALEIXO DE SOUSA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'jkeirryson7@icloud.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOSE KEIRRYSON ALEIXO DE SOUSA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'JOSE KEIRRYSON ALEIXO DE SOUSA', 'jkeirryson7@icloud.com', 'student', 4227932, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4227932, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'jkeirryson7@icloud.com';
    END IF;

    -- Student: JOSE KEYVSON ALMADA MORAES
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'keyvsonalmada@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOSE KEYVSON ALMADA MORAES"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'JOSE KEYVSON ALMADA MORAES', 'keyvsonalmada@gmail.com', 'student', 5123427, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 5123427, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'keyvsonalmada@gmail.com';
    END IF;

    -- Student: JULIA PESSOA DOS SANTOS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'juliabva2025@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JULIA PESSOA DOS SANTOS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'JULIA PESSOA DOS SANTOS', 'juliabva2025@gmail.com', 'student', 4982086, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4982086, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'juliabva2025@gmail.com';
    END IF;

    -- Student: KALLEBE MEDEIROS BEZERRA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'kallebem224@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"KALLEBE MEDEIROS BEZERRA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'KALLEBE MEDEIROS BEZERRA', 'kallebem224@gmail.com', 'student', 4899712, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4899712, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'kallebem224@gmail.com';
    END IF;

    -- Student: KAYLANNE ALMEIDA DE SOUSA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'souzakaylannealmeida@gmail.', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"KAYLANNE ALMEIDA DE SOUSA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'KAYLANNE ALMEIDA DE SOUSA', 'souzakaylannealmeida@gmail.', 'student', 3786824, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3786824, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'souzakaylannealmeida@gmail.';
    END IF;

    -- Student: LARA VITORIA BERTO DE FRANCA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'laravitoriabf09@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"LARA VITORIA BERTO DE FRANCA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'LARA VITORIA BERTO DE FRANCA', 'laravitoriabf09@gmail.com', 'student', 4276913, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4276913, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'laravitoriabf09@gmail.com';
    END IF;

    -- Student: LAURA PEREIRA SAMPAIO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'laurapsampaioo@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"LAURA PEREIRA SAMPAIO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'LAURA PEREIRA SAMPAIO', 'laurapsampaioo@gmail.com', 'student', 3423111, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3423111, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'laurapsampaioo@gmail.com';
    END IF;

    -- Student: LETICIA EVELLYN SOARES DA SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'l85691450@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"LETICIA EVELLYN SOARES DA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'LETICIA EVELLYN SOARES DA SILVA', 'l85691450@gmail.com', 'student', 3799726, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3799726, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'l85691450@gmail.com';
    END IF;

    -- Student: LOUYSE RACHEL ALVES MACEDO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'louyserachel@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"LOUYSE RACHEL ALVES MACEDO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'LOUYSE RACHEL ALVES MACEDO', 'louyserachel@gmail.com', 'student', 5423085, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 5423085, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'louyserachel@gmail.com';
    END IF;

    -- Student: MARIA AISSA INACIO DE MELO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'mr.aissa78929@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA AISSA INACIO DE MELO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA AISSA INACIO DE MELO', 'mr.aissa78929@gmail.com', 'student', 3795906, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3795906, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'mr.aissa78929@gmail.com';
    END IF;

    -- Student: MARIA BIANCA ALMEIDA SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'almeidamariabianca1@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA BIANCA ALMEIDA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA BIANCA ALMEIDA SILVA', 'almeidamariabianca1@gmail.com', 'student', 3783502, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3783502, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'almeidamariabianca1@gmail.com';
    END IF;

    -- Student: MARIA CAMILA BERTO PEREIRA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'camilasalustro@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA CAMILA BERTO PEREIRA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA CAMILA BERTO PEREIRA', 'camilasalustro@gmail.com', 'student', 3791522, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3791522, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'camilasalustro@gmail.com';
    END IF;

    -- Student: MARIA EDUARDA CARDOSO FREITAS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'eduardacardoso180609@gmail.', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA EDUARDA CARDOSO FREITAS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA EDUARDA CARDOSO FREITAS', 'eduardacardoso180609@gmail.', 'student', 5423264, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 5423264, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'eduardacardoso180609@gmail.';
    END IF;

    -- Student: MARIA EDUARDA CRUZ MORAIS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'eduardacruz688@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA EDUARDA CRUZ MORAIS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA EDUARDA CRUZ MORAIS', 'eduardacruz688@gmail.com', 'student', 5225957, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 5225957, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'eduardacruz688@gmail.com';
    END IF;

    -- Student: MARIA ISABEL ALVES COSTA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'i3582060@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA ISABEL ALVES COSTA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA ISABEL ALVES COSTA', 'i3582060@gmail.com', 'student', 2672758, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 2672758, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'i3582060@gmail.com';
    END IF;

    -- Student: MARIA JACIELLY RIBEIRO SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'mariajaciellyribeirosilva@gmail.', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA JACIELLY RIBEIRO SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA JACIELLY RIBEIRO SILVA', 'mariajaciellyribeirosilva@gmail.', 'student', 4799715, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4799715, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'mariajaciellyribeirosilva@gmail.';
    END IF;

    -- Student: MARIA NATHALLY DE OLIVEIRA SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'marianathallydeoliveirasilva@gma', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA NATHALLY DE OLIVEIRA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA NATHALLY DE OLIVEIRA SILVA', 'marianathallydeoliveirasilva@gma', 'student', 4692255, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4692255, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'marianathallydeoliveirasilva@gma';
    END IF;

    -- Student: MARIA VALERIA TIBURTINO MESSIAS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'vvaleriamaria09@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA VALERIA TIBURTINO MESSIAS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA VALERIA TIBURTINO MESSIAS', 'vvaleriamaria09@gmail.com', 'student', 3417157, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3417157, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'vvaleriamaria09@gmail.com';
    END IF;

    -- Student: MARIA WILLIANE ALVES DE LIMA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'alveswilliane69@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA WILLIANE ALVES DE LIMA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA WILLIANE ALVES DE LIMA', 'alveswilliane69@gmail.com', 'student', 3786845, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3786845, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'alveswilliane69@gmail.com';
    END IF;

    -- Student: MARIA YVINNA GOMES MARTINS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'mariaivinna963@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA YVINNA GOMES MARTINS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA YVINNA GOMES MARTINS', 'mariaivinna963@gmail.com', 'student', 4799734, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4799734, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'mariaivinna963@gmail.com';
    END IF;

    -- Student: MELISSA BATISTA DE OLIVEIRA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'melissaoli019@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MELISSA BATISTA DE OLIVEIRA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MELISSA BATISTA DE OLIVEIRA', 'melissaoli019@gmail.com', 'student', 3733918, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3733918, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'melissaoli019@gmail.com';
    END IF;

    -- Student: PAMELA MARIA OLIVEIRA DA SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'pamelamaria20009@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"PAMELA MARIA OLIVEIRA DA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'PAMELA MARIA OLIVEIRA DA SILVA', 'pamelamaria20009@gmail.com', 'student', 3417422, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3417422, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'pamelamaria20009@gmail.com';
    END IF;

    -- Student: PEDRO IAN ARISTIDES ALVES
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'alvespedroian7@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"PEDRO IAN ARISTIDES ALVES"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'PEDRO IAN ARISTIDES ALVES', 'alvespedroian7@gmail.com', 'student', 3796919, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3796919, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'alvespedroian7@gmail.com';
    END IF;

    -- Student: RAKELY DEMETRIO TAVARES
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'rakelydemetrio68@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"RAKELY DEMETRIO TAVARES"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'RAKELY DEMETRIO TAVARES', 'rakelydemetrio68@gmail.com', 'student', 3798056, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3798056, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'rakelydemetrio68@gmail.com';
    END IF;

    -- Student: REBECA MARCULINO SANTOS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'rebecamarculino2025@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"REBECA MARCULINO SANTOS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'REBECA MARCULINO SANTOS', 'rebecamarculino2025@gmail.com', 'student', 5415218, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 5415218, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'rebecamarculino2025@gmail.com';
    END IF;

    -- Student: SARA MARIA VIDAL RODRIGUES
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'sarabva2025@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"SARA MARIA VIDAL RODRIGUES"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'SARA MARIA VIDAL RODRIGUES', 'sarabva2025@gmail.com', 'student', 4982107, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4982107, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'sarabva2025@gmail.com';
    END IF;

    -- Student: SOPHIA DE LIMA JACO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'limajacosophia@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"SOPHIA DE LIMA JACO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'SOPHIA DE LIMA JACO', 'limajacosophia@gmail.com', 'student', 5423176, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 5423176, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'limajacosophia@gmail.com';
    END IF;

    -- Student: TAISA MARIA DA COSTA TELES
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'taisateles12@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"TAISA MARIA DA COSTA TELES"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'TAISA MARIA DA COSTA TELES', 'taisateles12@gmail.com', 'student', 5423099, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 5423099, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'taisateles12@gmail.com';
    END IF;

    -- Student: VIVIANE HELEN GOMES DA SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'vivianehelen15@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"VIVIANE HELEN GOMES DA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'VIVIANE HELEN GOMES DA SILVA', 'vivianehelen15@gmail.com', 'student', 2422354, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 2422354, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'vivianehelen15@gmail.com';
    END IF;

    -- Student: WEVELYN OLIVEIRA SANTOS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'w87885102@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"WEVELYN OLIVEIRA SANTOS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'WEVELYN OLIVEIRA SANTOS', 'w87885102@gmail.com', 'student', 3786851, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3786851, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'w87885102@gmail.com';
    END IF;

    -- Student: YASLLA BEATRIZ SILVA GOMES
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'yasllabeatriz00@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"YASLLA BEATRIZ SILVA GOMES"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'YASLLA BEATRIZ SILVA GOMES', 'yasllabeatriz00@gmail.com', 'student', 4799742, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4799742, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'yasllabeatriz00@gmail.com';
    END IF;

    -- Student: YASMIM SILVA FURTADO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'y01550394@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"YASMIM SILVA FURTADO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'YASMIM SILVA FURTADO', 'y01550394@gmail.com', 'student', 3796959, '2º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3796959, class_year = '2º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'y01550394@gmail.com';
    END IF;

    -- Student: ADRIEL KEIMISON PEREIRA BEZERRA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'adrielkeimisonmeet@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ADRIEL KEIMISON PEREIRA BEZERRA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'ADRIEL KEIMISON PEREIRA BEZERRA', 'adrielkeimisonmeet@gmail.com', 'student', 3416984, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3416984, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'adrielkeimisonmeet@gmail.com';
    END IF;

    -- Student: ALLYCIA MARIA NUNES LEITE
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'allyciam966@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ALLYCIA MARIA NUNES LEITE"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'ALLYCIA MARIA NUNES LEITE', 'allyciam966@gmail.com', 'student', 5433297, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 5433297, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'allyciam966@gmail.com';
    END IF;

    -- Student: AMARILLYS NUNES RODRIGUES
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'amarillysbva2025@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"AMARILLYS NUNES RODRIGUES"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'AMARILLYS NUNES RODRIGUES', 'amarillysbva2025@gmail.com', 'student', 5424531, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 5424531, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'amarillysbva2025@gmail.com';
    END IF;

    -- Student: ANNE ESTHER LEITE SOUSA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'anneesther132@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ANNE ESTHER LEITE SOUSA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'ANNE ESTHER LEITE SOUSA', 'anneesther132@gmail.com', 'student', 3794509, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3794509, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'anneesther132@gmail.com';
    END IF;

    -- Student: ARTHUR LEITE DE ARAUJO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'tamecfxp@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ARTHUR LEITE DE ARAUJO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'ARTHUR LEITE DE ARAUJO', 'tamecfxp@gmail.com', 'student', 3416637, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3416637, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'tamecfxp@gmail.com';
    END IF;

    -- Student: BRENDA MARIA TAVARES LIMA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'brendamariabva2009@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"BRENDA MARIA TAVARES LIMA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'BRENDA MARIA TAVARES LIMA', 'brendamariabva2009@gmail.com', 'student', 4690098, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4690098, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'brendamariabva2009@gmail.com';
    END IF;

    -- Student: CAIO WALLACE PEREIRA DE ABREUS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'wallacy12x@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"CAIO WALLACE PEREIRA DE ABREUS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'CAIO WALLACE PEREIRA DE ABREUS', 'wallacy12x@gmail.com', 'student', 3417266, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3417266, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'wallacy12x@gmail.com';
    END IF;

    -- Student: DAMIAO HENRIQUE NASCIMENTO DE OLIVEIRA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'diego19nascimento18@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"DAMIAO HENRIQUE NASCIMENTO DE OLIVEIRA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'DAMIAO HENRIQUE NASCIMENTO DE OLIVEIRA', 'diego19nascimento18@gmail.com', 'student', 3794380, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3794380, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'diego19nascimento18@gmail.com';
    END IF;

    -- Student: DAPHYNE MONTEIRO MIRANDA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'daphynemonteiro97@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"DAPHYNE MONTEIRO MIRANDA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'DAPHYNE MONTEIRO MIRANDA', 'daphynemonteiro97@gmail.com', 'student', 4799751, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4799751, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'daphynemonteiro97@gmail.com';
    END IF;

    -- Student: DEXTER AQUILES MARCULINO SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'dexterdeporteiras@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"DEXTER AQUILES MARCULINO SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'DEXTER AQUILES MARCULINO SILVA', 'dexterdeporteiras@gmail.com', 'student', 5424428, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 5424428, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'dexterdeporteiras@gmail.com';
    END IF;

    -- Student: ELIEDSON OLIVEIRA DE LIMA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'eliedsonbva2025@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ELIEDSON OLIVEIRA DE LIMA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'ELIEDSON OLIVEIRA DE LIMA', 'eliedsonbva2025@gmail.com', 'student', 3794392, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3794392, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'eliedsonbva2025@gmail.com';
    END IF;

    -- Student: FRANCISCA ISRAELYNE FELIX DOS SANTOS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'franciscalyne115@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"FRANCISCA ISRAELYNE FELIX DOS SANTOS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'FRANCISCA ISRAELYNE FELIX DOS SANTOS', 'franciscalyne115@gmail.com', 'student', 3421148, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3421148, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'franciscalyne115@gmail.com';
    END IF;

    -- Student: FRANCISCO LEVI ANDRADE DE CARVALHO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'leviandrade650@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"FRANCISCO LEVI ANDRADE DE CARVALHO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'FRANCISCO LEVI ANDRADE DE CARVALHO', 'leviandrade650@gmail.com', 'student', 3421158, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3421158, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'leviandrade650@gmail.com';
    END IF;

    -- Student: GLORIA IARYDSA LANDIM CORDEIRO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'iarydsacordeiro@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"GLORIA IARYDSA LANDIM CORDEIRO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'GLORIA IARYDSA LANDIM CORDEIRO', 'iarydsacordeiro@gmail.com', 'student', 4780309, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4780309, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'iarydsacordeiro@gmail.com';
    END IF;

    -- Student: GUSTAVO FREIRE DE DEUS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'freireg802@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"GUSTAVO FREIRE DE DEUS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'GUSTAVO FREIRE DE DEUS', 'freireg802@gmail.com', 'student', 3796833, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3796833, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'freireg802@gmail.com';
    END IF;

    -- Student: GUSTAVO TAVARES GOMES
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'g9528842@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"GUSTAVO TAVARES GOMES"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'GUSTAVO TAVARES GOMES', 'g9528842@gmail.com', 'student', 3800146, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3800146, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'g9528842@gmail.com';
    END IF;

    -- Student: HUDSON RODRIGUES MATIAS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'hudsonrodriguesmatias@gmail.', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"HUDSON RODRIGUES MATIAS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'HUDSON RODRIGUES MATIAS', 'hudsonrodriguesmatias@gmail.', 'student', 4193717, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4193717, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'hudsonrodriguesmatias@gmail.';
    END IF;

    -- Student: IANY GOMES DE LIMA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'ianylima0211@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"IANY GOMES DE LIMA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'IANY GOMES DE LIMA', 'ianylima0211@gmail.com', 'student', 3789902, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3789902, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'ianylima0211@gmail.com';
    END IF;

    -- Student: ISABELA MARIA SIMPLICIO VIEIRA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'isabelamariasimpliciovieira01@g', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ISABELA MARIA SIMPLICIO VIEIRA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'ISABELA MARIA SIMPLICIO VIEIRA', 'isabelamariasimpliciovieira01@g', 'student', 3431006, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3431006, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'isabelamariasimpliciovieira01@g';
    END IF;

    -- Student: JOAO LUCAS DA SILVA FURTADO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'furtadojoaolucas22@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOAO LUCAS DA SILVA FURTADO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'JOAO LUCAS DA SILVA FURTADO', 'furtadojoaolucas22@gmail.com', 'student', 3778485, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3778485, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'furtadojoaolucas22@gmail.com';
    END IF;

    -- Student: JOSE FABIO RIBEIRO DA SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'fabioestudante77@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOSE FABIO RIBEIRO DA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'JOSE FABIO RIBEIRO DA SILVA', 'fabioestudante77@gmail.com', 'student', 3058435, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3058435, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'fabioestudante77@gmail.com';
    END IF;

    -- Student: JOSE KESLEY LOURENCO SALVIANO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'kesleysalviano1020@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOSE KESLEY LOURENCO SALVIANO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'JOSE KESLEY LOURENCO SALVIANO', 'kesleysalviano1020@gmail.com', 'student', 3423105, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3423105, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'kesleysalviano1020@gmail.com';
    END IF;

    -- Student: JOSE KEYRRYSON VIANA LINS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'nikovianalins@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOSE KEYRRYSON VIANA LINS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'JOSE KEYRRYSON VIANA LINS', 'nikovianalins@gmail.com', 'student', 4823351, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4823351, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'nikovianalins@gmail.com';
    END IF;

    -- Student: JOSE MARCOS IZIDORIO DE OLIVEIRA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'josemarcosbva2025@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOSE MARCOS IZIDORIO DE OLIVEIRA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'JOSE MARCOS IZIDORIO DE OLIVEIRA', 'josemarcosbva2025@gmail.com', 'student', 3797187, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3797187, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'josemarcosbva2025@gmail.com';
    END IF;

    -- Student: JOSE MOISES FERREIRA LEITE
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'moisesferreirae@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOSE MOISES FERREIRA LEITE"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'JOSE MOISES FERREIRA LEITE', 'moisesferreirae@gmail.com', 'student', 3912707, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3912707, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'moisesferreirae@gmail.com';
    END IF;

    -- Student: KAROLYNE GENYKELLY COSTA ALVES
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'karolynegenykelly@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"KAROLYNE GENYKELLY COSTA ALVES"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'KAROLYNE GENYKELLY COSTA ALVES', 'karolynegenykelly@gmail.com', 'student', 2672516, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 2672516, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'karolynegenykelly@gmail.com';
    END IF;

    -- Student: LAURA MEDEIROS DOS SANTOS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'lauramedeiros902@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"LAURA MEDEIROS DOS SANTOS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'LAURA MEDEIROS DOS SANTOS', 'lauramedeiros902@gmail.com', 'student', 5424468, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 5424468, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'lauramedeiros902@gmail.com';
    END IF;

    -- Student: LIVIA MARIA DE ALMEIDA NASCIMENTO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'liviaalmeida6964@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"LIVIA MARIA DE ALMEIDA NASCIMENTO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'LIVIA MARIA DE ALMEIDA NASCIMENTO', 'liviaalmeida6964@gmail.com', 'student', 3921241, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3921241, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'liviaalmeida6964@gmail.com';
    END IF;

    -- Student: LUCAS GRANGEIRO DE MELO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'lucasgrangeiro448@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"LUCAS GRANGEIRO DE MELO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'LUCAS GRANGEIRO DE MELO', 'lucasgrangeiro448@gmail.com', 'student', 3421805, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3421805, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'lucasgrangeiro448@gmail.com';
    END IF;

    -- Student: LUDMYLA DELFINO SOUSA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'delfinosousaludmyla@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"LUDMYLA DELFINO SOUSA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'LUDMYLA DELFINO SOUSA', 'delfinosousaludmyla@gmail.com', 'student', 5424492, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 5424492, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'delfinosousaludmyla@gmail.com';
    END IF;

    -- Student: LUIZ ANTONIO EVANGELISTA SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'l6897195@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"LUIZ ANTONIO EVANGELISTA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'LUIZ ANTONIO EVANGELISTA SILVA', 'l6897195@gmail.com', 'student', 3784737, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3784737, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'l6897195@gmail.com';
    END IF;

    -- Student: MARCOS WANDERSON OLIVEIRA SANTOS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'm7267737@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARCOS WANDERSON OLIVEIRA SANTOS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARCOS WANDERSON OLIVEIRA SANTOS', 'm7267737@gmail.com', 'student', 3417115, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3417115, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'm7267737@gmail.com';
    END IF;

    -- Student: MARIA BIANCA PEREIRA DOS SANTOS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'yukiihopenjr@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA BIANCA PEREIRA DOS SANTOS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA BIANCA PEREIRA DOS SANTOS', 'yukiihopenjr@gmail.com', 'student', 3796896, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3796896, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'yukiihopenjr@gmail.com';
    END IF;

    -- Student: MARIA CLARA FURTADO DOS SANTOS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'maria.clara.furt4d0@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA CLARA FURTADO DOS SANTOS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA CLARA FURTADO DOS SANTOS', 'maria.clara.furt4d0@gmail.com', 'student', 4692197, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4692197, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'maria.clara.furt4d0@gmail.com';
    END IF;

    -- Student: MARIA LARISSA MEDEIROS DE SOUSA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'larissasousamedeiros98@gmail.', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA LARISSA MEDEIROS DE SOUSA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA LARISSA MEDEIROS DE SOUSA', 'larissasousamedeiros98@gmail.', 'student', 3799760, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3799760, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'larissasousamedeiros98@gmail.';
    END IF;

    -- Student: MARIA LOUYSE NUNES DA SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'marialouysenunes2306@gmail.', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA LOUYSE NUNES DA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA LOUYSE NUNES DA SILVA', 'marialouysenunes2306@gmail.', 'student', 4577575, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4577575, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'marialouysenunes2306@gmail.';
    END IF;

    -- Student: MARIA WELINI ARAUJO DE SOUZA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'welinesouza5@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA WELINI ARAUJO DE SOUZA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA WELINI ARAUJO DE SOUZA', 'welinesouza5@gmail.com', 'student', 3792572, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3792572, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'welinesouza5@gmail.com';
    END IF;

    -- Student: MOISES GRANGEIRO SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'moisesbva2025@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MOISES GRANGEIRO SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MOISES GRANGEIRO SILVA', 'moisesbva2025@gmail.com', 'student', 3421822, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3421822, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'moisesbva2025@gmail.com';
    END IF;

    -- Student: PEDRO LUCAS BEZERRA DE ARAUJO SANTOS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'lucad111183838@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"PEDRO LUCAS BEZERRA DE ARAUJO SANTOS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'PEDRO LUCAS BEZERRA DE ARAUJO SANTOS', 'lucad111183838@gmail.com', 'student', 3403506, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3403506, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'lucad111183838@gmail.com';
    END IF;

    -- Student: RAMON FURTUOSO SOUSA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'ramon67sousa@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"RAMON FURTUOSO SOUSA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'RAMON FURTUOSO SOUSA', 'ramon67sousa@gmail.com', 'student', 2422344, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 2422344, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'ramon67sousa@gmail.com';
    END IF;

    -- Student: RUAN LEVY SAMPAIO SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'ruanlevy103@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"RUAN LEVY SAMPAIO SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'RUAN LEVY SAMPAIO SILVA', 'ruanlevy103@gmail.com', 'student', 3799892, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3799892, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'ruanlevy103@gmail.com';
    END IF;

    -- Student: THAYS NUNES DE OLIVEIRA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'tathay01983@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"THAYS NUNES DE OLIVEIRA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'THAYS NUNES DE OLIVEIRA', 'tathay01983@gmail.com', 'student', 3414926, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3414926, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'tathay01983@gmail.com';
    END IF;

    -- Student: VINICIUS VIEIRA NOVAIS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'v33210631@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"VINICIUS VIEIRA NOVAIS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'VINICIUS VIEIRA NOVAIS', 'v33210631@gmail.com', 'student', 3429010, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3429010, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'v33210631@gmail.com';
    END IF;

    -- Student: YANNE BEATRICI SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'yannebeatrici@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"YANNE BEATRICI SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'YANNE BEATRICI SILVA', 'yannebeatrici@gmail.com', 'student', 3406035, '2º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3406035, class_year = '2º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'yannebeatrici@gmail.com';
    END IF;

    -- Student: ANA BEATRIZ FERREIRA DOS SANTOS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', '3408280.sem.email@seduc.ce.', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ANA BEATRIZ FERREIRA DOS SANTOS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'ANA BEATRIZ FERREIRA DOS SANTOS', '3408280.sem.email@seduc.ce.', 'student', 3408280, '3º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3408280, class_year = '3º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = '3408280.sem.email@seduc.ce.';
    END IF;

    -- Student: ANA BEATRIZ PEREIRA DE MOURA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'anabeatrizbva@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ANA BEATRIZ PEREIRA DE MOURA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'ANA BEATRIZ PEREIRA DE MOURA', 'anabeatrizbva@gmail.com', 'student', 4458218, '3º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4458218, class_year = '3º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'anabeatrizbva@gmail.com';
    END IF;

    -- Student: ANA BEATRIZ SANTOS MONTEIRO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 's2patroa00@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ANA BEATRIZ SANTOS MONTEIRO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'ANA BEATRIZ SANTOS MONTEIRO', 's2patroa00@gmail.com', 'student', 3972795, '3º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3972795, class_year = '3º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 's2patroa00@gmail.com';
    END IF;

    -- Student: ANTONIO ROMEU TAVARES LUCENA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'romeulucena11@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ANTONIO ROMEU TAVARES LUCENA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'ANTONIO ROMEU TAVARES LUCENA', 'romeulucena11@gmail.com', 'student', 2068560, '3º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 2068560, class_year = '3º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'romeulucena11@gmail.com';
    END IF;

    -- Student: CARLOS EDUARDO SOUZA LEITE
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'carlosbva2024@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"CARLOS EDUARDO SOUZA LEITE"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'CARLOS EDUARDO SOUZA LEITE', 'carlosbva2024@gmail.com', 'student', 4957706, '3º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4957706, class_year = '3º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'carlosbva2024@gmail.com';
    END IF;

    -- Student: CICERO EVERTON FLORENCIO SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'ciceroeverton2008@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"CICERO EVERTON FLORENCIO SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'CICERO EVERTON FLORENCIO SILVA', 'ciceroeverton2008@gmail.com', 'student', 3547966, '3º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3547966, class_year = '3º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'ciceroeverton2008@gmail.com';
    END IF;

    -- Student: EMILIA ALVES LINO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'emilaalves214@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"EMILIA ALVES LINO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'EMILIA ALVES LINO', 'emilaalves214@gmail.com', 'student', 3972947, '3º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3972947, class_year = '3º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'emilaalves214@gmail.com';
    END IF;

    -- Student: EVELLYN DE SANTANA TIBURTINO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'e3374156@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"EVELLYN DE SANTANA TIBURTINO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'EVELLYN DE SANTANA TIBURTINO', 'e3374156@gmail.com', 'student', 4431938, '3º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4431938, class_year = '3º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'e3374156@gmail.com';
    END IF;

    -- Student: EVERTON LORRAN FIGUEIREDO CARLOS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'evertonbva2024@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"EVERTON LORRAN FIGUEIREDO CARLOS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'EVERTON LORRAN FIGUEIREDO CARLOS', 'evertonbva2024@gmail.com', 'student', 4628540, '3º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4628540, class_year = '3º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'evertonbva2024@gmail.com';
    END IF;

    -- Student: FRANCISCO KAYO BELEM DOS SANTOS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'kayobelem44@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"FRANCISCO KAYO BELEM DOS SANTOS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'FRANCISCO KAYO BELEM DOS SANTOS', 'kayobelem44@gmail.com', 'student', 3405669, '3º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3405669, class_year = '3º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'kayobelem44@gmail.com';
    END IF;

    -- Student: GUILHERME ROBERTO DOS SANTOS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'guilhermerobertobva@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"GUILHERME ROBERTO DOS SANTOS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'GUILHERME ROBERTO DOS SANTOS', 'guilhermerobertobva@gmail.com', 'student', 2091261, '3º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 2091261, class_year = '3º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'guilhermerobertobva@gmail.com';
    END IF;

    -- Student: GUILHERME SILVA CAVALCANTE RODRIGUES
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'gs98078475762@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"GUILHERME SILVA CAVALCANTE RODRIGUES"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'GUILHERME SILVA CAVALCANTE RODRIGUES', 'gs98078475762@gmail.com', 'student', 4431241, '3º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4431241, class_year = '3º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'gs98078475762@gmail.com';
    END IF;

    -- Student: GUSTAVO MEDEIROS ALVES
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'gustavomedeirosbva@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"GUSTAVO MEDEIROS ALVES"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'GUSTAVO MEDEIROS ALVES', 'gustavomedeirosbva@gmail.com', 'student', 5001678, '3º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 5001678, class_year = '3º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'gustavomedeirosbva@gmail.com';
    END IF;

    -- Student: ITALLO MATIAS SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'itallomatiasbva@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ITALLO MATIAS SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'ITALLO MATIAS SILVA', 'itallomatiasbva@gmail.com', 'student', 5120534, '3º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 5120534, class_year = '3º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'itallomatiasbva@gmail.com';
    END IF;

    -- Student: IZABEL KAYLLANE PATRICIO XAVIER
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'kayllaneizabel@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"IZABEL KAYLLANE PATRICIO XAVIER"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'IZABEL KAYLLANE PATRICIO XAVIER', 'kayllaneizabel@gmail.com', 'student', 2241538, '3º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 2241538, class_year = '3º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'kayllaneizabel@gmail.com';
    END IF;

    -- Student: JAMILLE MAYANE SOUSA SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'mayanejamille9@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JAMILLE MAYANE SOUSA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'JAMILLE MAYANE SOUSA SILVA', 'mayanejamille9@gmail.com', 'student', 5258572, '3º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 5258572, class_year = '3º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'mayanejamille9@gmail.com';
    END IF;

    -- Student: JOAO CARLOS GOMES FERREIRA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'joaocarlosgomesferreira5@gmail.', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOAO CARLOS GOMES FERREIRA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'JOAO CARLOS GOMES FERREIRA', 'joaocarlosgomesferreira5@gmail.', 'student', 3548053, '3º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3548053, class_year = '3º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'joaocarlosgomesferreira5@gmail.';
    END IF;

    -- Student: JOSE ABRAAO SARAIVA FIGUEREDO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'joseabraao314@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOSE ABRAAO SARAIVA FIGUEREDO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'JOSE ABRAAO SARAIVA FIGUEREDO', 'joseabraao314@gmail.com', 'student', 3408680, '3º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3408680, class_year = '3º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'joseabraao314@gmail.com';
    END IF;

    -- Student: JOSE KALEL CUNHA DOS SANTOS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'kalelsantos357@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOSE KALEL CUNHA DOS SANTOS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'JOSE KALEL CUNHA DOS SANTOS', 'kalelsantos357@gmail.com', 'student', 3793724, '3º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3793724, class_year = '3º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'kalelsantos357@gmail.com';
    END IF;

    -- Student: JULYA HELLEN FERNANDES ROCHA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'julyahellenf@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JULYA HELLEN FERNANDES ROCHA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'JULYA HELLEN FERNANDES ROCHA', 'julyahellenf@gmail.com', 'student', 3408343, '3º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3408343, class_year = '3º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'julyahellenf@gmail.com';
    END IF;

    -- Student: KAUAN ALVES DE SOUZA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'kauanalves777k@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"KAUAN ALVES DE SOUZA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'KAUAN ALVES DE SOUZA', 'kauanalves777k@gmail.com', 'student', 3987538, '3º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3987538, class_year = '3º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'kauanalves777k@gmail.com';
    END IF;

    -- Student: LIVIA ROSARIO DE SOUSA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'liviabva2024@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"LIVIA ROSARIO DE SOUSA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'LIVIA ROSARIO DE SOUSA', 'liviabva2024@gmail.com', 'student', 3421081, '3º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3421081, class_year = '3º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'liviabva2024@gmail.com';
    END IF;

    -- Student: MARIA EDUARDA CLEMENTINO MENDES
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'meduardaclementinomendes@gm', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA EDUARDA CLEMENTINO MENDES"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA EDUARDA CLEMENTINO MENDES', 'meduardaclementinomendes@gm', 'student', 3422035, '3º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3422035, class_year = '3º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'meduardaclementinomendes@gm';
    END IF;

    -- Student: MARIA ELOIZA COUTO DOS SANTOS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'mariaeloisacouto05@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA ELOIZA COUTO DOS SANTOS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA ELOIZA COUTO DOS SANTOS', 'mariaeloisacouto05@gmail.com', 'student', 2282083, '3º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 2282083, class_year = '3º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'mariaeloisacouto05@gmail.com';
    END IF;

    -- Student: MARIA LAIS INACIO DA SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'marialais686@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA LAIS INACIO DA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA LAIS INACIO DA SILVA', 'marialais686@gmail.com', 'student', 2250297, '3º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 2250297, class_year = '3º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'marialais686@gmail.com';
    END IF;

    -- Student: MARIA MIRELE DA SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'mirele19010@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA MIRELE DA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA MIRELE DA SILVA', 'mirele19010@gmail.com', 'student', 4567464, '3º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4567464, class_year = '3º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'mirele19010@gmail.com';
    END IF;

    -- Student: MATHEUS FERREIRA DE OLIVEIRA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'mf5111314@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MATHEUS FERREIRA DE OLIVEIRA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MATHEUS FERREIRA DE OLIVEIRA', 'mf5111314@gmail.com', 'student', 2509739, '3º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 2509739, class_year = '3º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'mf5111314@gmail.com';
    END IF;

    -- Student: MIKAEL FLORO DA SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'floromikael6@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MIKAEL FLORO DA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MIKAEL FLORO DA SILVA', 'floromikael6@gmail.com', 'student', 3283027, '3º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3283027, class_year = '3º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'floromikael6@gmail.com';
    END IF;

    -- Student: PEDRO GUILHERME PEREIRA MARTINS DA SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'guizim693@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"PEDRO GUILHERME PEREIRA MARTINS DA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'PEDRO GUILHERME PEREIRA MARTINS DA SILVA', 'guizim693@gmail.com', 'student', 3431317, '3º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3431317, class_year = '3º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'guizim693@gmail.com';
    END IF;

    -- Student: PEDRO RODRIGUES SANTANA NETO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'pedroneto890123@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"PEDRO RODRIGUES SANTANA NETO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'PEDRO RODRIGUES SANTANA NETO', 'pedroneto890123@gmail.com', 'student', 3408805, '3º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3408805, class_year = '3º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'pedroneto890123@gmail.com';
    END IF;

    -- Student: RAIMUNDO MESSI OLIVEIRA DE LUCENA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'raimundomessi29@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"RAIMUNDO MESSI OLIVEIRA DE LUCENA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'RAIMUNDO MESSI OLIVEIRA DE LUCENA', 'raimundomessi29@gmail.com', 'student', 4700513, '3º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4700513, class_year = '3º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'raimundomessi29@gmail.com';
    END IF;

    -- Student: RAYLLON BERNARDO FERREIRA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'rayllonbernard3@icloud.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"RAYLLON BERNARDO FERREIRA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'RAYLLON BERNARDO FERREIRA', 'rayllonbernard3@icloud.com', 'student', 2713774, '3º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 2713774, class_year = '3º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'rayllonbernard3@icloud.com';
    END IF;

    -- Student: RIQUELME VIDAL DOS SANTOS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'riquelmevidaldossantos@gmail.', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"RIQUELME VIDAL DOS SANTOS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'RIQUELME VIDAL DOS SANTOS', 'riquelmevidaldossantos@gmail.', 'student', 3547331, '3º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3547331, class_year = '3º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'riquelmevidaldossantos@gmail.';
    END IF;

    -- Student: TARCILA RAKELLY DE SOUZA GOMES
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'rakellytarcila5@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"TARCILA RAKELLY DE SOUZA GOMES"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'TARCILA RAKELLY DE SOUZA GOMES', 'rakellytarcila5@gmail.com', 'student', 3544961, '3º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3544961, class_year = '3º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'rakellytarcila5@gmail.com';
    END IF;

    -- Student: ZENEIDE LEONARDO BEZERRA FERNANDES
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'zeneideleonardo4@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ZENEIDE LEONARDO BEZERRA FERNANDES"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'ZENEIDE LEONARDO BEZERRA FERNANDES', 'zeneideleonardo4@gmail.com', 'student', 4939988, '3º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4939988, class_year = '3º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'zeneideleonardo4@gmail.com';
    END IF;

    -- Student: ANA LARA FERREIRA SOUSA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'llarasousa560@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ANA LARA FERREIRA SOUSA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'ANA LARA FERREIRA SOUSA', 'llarasousa560@gmail.com', 'student', 3431076, '3º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3431076, class_year = '3º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'llarasousa560@gmail.com';
    END IF;

    -- Student: ANA LARISSA FERREIRA SOUSA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'larissaferreirabs149@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ANA LARISSA FERREIRA SOUSA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'ANA LARISSA FERREIRA SOUSA', 'larissaferreirabs149@gmail.com', 'student', 3431081, '3º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3431081, class_year = '3º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'larissaferreirabs149@gmail.com';
    END IF;

    -- Student: ANALYCE LUNA BARROS SAMPAIO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'sampaioanalyce3@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ANALYCE LUNA BARROS SAMPAIO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'ANALYCE LUNA BARROS SAMPAIO', 'sampaioanalyce3@gmail.com', 'student', 3415620, '3º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3415620, class_year = '3º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'sampaioanalyce3@gmail.com';
    END IF;

    -- Student: ANDERSON ALVES DA SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'andersonalves11ks@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ANDERSON ALVES DA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'ANDERSON ALVES DA SILVA', 'andersonalves11ks@gmail.com', 'student', 3547659, '3º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3547659, class_year = '3º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'andersonalves11ks@gmail.com';
    END IF;

    -- Student: ANDREY WEINY ARAUJO SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'andreysilvaaraujo12345@gmail.', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ANDREY WEINY ARAUJO SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'ANDREY WEINY ARAUJO SILVA', 'andreysilvaaraujo12345@gmail.', 'student', 4766539, '3º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4766539, class_year = '3º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'andreysilvaaraujo12345@gmail.';
    END IF;

    -- Student: ANTONY RODRIGUES DE SOUSA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'antonnysousa812@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ANTONY RODRIGUES DE SOUSA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'ANTONY RODRIGUES DE SOUSA', 'antonnysousa812@gmail.com', 'student', 3555879, '3º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3555879, class_year = '3º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'antonnysousa812@gmail.com';
    END IF;

    -- Student: CICERO DIEGO BERNARDINO BENEDITO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'lucaslopo00a@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"CICERO DIEGO BERNARDINO BENEDITO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'CICERO DIEGO BERNARDINO BENEDITO', 'lucaslopo00a@gmail.com', 'student', 4766338, '3º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4766338, class_year = '3º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'lucaslopo00a@gmail.com';
    END IF;

    -- Student: CICERO IASLEY INACIO DE LIMA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'iciceroiasley@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"CICERO IASLEY INACIO DE LIMA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'CICERO IASLEY INACIO DE LIMA', 'iciceroiasley@gmail.com', 'student', 4902766, '3º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4902766, class_year = '3º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'iciceroiasley@gmail.com';
    END IF;

    -- Student: CICERO NALISSON FREITAS SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'freitasnalisson61@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"CICERO NALISSON FREITAS SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'CICERO NALISSON FREITAS SILVA', 'freitasnalisson61@gmail.com', 'student', 2276013, '3º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 2276013, class_year = '3º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'freitasnalisson61@gmail.com';
    END IF;

    -- Student: DEYVISON IGOR CAVALCANTE ALBERTO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'deyvisonigoralbertocavalcante@g', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"DEYVISON IGOR CAVALCANTE ALBERTO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'DEYVISON IGOR CAVALCANTE ALBERTO', 'deyvisonigoralbertocavalcante@g', 'student', 4430960, '3º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4430960, class_year = '3º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'deyvisonigoralbertocavalcante@g';
    END IF;

    -- Student: ERIK LOPES DE LIMA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'eriklimalopes19@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ERIK LOPES DE LIMA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'ERIK LOPES DE LIMA', 'eriklimalopes19@gmail.com', 'student', 3417494, '3º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3417494, class_year = '3º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'eriklimalopes19@gmail.com';
    END IF;

    -- Student: FRANCISCO GUILHERME LUNA BARBOSA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'franciscoguilhermea1@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"FRANCISCO GUILHERME LUNA BARBOSA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'FRANCISCO GUILHERME LUNA BARBOSA', 'franciscoguilhermea1@gmail.com', 'student', 3408316, '3º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3408316, class_year = '3º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'franciscoguilhermea1@gmail.com';
    END IF;

    -- Student: FRANCISCO IGOR ARAUJO DA SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'araujohigor577@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"FRANCISCO IGOR ARAUJO DA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'FRANCISCO IGOR ARAUJO DA SILVA', 'araujohigor577@gmail.com', 'student', 3783379, '3º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3783379, class_year = '3º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'araujohigor577@gmail.com';
    END IF;

    -- Student: GABRIELA LEAL DA COSTA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'gabrielabva2024@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"GABRIELA LEAL DA COSTA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'GABRIELA LEAL DA COSTA', 'gabrielabva2024@gmail.com', 'student', 3800891, '3º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3800891, class_year = '3º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'gabrielabva2024@gmail.com';
    END IF;

    -- Student: GRAZIELLE IMACULADA SOLINO FERNANDES
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'graziellesolino2@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"GRAZIELLE IMACULADA SOLINO FERNANDES"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'GRAZIELLE IMACULADA SOLINO FERNANDES', 'graziellesolino2@gmail.com', 'student', 4099323, '3º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4099323, class_year = '3º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'graziellesolino2@gmail.com';
    END IF;

    -- Student: ISAAC MARTINS ALVES PAZ
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'isaacmartins237@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ISAAC MARTINS ALVES PAZ"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'ISAAC MARTINS ALVES PAZ', 'isaacmartins237@gmail.com', 'student', 4023718, '3º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4023718, class_year = '3º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'isaacmartins237@gmail.com';
    END IF;

    -- Student: ISAAC RODRIGUES PEDROSA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'isaacwifi12408@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ISAAC RODRIGUES PEDROSA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'ISAAC RODRIGUES PEDROSA', 'isaacwifi12408@gmail.com', 'student', 3549805, '3º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3549805, class_year = '3º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'isaacwifi12408@gmail.com';
    END IF;

    -- Student: ISABELY ROCHA DA SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'joseliaaleriana93@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ISABELY ROCHA DA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'ISABELY ROCHA DA SILVA', 'joseliaaleriana93@gmail.com', 'student', 3606708, '3º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3606708, class_year = '3º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'joseliaaleriana93@gmail.com';
    END IF;

    -- Student: IURY GABRIEL DE SOUZA LIMA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'iurygabrielsousa04@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"IURY GABRIEL DE SOUZA LIMA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'IURY GABRIEL DE SOUZA LIMA', 'iurygabrielsousa04@gmail.com', 'student', 3412609, '3º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3412609, class_year = '3º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'iurygabrielsousa04@gmail.com';
    END IF;

    -- Student: JOAO KERLLON PINHEIRO DE SOUSA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'kerllonpinheiro34@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOAO KERLLON PINHEIRO DE SOUSA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'JOAO KERLLON PINHEIRO DE SOUSA', 'kerllonpinheiro34@gmail.com', 'student', 4551787, '3º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4551787, class_year = '3º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'kerllonpinheiro34@gmail.com';
    END IF;

    -- Student: JOAO LUCAS PEREIRA GONCALO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'joaolucaspgoncalo@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOAO LUCAS PEREIRA GONCALO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'JOAO LUCAS PEREIRA GONCALO', 'joaolucaspgoncalo@gmail.com', 'student', 3758506, '3º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3758506, class_year = '3º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'joaolucaspgoncalo@gmail.com';
    END IF;

    -- Student: JOAO MIGUEL LOPES VIDAL
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'lopesjoaomiguel15@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOAO MIGUEL LOPES VIDAL"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'JOAO MIGUEL LOPES VIDAL', 'lopesjoaomiguel15@gmail.com', 'student', 3800870, '3º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3800870, class_year = '3º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'lopesjoaomiguel15@gmail.com';
    END IF;

    -- Student: JOAQUIM WENDEL LOPES DE SOUSA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'wendell1099@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOAQUIM WENDEL LOPES DE SOUSA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'JOAQUIM WENDEL LOPES DE SOUSA', 'wendell1099@gmail.com', 'student', 2723895, '3º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 2723895, class_year = '3º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'wendell1099@gmail.com';
    END IF;

    -- Student: JOSE ALEXANDRE SOUZA SANTOS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'josealexandresouzasantos234@g', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOSE ALEXANDRE SOUZA SANTOS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'JOSE ALEXANDRE SOUZA SANTOS', 'josealexandresouzasantos234@g', 'student', 2677098, '3º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 2677098, class_year = '3º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'josealexandresouzasantos234@g';
    END IF;

    -- Student: JOSE ANDERSON MESSIAS DA SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'js3940956@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOSE ANDERSON MESSIAS DA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'JOSE ANDERSON MESSIAS DA SILVA', 'js3940956@gmail.com', 'student', 3407882, '3º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3407882, class_year = '3º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'js3940956@gmail.com';
    END IF;

    -- Student: JOSE HAROLDO DE AQUINO FILHO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'josefilhho08@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOSE HAROLDO DE AQUINO FILHO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'JOSE HAROLDO DE AQUINO FILHO', 'josefilhho08@gmail.com', 'student', 2423134, '3º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 2423134, class_year = '3º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'josefilhho08@gmail.com';
    END IF;

    -- Student: LEVY ALMEIDA DE SOUSA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'levyalmeidadesousa@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"LEVY ALMEIDA DE SOUSA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'LEVY ALMEIDA DE SOUSA', 'levyalmeidadesousa@gmail.com', 'student', 3542794, '3º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3542794, class_year = '3º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'levyalmeidadesousa@gmail.com';
    END IF;

    -- Student: LEVY FERREIRA SANTOS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'levy93749@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"LEVY FERREIRA SANTOS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'LEVY FERREIRA SANTOS', 'levy93749@gmail.com', 'student', 3800664, '3º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3800664, class_year = '3º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'levy93749@gmail.com';
    END IF;

    -- Student: LUAN DE SOUSA COSTA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'cluan0519@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"LUAN DE SOUSA COSTA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'LUAN DE SOUSA COSTA', 'cluan0519@gmail.com', 'student', 5260148, '3º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 5260148, class_year = '3º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'cluan0519@gmail.com';
    END IF;

    -- Student: LUAN KENNEDY RICARTE DOS SANTOS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'luankennedy2002@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"LUAN KENNEDY RICARTE DOS SANTOS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'LUAN KENNEDY RICARTE DOS SANTOS', 'luankennedy2002@gmail.com', 'student', 2245863, '3º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 2245863, class_year = '3º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'luankennedy2002@gmail.com';
    END IF;

    -- Student: LUCAS FALCONI RODRIGUES GOMES MEDEIROS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'lucas15falconi@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"LUCAS FALCONI RODRIGUES GOMES MEDEIROS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'LUCAS FALCONI RODRIGUES GOMES MEDEIROS', 'lucas15falconi@gmail.com', 'student', 4766487, '3º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4766487, class_year = '3º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'lucas15falconi@gmail.com';
    END IF;

    -- Student: MARCOS AURELIO LOPES BEZERRA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'marcosaureliolopesbezerra@gmail', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARCOS AURELIO LOPES BEZERRA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARCOS AURELIO LOPES BEZERRA', 'marcosaureliolopesbezerra@gmail', 'student', 3416974, '3º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3416974, class_year = '3º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'marcosaureliolopesbezerra@gmail';
    END IF;

    -- Student: MARIA ALANNA PEREIRA DO NASCIMENTO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'mariahalanna104@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA ALANNA PEREIRA DO NASCIMENTO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA ALANNA PEREIRA DO NASCIMENTO', 'mariahalanna104@gmail.com', 'student', 3422785, '3º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3422785, class_year = '3º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'mariahalanna104@gmail.com';
    END IF;

    -- Student: MARIA THAYANNY ROBERTO DA SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'robertothayanny14@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA THAYANNY ROBERTO DA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA THAYANNY ROBERTO DA SILVA', 'robertothayanny14@gmail.com', 'student', 3422074, '3º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3422074, class_year = '3º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'robertothayanny14@gmail.com';
    END IF;

    -- Student: MARIA YASMIM FELIX DOS SANTOS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'athylis000@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA YASMIM FELIX DOS SANTOS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA YASMIM FELIX DOS SANTOS', 'athylis000@gmail.com', 'student', 2700969, '3º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 2700969, class_year = '3º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'athylis000@gmail.com';
    END IF;

    -- Student: RICHARD CASSIO SANTOS VIDAL
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'richardcassio43@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"RICHARD CASSIO SANTOS VIDAL"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'RICHARD CASSIO SANTOS VIDAL', 'richardcassio43@gmail.com', 'student', 3545395, '3º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3545395, class_year = '3º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'richardcassio43@gmail.com';
    END IF;

    -- Student: RILARY RUANY MACEDO GOMES
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'gomesrilary9@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"RILARY RUANY MACEDO GOMES"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'RILARY RUANY MACEDO GOMES', 'gomesrilary9@gmail.com', 'student', 5260258, '3º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 5260258, class_year = '3º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'gomesrilary9@gmail.com';
    END IF;

    -- Student: RUAN SANTOS LIMA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'ruan11289@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"RUAN SANTOS LIMA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'RUAN SANTOS LIMA', 'ruan11289@gmail.com', 'student', 2718388, '3º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 2718388, class_year = '3º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'ruan11289@gmail.com';
    END IF;

    -- Student: THAINA LIMA DA SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'limat6391@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"THAINA LIMA DA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'THAINA LIMA DA SILVA', 'limat6391@gmail.com', 'student', 2704592, '3º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 2704592, class_year = '3º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'limat6391@gmail.com';
    END IF;

    -- Student: VINICIUS VIEIRA DE SOUSA ALVES
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'leoufczf90@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"VINICIUS VIEIRA DE SOUSA ALVES"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'VINICIUS VIEIRA DE SOUSA ALVES', 'leoufczf90@gmail.com', 'student', 4902931, '3º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4902931, class_year = '3º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'leoufczf90@gmail.com';
    END IF;

    -- Student: YAGO TAVEIRA DOS SANTOS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'yagotaveira8@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"YAGO TAVEIRA DOS SANTOS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'YAGO TAVEIRA DOS SANTOS', 'yagotaveira8@gmail.com', 'student', 3547360, '3º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3547360, class_year = '3º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'yagotaveira8@gmail.com';
    END IF;

    -- Student: AIANNY VITORIA GOMES DE SOUSA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aiannyg892@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"AIANNY VITORIA GOMES DE SOUSA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'AIANNY VITORIA GOMES DE SOUSA', 'aiannyg892@gmail.com', 'student', 3421053, '3º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3421053, class_year = '3º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'aiannyg892@gmail.com';
    END IF;

    -- Student: ANA LIVIA SILVA SOUZA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'analiviasilvasouza50@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ANA LIVIA SILVA SOUZA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'ANA LIVIA SILVA SOUZA', 'analiviasilvasouza50@gmail.com', 'student', 5117494, '3º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 5117494, class_year = '3º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'analiviasilvasouza50@gmail.com';
    END IF;

    -- Student: ANA VITORIA ROCHA VIDAL
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'anavitoria.rocha.7334@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ANA VITORIA ROCHA VIDAL"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'ANA VITORIA ROCHA VIDAL', 'anavitoria.rocha.7334@gmail.com', 'student', 2422492, '3º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 2422492, class_year = '3º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'anavitoria.rocha.7334@gmail.com';
    END IF;

    -- Student: ANNA RAYKA LIMA VIDAL
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'raykavidal8@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ANNA RAYKA LIMA VIDAL"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'ANNA RAYKA LIMA VIDAL', 'raykavidal8@gmail.com', 'student', 3800859, '3º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3800859, class_year = '3º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'raykavidal8@gmail.com';
    END IF;

    -- Student: APARECIDA MAYARA FEITOZA FERREIRA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'mayarabva2024@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"APARECIDA MAYARA FEITOZA FERREIRA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'APARECIDA MAYARA FEITOZA FERREIRA', 'mayarabva2024@gmail.com', 'student', 4822623, '3º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4822623, class_year = '3º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'mayarabva2024@gmail.com';
    END IF;

    -- Student: BRUNA YASMIN PEREIRA DA SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'pereirabrunayasmin@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"BRUNA YASMIN PEREIRA DA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'BRUNA YASMIN PEREIRA DA SILVA', 'pereirabrunayasmin@gmail.com', 'student', 4783627, '3º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4783627, class_year = '3º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'pereirabrunayasmin@gmail.com';
    END IF;

    -- Student: CAMILA SAMYLA RODRIGUES TEIXEIRA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'camilasamyla1507@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"CAMILA SAMYLA RODRIGUES TEIXEIRA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'CAMILA SAMYLA RODRIGUES TEIXEIRA', 'camilasamyla1507@gmail.com', 'student', 5260690, '3º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 5260690, class_year = '3º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'camilasamyla1507@gmail.com';
    END IF;

    -- Student: CARLOS ANDRE VIDAL DOS SANTOS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'vidalandrecarlos@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"CARLOS ANDRE VIDAL DOS SANTOS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'CARLOS ANDRE VIDAL DOS SANTOS', 'vidalandrecarlos@gmail.com', 'student', 3801145, '3º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3801145, class_year = '3º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'vidalandrecarlos@gmail.com';
    END IF;

    -- Student: CICERA YHASMIM SILVA LUCENA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', '994980yh@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"CICERA YHASMIM SILVA LUCENA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'CICERA YHASMIM SILVA LUCENA', '994980yh@gmail.com', 'student', 3431187, '3º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3431187, class_year = '3º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = '994980yh@gmail.com';
    END IF;

    -- Student: CLAUSS WENDELL TAVARES DE LUNA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'clausswendell123@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"CLAUSS WENDELL TAVARES DE LUNA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'CLAUSS WENDELL TAVARES DE LUNA', 'clausswendell123@gmail.com', 'student', 3415633, '3º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3415633, class_year = '3º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'clausswendell123@gmail.com';
    END IF;

    -- Student: CRISTIANO TAVARES SAMPAIO FILHO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'cristianofsampaio@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"CRISTIANO TAVARES SAMPAIO FILHO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'CRISTIANO TAVARES SAMPAIO FILHO', 'cristianofsampaio@gmail.com', 'student', 3415638, '3º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3415638, class_year = '3º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'cristianofsampaio@gmail.com';
    END IF;

    -- Student: DIOGO FERREIRA SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'dferreirasilva942@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"DIOGO FERREIRA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'DIOGO FERREIRA SILVA', 'dferreirasilva942@gmail.com', 'student', 3408662, '3º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3408662, class_year = '3º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'dferreirasilva942@gmail.com';
    END IF;

    -- Student: ELLEN AVILA DE SANTANA ALVES
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'ellenavila035@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ELLEN AVILA DE SANTANA ALVES"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'ELLEN AVILA DE SANTANA ALVES', 'ellenavila035@gmail.com', 'student', 2642662, '3º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 2642662, class_year = '3º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'ellenavila035@gmail.com';
    END IF;

    -- Student: EMANUELLY ALBERTO MIRANDA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'emanuellyalberto09@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"EMANUELLY ALBERTO MIRANDA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'EMANUELLY ALBERTO MIRANDA', 'emanuellyalberto09@gmail.com', 'student', 4430968, '3º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4430968, class_year = '3º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'emanuellyalberto09@gmail.com';
    END IF;

    -- Student: ERIK NASCIMENTO DOS SANTOS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'eriknascimentodossantos129@gm', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ERIK NASCIMENTO DOS SANTOS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'ERIK NASCIMENTO DOS SANTOS', 'eriknascimentodossantos129@gm', 'student', 3481504, '3º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3481504, class_year = '3º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'eriknascimentodossantos129@gm';
    END IF;

    -- Student: EZEQUIEL INACIO SANTOS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'ezequielinaci75@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"EZEQUIEL INACIO SANTOS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'EZEQUIEL INACIO SANTOS', 'ezequielinaci75@gmail.com', 'student', 3420817, '3º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3420817, class_year = '3º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'ezequielinaci75@gmail.com';
    END IF;

    -- Student: FATIMA ANIELLY ALVES PEREIRA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aniellypereira2008@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"FATIMA ANIELLY ALVES PEREIRA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'FATIMA ANIELLY ALVES PEREIRA', 'aniellypereira2008@gmail.com', 'student', 3417505, '3º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3417505, class_year = '3º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'aniellypereira2008@gmail.com';
    END IF;

    -- Student: FRANCISCO WESLLEY FERNANDES FERREIRA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'weslleyfernandes297@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"FRANCISCO WESLLEY FERNANDES FERREIRA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'FRANCISCO WESLLEY FERNANDES FERREIRA', 'weslleyfernandes297@gmail.com', 'student', 3417507, '3º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3417507, class_year = '3º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'weslleyfernandes297@gmail.com';
    END IF;

    -- Student: GEANE LEITE GALVAO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'geaneleite72108@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"GEANE LEITE GALVAO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'GEANE LEITE GALVAO', 'geaneleite72108@gmail.com', 'student', 3549491, '3º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3549491, class_year = '3º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'geaneleite72108@gmail.com';
    END IF;

    -- Student: ISADORA MARIA RAMALHO CRUZ
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'isadoramariaramalho@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ISADORA MARIA RAMALHO CRUZ"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'ISADORA MARIA RAMALHO CRUZ', 'isadoramariaramalho@gmail.com', 'student', 3411568, '3º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3411568, class_year = '3º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'isadoramariaramalho@gmail.com';
    END IF;

    -- Student: ISADORA RIBEIRO DOS SANTOS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'ribeirosisadora777@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ISADORA RIBEIRO DOS SANTOS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'ISADORA RIBEIRO DOS SANTOS', 'ribeirosisadora777@gmail.com', 'student', 2170635, '3º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 2170635, class_year = '3º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'ribeirosisadora777@gmail.com';
    END IF;

    -- Student: ISLA SARA BANDEIRA RODRIGUES
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', '5262002.sem.email@seduc.ce.', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ISLA SARA BANDEIRA RODRIGUES"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'ISLA SARA BANDEIRA RODRIGUES', '5262002.sem.email@seduc.ce.', 'student', 5262002, '3º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 5262002, class_year = '3º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = '5262002.sem.email@seduc.ce.';
    END IF;

    -- Student: ISLLA SARAH BARBOSA LUCENA ALVES
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'isllasarahbarbosalucenaalves@gm', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ISLLA SARAH BARBOSA LUCENA ALVES"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'ISLLA SARAH BARBOSA LUCENA ALVES', 'isllasarahbarbosalucenaalves@gm', 'student', 4624492, '3º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4624492, class_year = '3º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'isllasarahbarbosalucenaalves@gm';
    END IF;

    -- Student: JEYSILLE MARIA EVANGELISTA DOS SANTOS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'jeysille@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JEYSILLE MARIA EVANGELISTA DOS SANTOS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'JEYSILLE MARIA EVANGELISTA DOS SANTOS', 'jeysille@gmail.com', 'student', 3548043, '3º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3548043, class_year = '3º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'jeysille@gmail.com';
    END IF;

    -- Student: JOAO LUCAS FERREIRA SOUZA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'greenjlf6286@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOAO LUCAS FERREIRA SOUZA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'JOAO LUCAS FERREIRA SOUZA', 'greenjlf6286@gmail.com', 'student', 5260924, '3º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 5260924, class_year = '3º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'greenjlf6286@gmail.com';
    END IF;

    -- Student: JOSE ADSON DE ARAUJO LIMA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'adsonjr66@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOSE ADSON DE ARAUJO LIMA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'JOSE ADSON DE ARAUJO LIMA', 'adsonjr66@gmail.com', 'student', 3417514, '3º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3417514, class_year = '3º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'adsonjr66@gmail.com';
    END IF;

    -- Student: JOSE HENRIQUE LIMA MEDEIROS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'henriqueslk160608@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOSE HENRIQUE LIMA MEDEIROS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'JOSE HENRIQUE LIMA MEDEIROS', 'henriqueslk160608@gmail.com', 'student', 4766366, '3º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4766366, class_year = '3º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'henriqueslk160608@gmail.com';
    END IF;

    -- Student: KAIO RODRIGUES DOS SANTOS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'kaiocastrorodrigues3@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"KAIO RODRIGUES DOS SANTOS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'KAIO RODRIGUES DOS SANTOS', 'kaiocastrorodrigues3@gmail.com', 'student', 3550656, '3º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3550656, class_year = '3º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'kaiocastrorodrigues3@gmail.com';
    END IF;

    -- Student: KAUANE ARAUJO DE SOUSA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'kauanearaujobva2024@gmail.', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"KAUANE ARAUJO DE SOUSA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'KAUANE ARAUJO DE SOUSA', 'kauanearaujobva2024@gmail.', 'student', 5260549, '3º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 5260549, class_year = '3º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'kauanearaujobva2024@gmail.';
    END IF;

    -- Student: KELLY KAROLAINE PEREIRA DOS SANTOS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'kellykarolaine1914@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"KELLY KAROLAINE PEREIRA DOS SANTOS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'KELLY KAROLAINE PEREIRA DOS SANTOS', 'kellykarolaine1914@gmail.com', 'student', 2625163, '3º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 2625163, class_year = '3º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'kellykarolaine1914@gmail.com';
    END IF;

    -- Student: LIVIA INACIO SAMPAIO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'liviasampaio290@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"LIVIA INACIO SAMPAIO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'LIVIA INACIO SAMPAIO', 'liviasampaio290@gmail.com', 'student', 2078255, '3º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 2078255, class_year = '3º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'liviasampaio290@gmail.com';
    END IF;

    -- Student: MAISA SHEYLANE SANTOS MUNIZ
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'maisa.saintly@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MAISA SHEYLANE SANTOS MUNIZ"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MAISA SHEYLANE SANTOS MUNIZ', 'maisa.saintly@gmail.com', 'student', 3610423, '3º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3610423, class_year = '3º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'maisa.saintly@gmail.com';
    END IF;

    -- Student: MARCOS VINICIUS RODRIGUES EVANGELISTA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'rodriguesevangelistam3@gmail.', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARCOS VINICIUS RODRIGUES EVANGELISTA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARCOS VINICIUS RODRIGUES EVANGELISTA', 'rodriguesevangelistam3@gmail.', 'student', 4766394, '3º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4766394, class_year = '3º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'rodriguesevangelistam3@gmail.';
    END IF;

    -- Student: MARIA CLARA TAVARES NASCIMENTO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'mariaclaratavares667@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA CLARA TAVARES NASCIMENTO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA CLARA TAVARES NASCIMENTO', 'mariaclaratavares667@gmail.com', 'student', 4785807, '3º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4785807, class_year = '3º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'mariaclaratavares667@gmail.com';
    END IF;

    -- Student: MARIA EDUARDA DE SOUZA SANTOS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'eduarda.sants970109@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA EDUARDA DE SOUZA SANTOS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA EDUARDA DE SOUZA SANTOS', 'eduarda.sants970109@gmail.com', 'student', 3417526, '3º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3417526, class_year = '3º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'eduarda.sants970109@gmail.com';
    END IF;

    -- Student: MARIA ELOISA DA SILVA NASCIMENTO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'eloisanascimentobs2009@gmail.', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA ELOISA DA SILVA NASCIMENTO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA ELOISA DA SILVA NASCIMENTO', 'eloisanascimentobs2009@gmail.', 'student', 3412659, '3º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3412659, class_year = '3º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'eloisanascimentobs2009@gmail.';
    END IF;

    -- Student: MARIA IZADORA GOMES DE SOUSA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3957072@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA IZADORA GOMES DE SOUSA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA IZADORA GOMES DE SOUSA', 'aluno_3957072@biblioedu.com', 'student', 3957072, '3º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3957072, class_year = '3º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'aluno_3957072@biblioedu.com';
    END IF;

    -- Student: MARIA YASMIN SOUSA DA SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'mariayasmimsousasilva19@gmail.', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA YASMIN SOUSA DA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA YASMIN SOUSA DA SILVA', 'mariayasmimsousasilva19@gmail.', 'student', 2197578, '3º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 2197578, class_year = '3º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'mariayasmimsousasilva19@gmail.';
    END IF;

    -- Student: MAYANE LETICIA DE CALDAS FALCAO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'mayaneleticiacaldasfalcao@gmail.', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MAYANE LETICIA DE CALDAS FALCAO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MAYANE LETICIA DE CALDAS FALCAO', 'mayaneleticiacaldasfalcao@gmail.', 'student', 2926497, '3º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 2926497, class_year = '3º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'mayaneleticiacaldasfalcao@gmail.';
    END IF;

    -- Student: MAYSA ALVES DA SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'maysaalves2506@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MAYSA ALVES DA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MAYSA ALVES DA SILVA', 'maysaalves2506@gmail.com', 'student', 3556671, '3º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3556671, class_year = '3º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'maysaalves2506@gmail.com';
    END IF;

    -- Student: MONIQUE ELLEN GOMES OLIVEIRA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'moniqueelleng1603@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MONIQUE ELLEN GOMES OLIVEIRA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MONIQUE ELLEN GOMES OLIVEIRA', 'moniqueelleng1603@gmail.com', 'student', 3548175, '3º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3548175, class_year = '3º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'moniqueelleng1603@gmail.com';
    END IF;

    -- Student: MYLLENA MARIA SOLINO DE ANDRADE
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'andrademyllena129@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MYLLENA MARIA SOLINO DE ANDRADE"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MYLLENA MARIA SOLINO DE ANDRADE', 'andrademyllena129@gmail.com', 'student', 3973460, '3º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3973460, class_year = '3º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'andrademyllena129@gmail.com';
    END IF;

    -- Student: TAUANY SANTOS LEITE
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'tauanyleite61@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"TAUANY SANTOS LEITE"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'TAUANY SANTOS LEITE', 'tauanyleite61@gmail.com', 'student', 2282162, '3º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 2282162, class_year = '3º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'tauanyleite61@gmail.com';
    END IF;

    -- Student: ALVARO ALVES MAIA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'alvesmaiaalvaro@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ALVARO ALVES MAIA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'ALVARO ALVES MAIA', 'alvesmaiaalvaro@gmail.com', 'student', 5259428, '3º Ano', 'a52adcb4-2cf5-426c-a382-b75017315c78')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 5259428, class_year = '3º Ano', course_id = 'a52adcb4-2cf5-426c-a382-b75017315c78', role = 'student' WHERE email = 'alvesmaiaalvaro@gmail.com';
    END IF;

    -- Student: ANA BEATRIZ CAETANO SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'beatrizcaetanosilva46@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ANA BEATRIZ CAETANO SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'ANA BEATRIZ CAETANO SILVA', 'beatrizcaetanosilva46@gmail.com', 'student', 3417442, '3º Ano', 'a52adcb4-2cf5-426c-a382-b75017315c78')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3417442, class_year = '3º Ano', course_id = 'a52adcb4-2cf5-426c-a382-b75017315c78', role = 'student' WHERE email = 'beatrizcaetanosilva46@gmail.com';
    END IF;

    -- Student: ANA LUCIA SANTOS LEITE
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'as8213353@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ANA LUCIA SANTOS LEITE"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'ANA LUCIA SANTOS LEITE', 'as8213353@gmail.com', 'student', 3781452, '3º Ano', 'a52adcb4-2cf5-426c-a382-b75017315c78')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3781452, class_year = '3º Ano', course_id = 'a52adcb4-2cf5-426c-a382-b75017315c78', role = 'student' WHERE email = 'as8213353@gmail.com';
    END IF;

    -- Student: ANA LUIZA ABREU DE SOUSA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'esteticaanaluiza9@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ANA LUIZA ABREU DE SOUSA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'ANA LUIZA ABREU DE SOUSA', 'esteticaanaluiza9@gmail.com', 'student', 3417454, '3º Ano', 'a52adcb4-2cf5-426c-a382-b75017315c78')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3417454, class_year = '3º Ano', course_id = 'a52adcb4-2cf5-426c-a382-b75017315c78', role = 'student' WHERE email = 'esteticaanaluiza9@gmail.com';
    END IF;

    -- Student: CAMILA FERREIRA MAIA ALVES
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'camilamaiaalves2008@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"CAMILA FERREIRA MAIA ALVES"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'CAMILA FERREIRA MAIA ALVES', 'camilamaiaalves2008@gmail.com', 'student', 4605004, '3º Ano', 'a52adcb4-2cf5-426c-a382-b75017315c78')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4605004, class_year = '3º Ano', course_id = 'a52adcb4-2cf5-426c-a382-b75017315c78', role = 'student' WHERE email = 'camilamaiaalves2008@gmail.com';
    END IF;

    -- Student: CARLA YARHANA MARTINS SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'carlayourana@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"CARLA YARHANA MARTINS SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'CARLA YARHANA MARTINS SILVA', 'carlayourana@gmail.com', 'student', 3555885, '3º Ano', 'a52adcb4-2cf5-426c-a382-b75017315c78')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3555885, class_year = '3º Ano', course_id = 'a52adcb4-2cf5-426c-a382-b75017315c78', role = 'student' WHERE email = 'carlayourana@gmail.com';
    END IF;

    -- Student: EDILASIO LUCIANO IZIDIO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'lucianoedilasio33@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"EDILASIO LUCIANO IZIDIO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'EDILASIO LUCIANO IZIDIO', 'lucianoedilasio33@gmail.com', 'student', 3548031, '3º Ano', 'a52adcb4-2cf5-426c-a382-b75017315c78')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3548031, class_year = '3º Ano', course_id = 'a52adcb4-2cf5-426c-a382-b75017315c78', role = 'student' WHERE email = 'lucianoedilasio33@gmail.com';
    END IF;

    -- Student: EMANUELLE SOUZA DA SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'emanuellesouzadasilva4@gmail.', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"EMANUELLE SOUZA DA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'EMANUELLE SOUZA DA SILVA', 'emanuellesouzadasilva4@gmail.', 'student', 4249895, '3º Ano', 'a52adcb4-2cf5-426c-a382-b75017315c78')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4249895, class_year = '3º Ano', course_id = 'a52adcb4-2cf5-426c-a382-b75017315c78', role = 'student' WHERE email = 'emanuellesouzadasilva4@gmail.';
    END IF;

    -- Student: FRANCINETE FLORENCIO LOPES
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'lpsfrancinete@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"FRANCINETE FLORENCIO LOPES"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'FRANCINETE FLORENCIO LOPES', 'lpsfrancinete@gmail.com', 'student', 3549788, '3º Ano', 'a52adcb4-2cf5-426c-a382-b75017315c78')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3549788, class_year = '3º Ano', course_id = 'a52adcb4-2cf5-426c-a382-b75017315c78', role = 'student' WHERE email = 'lpsfrancinete@gmail.com';
    END IF;

    -- Student: GISELLE FERREIRA FILGUEIRA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'ferreiragiselle382@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"GISELLE FERREIRA FILGUEIRA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'GISELLE FERREIRA FILGUEIRA', 'ferreiragiselle382@gmail.com', 'student', 3413750, '3º Ano', 'a52adcb4-2cf5-426c-a382-b75017315c78')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3413750, class_year = '3º Ano', course_id = 'a52adcb4-2cf5-426c-a382-b75017315c78', role = 'student' WHERE email = 'ferreiragiselle382@gmail.com';
    END IF;

    -- Student: HELLOISA REGINA DE SOUSA OLIVEIRA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'helloisaregina203@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"HELLOISA REGINA DE SOUSA OLIVEIRA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'HELLOISA REGINA DE SOUSA OLIVEIRA', 'helloisaregina203@gmail.com', 'student', 1694314, '3º Ano', 'a52adcb4-2cf5-426c-a382-b75017315c78')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 1694314, class_year = '3º Ano', course_id = 'a52adcb4-2cf5-426c-a382-b75017315c78', role = 'student' WHERE email = 'helloisaregina203@gmail.com';
    END IF;

    -- Student: IVYNA PEREIRA MARIANO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'ivynamariano7@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"IVYNA PEREIRA MARIANO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'IVYNA PEREIRA MARIANO', 'ivynamariano7@gmail.com', 'student', 4700230, '3º Ano', 'a52adcb4-2cf5-426c-a382-b75017315c78')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4700230, class_year = '3º Ano', course_id = 'a52adcb4-2cf5-426c-a382-b75017315c78', role = 'student' WHERE email = 'ivynamariano7@gmail.com';
    END IF;

    -- Student: JAIANE SIQUEIRA FRUTUOSO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'jayannesiqueira1@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JAIANE SIQUEIRA FRUTUOSO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'JAIANE SIQUEIRA FRUTUOSO', 'jayannesiqueira1@gmail.com', 'student', 2091304, '3º Ano', 'a52adcb4-2cf5-426c-a382-b75017315c78')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 2091304, class_year = '3º Ano', course_id = 'a52adcb4-2cf5-426c-a382-b75017315c78', role = 'student' WHERE email = 'jayannesiqueira1@gmail.com';
    END IF;

    -- Student: KIARA ANTONIA SIQUEIRA BANDEIRA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', '2470951.sem.email@seduc.ce.', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"KIARA ANTONIA SIQUEIRA BANDEIRA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'KIARA ANTONIA SIQUEIRA BANDEIRA', '2470951.sem.email@seduc.ce.', 'student', 2470951, '3º Ano', 'a52adcb4-2cf5-426c-a382-b75017315c78')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 2470951, class_year = '3º Ano', course_id = 'a52adcb4-2cf5-426c-a382-b75017315c78', role = 'student' WHERE email = '2470951.sem.email@seduc.ce.';
    END IF;

    -- Student: LARA EVILY DOS SANTOS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'laraevily797@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"LARA EVILY DOS SANTOS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'LARA EVILY DOS SANTOS', 'laraevily797@gmail.com', 'student', 3545287, '3º Ano', 'a52adcb4-2cf5-426c-a382-b75017315c78')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3545287, class_year = '3º Ano', course_id = 'a52adcb4-2cf5-426c-a382-b75017315c78', role = 'student' WHERE email = 'laraevily797@gmail.com';
    END IF;

    -- Student: LAYANE ARRUDA DE OLIVEIRA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'layanearrudaoliveira@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"LAYANE ARRUDA DE OLIVEIRA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'LAYANE ARRUDA DE OLIVEIRA', 'layanearrudaoliveira@gmail.com', 'student', 3283602, '3º Ano', 'a52adcb4-2cf5-426c-a382-b75017315c78')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3283602, class_year = '3º Ano', course_id = 'a52adcb4-2cf5-426c-a382-b75017315c78', role = 'student' WHERE email = 'layanearrudaoliveira@gmail.com';
    END IF;

    -- Student: LAYLA MORATO SALVIANO CRUZ
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'laylasalviano123@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"LAYLA MORATO SALVIANO CRUZ"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'LAYLA MORATO SALVIANO CRUZ', 'laylasalviano123@gmail.com', 'student', 5118325, '3º Ano', 'a52adcb4-2cf5-426c-a382-b75017315c78')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 5118325, class_year = '3º Ano', course_id = 'a52adcb4-2cf5-426c-a382-b75017315c78', role = 'student' WHERE email = 'laylasalviano123@gmail.com';
    END IF;

    -- Student: LAYSA MARIA MACHADO NASCIMENTO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'laysabva2024@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"LAYSA MARIA MACHADO NASCIMENTO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'LAYSA MARIA MACHADO NASCIMENTO', 'laysabva2024@gmail.com', 'student', 4785780, '3º Ano', 'a52adcb4-2cf5-426c-a382-b75017315c78')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4785780, class_year = '3º Ano', course_id = 'a52adcb4-2cf5-426c-a382-b75017315c78', role = 'student' WHERE email = 'laysabva2024@gmail.com';
    END IF;

    -- Student: LUIZA MIKELLY FERNANDES MOURA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'mikellyfernandes11@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"LUIZA MIKELLY FERNANDES MOURA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'LUIZA MIKELLY FERNANDES MOURA', 'mikellyfernandes11@gmail.com', 'student', 3542819, '3º Ano', 'a52adcb4-2cf5-426c-a382-b75017315c78')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3542819, class_year = '3º Ano', course_id = 'a52adcb4-2cf5-426c-a382-b75017315c78', role = 'student' WHERE email = 'mikellyfernandes11@gmail.com';
    END IF;

    -- Student: MARIA CLARA SILVA ALVES
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'mariaclarabva2024@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA CLARA SILVA ALVES"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA CLARA SILVA ALVES', 'mariaclarabva2024@gmail.com', 'student', 2984929, '3º Ano', 'a52adcb4-2cf5-426c-a382-b75017315c78')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 2984929, class_year = '3º Ano', course_id = 'a52adcb4-2cf5-426c-a382-b75017315c78', role = 'student' WHERE email = 'mariaclarabva2024@gmail.com';
    END IF;

    -- Student: MARIA CLARA SILVA ARAUJO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'mariaclarasilvaarujo28@gmail.', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA CLARA SILVA ARAUJO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA CLARA SILVA ARAUJO', 'mariaclarasilvaarujo28@gmail.', 'student', 3408355, '3º Ano', 'a52adcb4-2cf5-426c-a382-b75017315c78')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3408355, class_year = '3º Ano', course_id = 'a52adcb4-2cf5-426c-a382-b75017315c78', role = 'student' WHERE email = 'mariaclarasilvaarujo28@gmail.';
    END IF;

    -- Student: MARIA CLARISSE ALVES
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'clarissealves431@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA CLARISSE ALVES"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA CLARISSE ALVES', 'clarissealves431@gmail.com', 'student', 3555943, '3º Ano', 'a52adcb4-2cf5-426c-a382-b75017315c78')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3555943, class_year = '3º Ano', course_id = 'a52adcb4-2cf5-426c-a382-b75017315c78', role = 'student' WHERE email = 'clarissealves431@gmail.com';
    END IF;

    -- Student: MARIA EDUARDA PEREIRA DE CARVALHO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'mariaeduardaacarvalho09@gmail.', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA EDUARDA PEREIRA DE CARVALHO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA EDUARDA PEREIRA DE CARVALHO', 'mariaeduardaacarvalho09@gmail.', 'student', 3548082, '3º Ano', 'a52adcb4-2cf5-426c-a382-b75017315c78')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3548082, class_year = '3º Ano', course_id = 'a52adcb4-2cf5-426c-a382-b75017315c78', role = 'student' WHERE email = 'mariaeduardaacarvalho09@gmail.';
    END IF;

    -- Student: MARIA ESTEFANY BATISTA DA SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'estefanybva2024@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA ESTEFANY BATISTA DA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA ESTEFANY BATISTA DA SILVA', 'estefanybva2024@gmail.com', 'student', 3800888, '3º Ano', 'a52adcb4-2cf5-426c-a382-b75017315c78')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3800888, class_year = '3º Ano', course_id = 'a52adcb4-2cf5-426c-a382-b75017315c78', role = 'student' WHERE email = 'estefanybva2024@gmail.com';
    END IF;

    -- Student: MARIA FERNANDA MONTEIRO MARIANO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_4823850@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA FERNANDA MONTEIRO MARIANO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA FERNANDA MONTEIRO MARIANO', 'aluno_4823850@biblioedu.com', 'student', 4823850, '3º Ano', 'a52adcb4-2cf5-426c-a382-b75017315c78')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4823850, class_year = '3º Ano', course_id = 'a52adcb4-2cf5-426c-a382-b75017315c78', role = 'student' WHERE email = 'aluno_4823850@biblioedu.com';
    END IF;

    -- Student: MARIA GABRIELA RODRIGUES DA SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'gabyzinha072005@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA GABRIELA RODRIGUES DA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA GABRIELA RODRIGUES DA SILVA', 'gabyzinha072005@gmail.com', 'student', 3417527, '3º Ano', 'a52adcb4-2cf5-426c-a382-b75017315c78')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3417527, class_year = '3º Ano', course_id = 'a52adcb4-2cf5-426c-a382-b75017315c78', role = 'student' WHERE email = 'gabyzinha072005@gmail.com';
    END IF;

    -- Student: MARIA HELOISA COSTA VIEIRA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'cmariaheloisa425@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA HELOISA COSTA VIEIRA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA HELOISA COSTA VIEIRA', 'cmariaheloisa425@gmail.com', 'student', 3800678, '3º Ano', 'a52adcb4-2cf5-426c-a382-b75017315c78')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3800678, class_year = '3º Ano', course_id = 'a52adcb4-2cf5-426c-a382-b75017315c78', role = 'student' WHERE email = 'cmariaheloisa425@gmail.com';
    END IF;

    -- Student: MARIA HELOISE MOURA DA SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'mariaheloise1415@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA HELOISE MOURA DA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA HELOISE MOURA DA SILVA', 'mariaheloise1415@gmail.com', 'student', 3410384, '3º Ano', 'a52adcb4-2cf5-426c-a382-b75017315c78')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3410384, class_year = '3º Ano', course_id = 'a52adcb4-2cf5-426c-a382-b75017315c78', role = 'student' WHERE email = 'mariaheloise1415@gmail.com';
    END IF;

    -- Student: MARIA HELOYSE OLIVEIRA SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'oliveiraheloyse52@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA HELOYSE OLIVEIRA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA HELOYSE OLIVEIRA SILVA', 'oliveiraheloyse52@gmail.com', 'student', 3421192, '3º Ano', 'a52adcb4-2cf5-426c-a382-b75017315c78')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3421192, class_year = '3º Ano', course_id = 'a52adcb4-2cf5-426c-a382-b75017315c78', role = 'student' WHERE email = 'oliveiraheloyse52@gmail.com';
    END IF;

    -- Student: MARIA JAMILLY MAGALHAES DE FRANCA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'jamillym1251@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA JAMILLY MAGALHAES DE FRANCA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA JAMILLY MAGALHAES DE FRANCA', 'jamillym1251@gmail.com', 'student', 3581701, '3º Ano', 'a52adcb4-2cf5-426c-a382-b75017315c78')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3581701, class_year = '3º Ano', course_id = 'a52adcb4-2cf5-426c-a382-b75017315c78', role = 'student' WHERE email = 'jamillym1251@gmail.com';
    END IF;

    -- Student: MARIA JULIA DA SILVA SANTOS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'silvajujjhonatas@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA JULIA DA SILVA SANTOS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA JULIA DA SILVA SANTOS', 'silvajujjhonatas@gmail.com', 'student', 3421189, '3º Ano', 'a52adcb4-2cf5-426c-a382-b75017315c78')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3421189, class_year = '3º Ano', course_id = 'a52adcb4-2cf5-426c-a382-b75017315c78', role = 'student' WHERE email = 'silvajujjhonatas@gmail.com';
    END IF;

    -- Student: MARIA LOYSE DA SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'marialoysedasilva@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA LOYSE DA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA LOYSE DA SILVA', 'marialoysedasilva@gmail.com', 'student', 3556664, '3º Ano', 'a52adcb4-2cf5-426c-a382-b75017315c78')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3556664, class_year = '3º Ano', course_id = 'a52adcb4-2cf5-426c-a382-b75017315c78', role = 'student' WHERE email = 'marialoysedasilva@gmail.com';
    END IF;

    -- Student: MARIA PRISCILA LOPES FERREIRA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'priscilalopes042@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA PRISCILA LOPES FERREIRA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA PRISCILA LOPES FERREIRA', 'priscilalopes042@gmail.com', 'student', 3550715, '3º Ano', 'a52adcb4-2cf5-426c-a382-b75017315c78')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3550715, class_year = '3º Ano', course_id = 'a52adcb4-2cf5-426c-a382-b75017315c78', role = 'student' WHERE email = 'priscilalopes042@gmail.com';
    END IF;

    -- Student: MARIA RICAELI FERREIRA DOS SANTOS
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'ricaeliferreira@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA RICAELI FERREIRA DOS SANTOS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA RICAELI FERREIRA DOS SANTOS', 'ricaeliferreira@gmail.com', 'student', 4823888, '3º Ano', 'a52adcb4-2cf5-426c-a382-b75017315c78')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4823888, class_year = '3º Ano', course_id = 'a52adcb4-2cf5-426c-a382-b75017315c78', role = 'student' WHERE email = 'ricaeliferreira@gmail.com';
    END IF;

    -- Student: MARIA SOFYA DA SILVA XAVIER
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', '3561752.sem.email@seduc.ce.', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA SOFYA DA SILVA XAVIER"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA SOFYA DA SILVA XAVIER', '3561752.sem.email@seduc.ce.', 'student', 3561752, '3º Ano', 'a52adcb4-2cf5-426c-a382-b75017315c78')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3561752, class_year = '3º Ano', course_id = 'a52adcb4-2cf5-426c-a382-b75017315c78', role = 'student' WHERE email = '3561752.sem.email@seduc.ce.';
    END IF;

    -- Student: MARIA TAINARA RODRIGUES LINO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'tainararodrigueslino@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA TAINARA RODRIGUES LINO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA TAINARA RODRIGUES LINO', 'tainararodrigueslino@gmail.com', 'student', 3412628, '3º Ano', 'a52adcb4-2cf5-426c-a382-b75017315c78')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3412628, class_year = '3º Ano', course_id = 'a52adcb4-2cf5-426c-a382-b75017315c78', role = 'student' WHERE email = 'tainararodrigueslino@gmail.com';
    END IF;

    -- Student: MARIA VITORIA FURTADO DA SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'furtado09874@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA VITORIA FURTADO DA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA VITORIA FURTADO DA SILVA', 'furtado09874@gmail.com', 'student', 4553501, '3º Ano', 'a52adcb4-2cf5-426c-a382-b75017315c78')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 4553501, class_year = '3º Ano', course_id = 'a52adcb4-2cf5-426c-a382-b75017315c78', role = 'student' WHERE email = 'furtado09874@gmail.com';
    END IF;

    -- Student: MICHELLY ALEXANDRE ALVES
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'andrademichelly507@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MICHELLY ALEXANDRE ALVES"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MICHELLY ALEXANDRE ALVES', 'andrademichelly507@gmail.com', 'student', 3548162, '3º Ano', 'a52adcb4-2cf5-426c-a382-b75017315c78')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3548162, class_year = '3º Ano', course_id = 'a52adcb4-2cf5-426c-a382-b75017315c78', role = 'student' WHERE email = 'andrademichelly507@gmail.com';
    END IF;

    -- Student: RAIANE VICENTINA GOMES SAMPAIO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'rayanegomessampaio077@gmail.', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"RAIANE VICENTINA GOMES SAMPAIO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'RAIANE VICENTINA GOMES SAMPAIO', 'rayanegomessampaio077@gmail.', 'student', 5019368, '3º Ano', 'a52adcb4-2cf5-426c-a382-b75017315c78')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 5019368, class_year = '3º Ano', course_id = 'a52adcb4-2cf5-426c-a382-b75017315c78', role = 'student' WHERE email = 'rayanegomessampaio077@gmail.';
    END IF;

    -- Student: THAIS DIONISIO DE LIMA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'tl412884@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"THAIS DIONISIO DE LIMA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'THAIS DIONISIO DE LIMA', 'tl412884@gmail.com', 'student', 3543212, '3º Ano', 'a52adcb4-2cf5-426c-a382-b75017315c78')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3543212, class_year = '3º Ano', course_id = 'a52adcb4-2cf5-426c-a382-b75017315c78', role = 'student' WHERE email = 'tl412884@gmail.com';
    END IF;

    -- Student: VISLENE DE SOUSA SILVA
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'vislene.silva1@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"VISLENE DE SOUSA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'VISLENE DE SOUSA SILVA', 'vislene.silva1@gmail.com', 'student', 3411576, '3º Ano', 'a52adcb4-2cf5-426c-a382-b75017315c78')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3411576, class_year = '3º Ano', course_id = 'a52adcb4-2cf5-426c-a382-b75017315c78', role = 'student' WHERE email = 'vislene.silva1@gmail.com';
    END IF;

    -- Student: YASMIM PEREIRA CARDOSO
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'yasmimpereiracardoso014@gmail', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"YASMIM PEREIRA CARDOSO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'YASMIM PEREIRA CARDOSO', 'yasmimpereiracardoso014@gmail', 'student', 3404021, '3º Ano', 'a52adcb4-2cf5-426c-a382-b75017315c78')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        -- Update existing user profile if email matches
        UPDATE public.profiles SET enrollment_number = 3404021, class_year = '3º Ano', course_id = 'a52adcb4-2cf5-426c-a382-b75017315c78', role = 'student' WHERE email = 'yasmimpereiracardoso014@gmail';
    END IF;

END $$;