DO $$
DECLARE
    new_user_id UUID;
BEGIN
    -- ADINAELHYA VITORIA OLIVEIRA DA SILVA
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_5494900@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ADINAELHYA VITORIA OLIVEIRA DA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'ADINAELHYA VITORIA OLIVEIRA DA SILVA', 'aluno_5494900@biblioedu.com', 'student', 5494900, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 5494900, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'aluno_5494900@biblioedu.com';
    END IF;

    -- ANA BEATRIZ DOS SANTOS ROCHA
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'anabeatrizsantos9278292@gmail.', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ANA BEATRIZ DOS SANTOS ROCHA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'ANA BEATRIZ DOS SANTOS ROCHA', 'anabeatrizsantos9278292@gmail.', 'student', 4011113, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4011113, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'anabeatrizsantos9278292@gmail.';
    END IF;

    -- ANA MARIA RODRIGUES LEMOS
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'xitadadoxit@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ANA MARIA RODRIGUES LEMOS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'ANA MARIA RODRIGUES LEMOS', 'xitadadoxit@gmail.com', 'student', 3404759, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3404759, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'xitadadoxit@gmail.com';
    END IF;

    -- CASSIA MARIA PEREIRA CARDOSO
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'cm1700366@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"CASSIA MARIA PEREIRA CARDOSO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'CASSIA MARIA PEREIRA CARDOSO', 'cm1700366@gmail.com', 'student', 3410867, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3410867, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'cm1700366@gmail.com';
    END IF;

    -- CELINA MARIA DA SILVA
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'celinamariadasilva77@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"CELINA MARIA DA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'CELINA MARIA DA SILVA', 'celinamariadasilva77@gmail.com', 'student', 3610992, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3610992, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'celinamariadasilva77@gmail.com';
    END IF;

    -- CIBELE MARIA DA SILVA
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'cibeleninha2010@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"CIBELE MARIA DA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'CIBELE MARIA DA SILVA', 'cibeleninha2010@gmail.com', 'student', 3610998, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3610998, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'cibeleninha2010@gmail.com';
    END IF;

    -- CICERO REINAN BARBOSA DA SILVA
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'ciceroreinan09@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"CICERO REINAN BARBOSA DA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'CICERO REINAN BARBOSA DA SILVA', 'ciceroreinan09@gmail.com', 'student', 3796051, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3796051, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'ciceroreinan09@gmail.com';
    END IF;

    -- DIEGO RENAN PATRICIO DE SOUSA
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'diogorenanax@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"DIEGO RENAN PATRICIO DE SOUSA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'DIEGO RENAN PATRICIO DE SOUSA', 'diogorenanax@gmail.com', 'student', 3416275, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3416275, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'diogorenanax@gmail.com';
    END IF;

    -- EDUARDO LEOBINO NOGUEIRA VIDAL
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'eduardovidal8153@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"EDUARDO LEOBINO NOGUEIRA VIDAL"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'EDUARDO LEOBINO NOGUEIRA VIDAL', 'eduardovidal8153@gmail.com', 'student', 2689291, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 2689291, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'eduardovidal8153@gmail.com';
    END IF;

    -- EVELLEM VITORIA ALBERTO LIMA
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'vitoriaevellem339@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"EVELLEM VITORIA ALBERTO LIMA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'EVELLEM VITORIA ALBERTO LIMA', 'vitoriaevellem339@gmail.com', 'student', 4633653, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4633653, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'vitoriaevellem339@gmail.com';
    END IF;

    -- FABIOLA VITORIA SECUNDO FILGUEIRA
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'fabyollavitoria10@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"FABIOLA VITORIA SECUNDO FILGUEIRA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'FABIOLA VITORIA SECUNDO FILGUEIRA', 'fabyollavitoria10@gmail.com', 'student', 4403204, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4403204, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'fabyollavitoria10@gmail.com';
    END IF;

    -- FRANCISCO IARLLY DA CONCEICAO
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'iarlleyznx56@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"FRANCISCO IARLLY DA CONCEICAO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'FRANCISCO IARLLY DA CONCEICAO', 'iarlleyznx56@gmail.com', 'student', 3624147, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3624147, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'iarlleyznx56@gmail.com';
    END IF;

    -- GLICIA AQUINO ALVES
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'jacylda.alves.axc@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"GLICIA AQUINO ALVES"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'GLICIA AQUINO ALVES', 'jacylda.alves.axc@gmail.com', 'student', 3205982, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3205982, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'jacylda.alves.axc@gmail.com';
    END IF;

    -- IKARO HORACIO SANTOS LIMA
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'ikarohoracio7@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"IKARO HORACIO SANTOS LIMA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'IKARO HORACIO SANTOS LIMA', 'ikarohoracio7@gmail.com', 'student', 4011180, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4011180, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'ikarohoracio7@gmail.com';
    END IF;

    -- ISABELLA LEITE DE MEDEIROS
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'isabellaxd.medeiros5@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ISABELLA LEITE DE MEDEIROS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'ISABELLA LEITE DE MEDEIROS', 'isabellaxd.medeiros5@gmail.com', 'student', 4243959, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4243959, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'isabellaxd.medeiros5@gmail.com';
    END IF;

    -- JENYFFER MARIA DE BRITO LIMA
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'jenyffermaria333@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JENYFFER MARIA DE BRITO LIMA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'JENYFFER MARIA DE BRITO LIMA', 'jenyffermaria333@gmail.com', 'student', 3406362, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3406362, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'jenyffermaria333@gmail.com';
    END IF;

    -- JOAO CHRISLEY ALVES QUARESMA
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'joaochrisley@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOAO CHRISLEY ALVES QUARESMA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'JOAO CHRISLEY ALVES QUARESMA', 'joaochrisley@gmail.com', 'student', 3973895, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3973895, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'joaochrisley@gmail.com';
    END IF;

    -- JONAS EMANOEL LOPES DA SILVA
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'j73747704@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JONAS EMANOEL LOPES DA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'JONAS EMANOEL LOPES DA SILVA', 'j73747704@gmail.com', 'student', 4011440, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4011440, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'j73747704@gmail.com';
    END IF;

    -- JOSE MESSIAS RODRIGUES DA SILVA
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'rodriguesmessias380@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOSE MESSIAS RODRIGUES DA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'JOSE MESSIAS RODRIGUES DA SILVA', 'rodriguesmessias380@gmail.com', 'student', 4924898, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4924898, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'rodriguesmessias380@gmail.com';
    END IF;

    -- JOSE WERBERT MANGUEIRA DOS SANTOS
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'josewerbertmangueiradossantos@', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOSE WERBERT MANGUEIRA DOS SANTOS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'JOSE WERBERT MANGUEIRA DOS SANTOS', 'josewerbertmangueiradossantos@', 'student', 3416145, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3416145, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'josewerbertmangueiradossantos@';
    END IF;

    -- JULIO CESAR ALMEIDA FURTADO
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'juliocesardo440@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JULIO CESAR ALMEIDA FURTADO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'JULIO CESAR ALMEIDA FURTADO', 'juliocesardo440@gmail.com', 'student', 4011225, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4011225, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'juliocesardo440@gmail.com';
    END IF;

    -- JULIO CEZAR FRANCA DA SILVA
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3426687@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JULIO CEZAR FRANCA DA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'JULIO CEZAR FRANCA DA SILVA', 'aluno_3426687@biblioedu.com', 'student', 3426687, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3426687, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'aluno_3426687@biblioedu.com';
    END IF;

    -- KAIQUE ARAUJO SILVA
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'kaiquearaujogomes2010@gmail.', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"KAIQUE ARAUJO SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'KAIQUE ARAUJO SILVA', 'kaiquearaujogomes2010@gmail.', 'student', 3428991, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3428991, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'kaiquearaujogomes2010@gmail.';
    END IF;

    -- KEISON ARAUJO SILVA
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'keisonaraujo412@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"KEISON ARAUJO SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'KEISON ARAUJO SILVA', 'keisonaraujo412@gmail.com', 'student', 3426992, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3426992, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'keisonaraujo412@gmail.com';
    END IF;

    -- LAIS KEMELLY RICARTE FELIX
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'kemellyricarte@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"LAIS KEMELLY RICARTE FELIX"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'LAIS KEMELLY RICARTE FELIX', 'kemellyricarte@gmail.com', 'student', 3415478, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3415478, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'kemellyricarte@gmail.com';
    END IF;

    -- LARA THALITA SOUSA RIBEIRO
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'larathalytasousa@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"LARA THALITA SOUSA RIBEIRO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'LARA THALITA SOUSA RIBEIRO', 'larathalytasousa@gmail.com', 'student', 3416146, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3416146, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'larathalytasousa@gmail.com';
    END IF;

    -- LETICIA XAVIER DOS SANTOS
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'leticiaxavier0811@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"LETICIA XAVIER DOS SANTOS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'LETICIA XAVIER DOS SANTOS', 'leticiaxavier0811@gmail.com', 'student', 3623562, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3623562, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'leticiaxavier0811@gmail.com';
    END IF;

    -- LEVI BARBOSA DOS SANTOS
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'levibarbosa7@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"LEVI BARBOSA DOS SANTOS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'LEVI BARBOSA DOS SANTOS', 'levibarbosa7@gmail.com', 'student', 3417096, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3417096, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'levibarbosa7@gmail.com';
    END IF;

    -- LUAN RODRIGUES SANTOS
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'rluancll7@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"LUAN RODRIGUES SANTOS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'LUAN RODRIGUES SANTOS', 'rluancll7@gmail.com', 'student', 3987845, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3987845, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'rluancll7@gmail.com';
    END IF;

    -- MARIA CECILIA LIMA ANDRADE
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'cecilialimaa33@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA CECILIA LIMA ANDRADE"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA CECILIA LIMA ANDRADE', 'cecilialimaa33@gmail.com', 'student', 3989694, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3989694, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'cecilialimaa33@gmail.com';
    END IF;

    -- MARIA DE JESUS DOS SANTOS DE MESQUITA
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'marysantos1234bs@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA DE JESUS DOS SANTOS DE MESQUITA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA DE JESUS DOS SANTOS DE MESQUITA', 'marysantos1234bs@gmail.com', 'student', 4480998, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4480998, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'marysantos1234bs@gmail.com';
    END IF;

    -- MARIA EDUARDA LUCENA DE MOURA
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3421656@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA EDUARDA LUCENA DE MOURA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA EDUARDA LUCENA DE MOURA', 'aluno_3421656@biblioedu.com', 'student', 3421656, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3421656, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'aluno_3421656@biblioedu.com';
    END IF;

    -- MARIA HELOYSA TAVARES SILVA
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'mheloysa@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA HELOYSA TAVARES SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA HELOYSA TAVARES SILVA', 'mheloysa@gmail.com', 'student', 4013453, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4013453, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'mheloysa@gmail.com';
    END IF;

    -- MARIA WELLYNE BARBOSA SILVA
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'mariawellynebarbosa@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA WELLYNE BARBOSA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA WELLYNE BARBOSA SILVA', 'mariawellynebarbosa@gmail.com', 'student', 3416151, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3416151, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'mariawellynebarbosa@gmail.com';
    END IF;

    -- MARIA YASMIM SILVA ALEXANDRIA
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'mariayasss03@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA YASMIM SILVA ALEXANDRIA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'MARIA YASMIM SILVA ALEXANDRIA', 'mariayasss03@gmail.com', 'student', 4019311, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4019311, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'mariayasss03@gmail.com';
    END IF;

    -- NICOLLY GOMES DA SILVA
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'nicollyg453@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"NICOLLY GOMES DA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'NICOLLY GOMES DA SILVA', 'nicollyg453@gmail.com', 'student', 3428950, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3428950, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'nicollyg453@gmail.com';
    END IF;

    -- PEDRO GABRIEL INACIO BERTO
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'loloopedrog@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"PEDRO GABRIEL INACIO BERTO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'PEDRO GABRIEL INACIO BERTO', 'loloopedrog@gmail.com', 'student', 4761543, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4761543, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'loloopedrog@gmail.com';
    END IF;

    -- SAMUEL DE SOUSA ROCHA
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3987892@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"SAMUEL DE SOUSA ROCHA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'SAMUEL DE SOUSA ROCHA', 'aluno_3987892@biblioedu.com', 'student', 3987892, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3987892, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'aluno_3987892@biblioedu.com';
    END IF;

    -- SARA FERREIRA DA COSTA
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', '5f57455474@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"SARA FERREIRA DA COSTA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'SARA FERREIRA DA COSTA', '5f57455474@gmail.com', 'student', 3421177, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3421177, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = '5f57455474@gmail.com';
    END IF;

    -- SAVIO AQUINO SANTOS
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'pereirabezerraandes@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"SAVIO AQUINO SANTOS"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'SAVIO AQUINO SANTOS', 'pereirabezerraandes@gmail.com', 'student', 3205877, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3205877, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'pereirabezerraandes@gmail.com';
    END IF;

    -- TAYLLANE CAROLINO PINHEIRO
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'tayllanecarolinop@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"TAYLLANE CAROLINO PINHEIRO"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'TAYLLANE CAROLINO PINHEIRO', 'tayllanecarolinop@gmail.com', 'student', 4899715, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4899715, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'tayllanecarolinop@gmail.com';
    END IF;

    -- WILLAMYS TIBURTINO DA SILVA
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3416525@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"WILLAMYS TIBURTINO DA SILVA"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'WILLAMYS TIBURTINO DA SILVA', 'aluno_3416525@biblioedu.com', 'student', 3416525, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3416525, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'aluno_3416525@biblioedu.com';
    END IF;

    -- YTALO BRENO DOS SANTOS ALEXANDRE
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'breninhosantos668@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"YTALO BRENO DOS SANTOS ALEXANDRE"}', now(), now())
    ON CONFLICT (email) DO NOTHING
    RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)
        VALUES (new_user_id, 'YTALO BRENO DOS SANTOS ALEXANDRE', 'breninhosantos668@gmail.com', 'student', 3416318, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be')
        ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3416318, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'breninhosantos668@gmail.com';
    END IF;

END $$;