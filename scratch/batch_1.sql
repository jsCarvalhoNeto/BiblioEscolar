DO $$
DECLARE
    new_user_id UUID;
BEGIN
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_5494900@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ADINAELHYA VITORIA OLIVEIRA DA SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'ADINAELHYA VITORIA OLIVEIRA DA SILVA', 'aluno_5494900@biblioedu.com', 'student', 5494900, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 5494900, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'aluno_5494900@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'anabeatrizsantos9278292@gmail.', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ANA BEATRIZ DOS SANTOS ROCHA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'ANA BEATRIZ DOS SANTOS ROCHA', 'anabeatrizsantos9278292@gmail.', 'student', 4011113, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4011113, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'anabeatrizsantos9278292@gmail.';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'xitadadoxit@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ANA MARIA RODRIGUES LEMOS"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'ANA MARIA RODRIGUES LEMOS', 'xitadadoxit@gmail.com', 'student', 3404759, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3404759, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'xitadadoxit@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'cm1700366@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"CASSIA MARIA PEREIRA CARDOSO"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'CASSIA MARIA PEREIRA CARDOSO', 'cm1700366@gmail.com', 'student', 3410867, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3410867, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'cm1700366@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'celinamariadasilva77@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"CELINA MARIA DA SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'CELINA MARIA DA SILVA', 'celinamariadasilva77@gmail.com', 'student', 3610992, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3610992, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'celinamariadasilva77@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'cibeleninha2010@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"CIBELE MARIA DA SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'CIBELE MARIA DA SILVA', 'cibeleninha2010@gmail.com', 'student', 3610998, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3610998, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'cibeleninha2010@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'ciceroreinan09@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"CICERO REINAN BARBOSA DA SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'CICERO REINAN BARBOSA DA SILVA', 'ciceroreinan09@gmail.com', 'student', 3796051, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3796051, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'ciceroreinan09@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'diogorenanax@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"DIEGO RENAN PATRICIO DE SOUSA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'DIEGO RENAN PATRICIO DE SOUSA', 'diogorenanax@gmail.com', 'student', 3416275, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3416275, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'diogorenanax@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'eduardovidal8153@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"EDUARDO LEOBINO NOGUEIRA VIDAL"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'EDUARDO LEOBINO NOGUEIRA VIDAL', 'eduardovidal8153@gmail.com', 'student', 2689291, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 2689291, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'eduardovidal8153@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'vitoriaevellem339@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"EVELLEM VITORIA ALBERTO LIMA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'EVELLEM VITORIA ALBERTO LIMA', 'vitoriaevellem339@gmail.com', 'student', 4633653, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4633653, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'vitoriaevellem339@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'fabyollavitoria10@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"FABIOLA VITORIA SECUNDO FILGUEIRA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'FABIOLA VITORIA SECUNDO FILGUEIRA', 'fabyollavitoria10@gmail.com', 'student', 4403204, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4403204, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'fabyollavitoria10@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'iarlleyznx56@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"FRANCISCO IARLLY DA CONCEICAO"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'FRANCISCO IARLLY DA CONCEICAO', 'iarlleyznx56@gmail.com', 'student', 3624147, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3624147, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'iarlleyznx56@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'jacylda.alves.axc@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"GLICIA AQUINO ALVES"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'GLICIA AQUINO ALVES', 'jacylda.alves.axc@gmail.com', 'student', 3205982, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3205982, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'jacylda.alves.axc@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'ikarohoracio7@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"IKARO HORACIO SANTOS LIMA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'IKARO HORACIO SANTOS LIMA', 'ikarohoracio7@gmail.com', 'student', 4011180, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4011180, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'ikarohoracio7@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'isabellaxd.medeiros5@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ISABELLA LEITE DE MEDEIROS"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'ISABELLA LEITE DE MEDEIROS', 'isabellaxd.medeiros5@gmail.com', 'student', 4243959, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4243959, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'isabellaxd.medeiros5@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'jenyffermaria333@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JENYFFER MARIA DE BRITO LIMA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'JENYFFER MARIA DE BRITO LIMA', 'jenyffermaria333@gmail.com', 'student', 3406362, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3406362, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'jenyffermaria333@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'joaochrisley@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOAO CHRISLEY ALVES QUARESMA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'JOAO CHRISLEY ALVES QUARESMA', 'joaochrisley@gmail.com', 'student', 3973895, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3973895, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'joaochrisley@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'j73747704@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JONAS EMANOEL LOPES DA SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'JONAS EMANOEL LOPES DA SILVA', 'j73747704@gmail.com', 'student', 4011440, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4011440, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'j73747704@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'rodriguesmessias380@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOSE MESSIAS RODRIGUES DA SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'JOSE MESSIAS RODRIGUES DA SILVA', 'rodriguesmessias380@gmail.com', 'student', 4924898, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4924898, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'rodriguesmessias380@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'josewerbertmangueiradossantos@', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOSE WERBERT MANGUEIRA DOS SANTOS"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'JOSE WERBERT MANGUEIRA DOS SANTOS', 'josewerbertmangueiradossantos@', 'student', 3416145, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3416145, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'josewerbertmangueiradossantos@';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'juliocesardo440@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JULIO CESAR ALMEIDA FURTADO"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'JULIO CESAR ALMEIDA FURTADO', 'juliocesardo440@gmail.com', 'student', 4011225, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4011225, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'juliocesardo440@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3426687@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JULIO CEZAR FRANCA DA SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'JULIO CEZAR FRANCA DA SILVA', 'aluno_3426687@biblioedu.com', 'student', 3426687, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3426687, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'aluno_3426687@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'kaiquearaujogomes2010@gmail.', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"KAIQUE ARAUJO SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'KAIQUE ARAUJO SILVA', 'kaiquearaujogomes2010@gmail.', 'student', 3428991, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3428991, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'kaiquearaujogomes2010@gmail.';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'keisonaraujo412@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"KEISON ARAUJO SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'KEISON ARAUJO SILVA', 'keisonaraujo412@gmail.com', 'student', 3426992, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3426992, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'keisonaraujo412@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'kemellyricarte@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"LAIS KEMELLY RICARTE FELIX"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'LAIS KEMELLY RICARTE FELIX', 'kemellyricarte@gmail.com', 'student', 3415478, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3415478, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'kemellyricarte@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'larathalytasousa@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"LARA THALITA SOUSA RIBEIRO"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'LARA THALITA SOUSA RIBEIRO', 'larathalytasousa@gmail.com', 'student', 3416146, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3416146, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'larathalytasousa@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'leticiaxavier0811@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"LETICIA XAVIER DOS SANTOS"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'LETICIA XAVIER DOS SANTOS', 'leticiaxavier0811@gmail.com', 'student', 3623562, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3623562, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'leticiaxavier0811@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'levibarbosa7@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"LEVI BARBOSA DOS SANTOS"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'LEVI BARBOSA DOS SANTOS', 'levibarbosa7@gmail.com', 'student', 3417096, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3417096, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'levibarbosa7@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'rluancll7@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"LUAN RODRIGUES SANTOS"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'LUAN RODRIGUES SANTOS', 'rluancll7@gmail.com', 'student', 3987845, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3987845, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'rluancll7@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'cecilialimaa33@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA CECILIA LIMA ANDRADE"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MARIA CECILIA LIMA ANDRADE', 'cecilialimaa33@gmail.com', 'student', 3989694, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3989694, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'cecilialimaa33@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'marysantos1234bs@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA DE JESUS DOS SANTOS DE MESQUITA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MARIA DE JESUS DOS SANTOS DE MESQUITA', 'marysantos1234bs@gmail.com', 'student', 4480998, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4480998, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'marysantos1234bs@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3421656@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA EDUARDA LUCENA DE MOURA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MARIA EDUARDA LUCENA DE MOURA', 'aluno_3421656@biblioedu.com', 'student', 3421656, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3421656, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'aluno_3421656@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'mheloysa@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA HELOYSA TAVARES SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MARIA HELOYSA TAVARES SILVA', 'mheloysa@gmail.com', 'student', 4013453, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4013453, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'mheloysa@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'mariawellynebarbosa@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA WELLYNE BARBOSA SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MARIA WELLYNE BARBOSA SILVA', 'mariawellynebarbosa@gmail.com', 'student', 3416151, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3416151, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'mariawellynebarbosa@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'mariayasss03@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA YASMIM SILVA ALEXANDRIA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MARIA YASMIM SILVA ALEXANDRIA', 'mariayasss03@gmail.com', 'student', 4019311, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4019311, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'mariayasss03@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'nicollyg453@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"NICOLLY GOMES DA SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'NICOLLY GOMES DA SILVA', 'nicollyg453@gmail.com', 'student', 3428950, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3428950, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'nicollyg453@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'loloopedrog@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"PEDRO GABRIEL INACIO BERTO"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'PEDRO GABRIEL INACIO BERTO', 'loloopedrog@gmail.com', 'student', 4761543, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4761543, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'loloopedrog@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3987892@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"SAMUEL DE SOUSA ROCHA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'SAMUEL DE SOUSA ROCHA', 'aluno_3987892@biblioedu.com', 'student', 3987892, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3987892, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'aluno_3987892@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', '5f57455474@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"SARA FERREIRA DA COSTA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'SARA FERREIRA DA COSTA', '5f57455474@gmail.com', 'student', 3421177, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3421177, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = '5f57455474@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'pereirabezerraandes@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"SAVIO AQUINO SANTOS"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'SAVIO AQUINO SANTOS', 'pereirabezerraandes@gmail.com', 'student', 3205877, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3205877, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'pereirabezerraandes@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'tayllanecarolinop@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"TAYLLANE CAROLINO PINHEIRO"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'TAYLLANE CAROLINO PINHEIRO', 'tayllanecarolinop@gmail.com', 'student', 4899715, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4899715, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'tayllanecarolinop@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3416525@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"WILLAMYS TIBURTINO DA SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'WILLAMYS TIBURTINO DA SILVA', 'aluno_3416525@biblioedu.com', 'student', 3416525, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3416525, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'aluno_3416525@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'breninhosantos668@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"YTALO BRENO DOS SANTOS ALEXANDRE"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'YTALO BRENO DOS SANTOS ALEXANDRE', 'breninhosantos668@gmail.com', 'student', 3416318, '1º Ano', '104f1b0d-6197-4fcd-9c1f-675c158bb9be') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3416318, class_year = '1º Ano', course_id = '104f1b0d-6197-4fcd-9c1f-675c158bb9be', role = 'student' WHERE email = 'breninhosantos668@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_5676874@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"AGNALDO LEITE DE LUCENA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'AGNALDO LEITE DE LUCENA', 'aluno_5676874@biblioedu.com', 'student', 5676874, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 5676874, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'aluno_5676874@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_4898569@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ALEXSANDRO SANTANA DOS SANTOS"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'ALEXSANDRO SANTANA DOS SANTOS', 'aluno_4898569@biblioedu.com', 'student', 4898569, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4898569, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'aluno_4898569@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'maria.santos6280@aluno.ce.gov.', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ANA ALICIA DE MATOS JUVINO"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'ANA ALICIA DE MATOS JUVINO', 'maria.santos6280@aluno.ce.gov.', 'student', 2461373, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 2461373, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'maria.santos6280@aluno.ce.gov.';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3182234@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ANA CLARA DA SILVA SOUZA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'ANA CLARA DA SILVA SOUZA', 'aluno_3182234@biblioedu.com', 'student', 3182234, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3182234, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'aluno_3182234@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'maria.santos6280@aluno.ce.gov.', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ANA FRANCISCA DE SOUZA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'ANA FRANCISCA DE SOUZA', 'maria.santos6280@aluno.ce.gov.', 'student', 2724113, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 2724113, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'maria.santos6280@aluno.ce.gov.';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3984587@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ANGELA MARIA CAVALCANTE ARAUJO"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'ANGELA MARIA CAVALCANTE ARAUJO', 'aluno_3984587@biblioedu.com', 'student', 3984587, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3984587, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'aluno_3984587@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3206004@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"APARECIDA PEREIRA DE SOUSA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'APARECIDA PEREIRA DE SOUSA', 'aluno_3206004@biblioedu.com', 'student', 3206004, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3206004, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'aluno_3206004@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_5676925@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"CAIO HENRIQUE CAZUZA PEREIRA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'CAIO HENRIQUE CAZUZA PEREIRA', 'aluno_5676925@biblioedu.com', 'student', 5676925, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 5676925, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'aluno_5676925@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3987789@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"CEZAR INACIO DA SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'CEZAR INACIO DA SILVA', 'aluno_3987789@biblioedu.com', 'student', 3987789, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3987789, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'aluno_3987789@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3410893@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"DANIEL PEDRO DO NASCIMENTO SANTOS"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'DANIEL PEDRO DO NASCIMENTO SANTOS', 'aluno_3410893@biblioedu.com', 'student', 3410893, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3410893, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'aluno_3410893@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3984616@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"DAVI WILKER CARVALHO"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'DAVI WILKER CARVALHO', 'aluno_3984616@biblioedu.com', 'student', 3984616, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3984616, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'aluno_3984616@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3421356@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"DIEGO MAURICIO FELIX DOS SANTOS"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'DIEGO MAURICIO FELIX DOS SANTOS', 'aluno_3421356@biblioedu.com', 'student', 3421356, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3421356, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'aluno_3421356@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'maria.santos6280@aluno.ce.gov.', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"DIOGO PEREIRA DA SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'DIOGO PEREIRA DA SILVA', 'maria.santos6280@aluno.ce.gov.', 'student', 2483095, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 2483095, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'maria.santos6280@aluno.ce.gov.';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3404644@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"EMILLY EVELLY ALVES IZIDIO"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'EMILLY EVELLY ALVES IZIDIO', 'aluno_3404644@biblioedu.com', 'student', 3404644, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3404644, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'aluno_3404644@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_4730391@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"EWELY DESYREE FERREIRA DE ALMEIDA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'EWELY DESYREE FERREIRA DE ALMEIDA', 'aluno_4730391@biblioedu.com', 'student', 4730391, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4730391, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'aluno_4730391@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_4011418@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"FRANCISCO SAULO SILVA CLEMENTINO"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'FRANCISCO SAULO SILVA CLEMENTINO', 'aluno_4011418@biblioedu.com', 'student', 4011418, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4011418, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'aluno_4011418@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_4017263@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"GUILHERME MARTINS EVANGELISTA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'GUILHERME MARTINS EVANGELISTA', 'aluno_4017263@biblioedu.com', 'student', 4017263, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4017263, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'aluno_4017263@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_5670511@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"HENRIQUE FERNANDES ALVES"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'HENRIQUE FERNANDES ALVES', 'aluno_5670511@biblioedu.com', 'student', 5670511, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 5670511, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'aluno_5670511@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3932917@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"IVAN FIRMINO ALVES FILHO"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'IVAN FIRMINO ALVES FILHO', 'aluno_3932917@biblioedu.com', 'student', 3932917, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3932917, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'aluno_3932917@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3404655@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOAO LUCAS OLIVEIRA LIMA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'JOAO LUCAS OLIVEIRA LIMA', 'aluno_3404655@biblioedu.com', 'student', 3404655, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3404655, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'aluno_3404655@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'joaopaulobsanto@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOAO PAULO LUCIEN MARTINS TEIXEIRA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'JOAO PAULO LUCIEN MARTINS TEIXEIRA', 'joaopaulobsanto@gmail.com', 'student', 3405157, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3405157, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'joaopaulobsanto@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_5292675@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOSE ARTHUR MARCULINO VIDAL SANTOS"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'JOSE ARTHUR MARCULINO VIDAL SANTOS', 'aluno_5292675@biblioedu.com', 'student', 5292675, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 5292675, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'aluno_5292675@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'raquelsousa0004@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOSE ERIK SAMPAIO DA SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'JOSE ERIK SAMPAIO DA SILVA', 'raquelsousa0004@gmail.com', 'student', 2949251, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 2949251, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'raquelsousa0004@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3608614@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOSE JAKSON PEREIRA SILVA FILHO"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'JOSE JAKSON PEREIRA SILVA FILHO', 'aluno_3608614@biblioedu.com', 'student', 3608614, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3608614, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'aluno_3608614@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'ryannovaes70@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOSE RYAN NOVAES SANTOS"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'JOSE RYAN NOVAES SANTOS', 'ryannovaes70@gmail.com', 'student', 3421641, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3421641, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'ryannovaes70@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'moratiago014@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOSE THIAGO SOUSA DE MOURA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'JOSE THIAGO SOUSA DE MOURA', 'moratiago014@gmail.com', 'student', 3421363, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3421363, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'moratiago014@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3205939@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JULIO CESAR CAMPOS DE SOUZA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'JULIO CESAR CAMPOS DE SOUZA', 'aluno_3205939@biblioedu.com', 'student', 3205939, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3205939, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'aluno_3205939@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3608626@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"KARLOS EDUARDO PEREIRA DE LIMA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'KARLOS EDUARDO PEREIRA DE LIMA', 'aluno_3608626@biblioedu.com', 'student', 3608626, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3608626, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'aluno_3608626@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_5676834@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"KLEYDSON AKON ALVES DOS SANTOS"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'KLEYDSON AKON ALVES DOS SANTOS', 'aluno_5676834@biblioedu.com', 'student', 5676834, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 5676834, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'aluno_5676834@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3978826@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"LAIS MILENA PEREIRA DA SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'LAIS MILENA PEREIRA DA SILVA', 'aluno_3978826@biblioedu.com', 'student', 3978826, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3978826, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'aluno_3978826@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3159817@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"LAYSE PEREIRA DE ANDRADE"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'LAYSE PEREIRA DE ANDRADE', 'aluno_3159817@biblioedu.com', 'student', 3159817, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3159817, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'aluno_3159817@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'maria.santos6280@aluno.ce.gov.', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"LIVIA MARIA ALVES DA SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'LIVIA MARIA ALVES DA SILVA', 'maria.santos6280@aluno.ce.gov.', 'student', 2189508, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 2189508, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'maria.santos6280@aluno.ce.gov.';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3602368@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"LUAN INACIO SAMPAIO"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'LUAN INACIO SAMPAIO', 'aluno_3602368@biblioedu.com', 'student', 3602368, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3602368, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'aluno_3602368@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3416147@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"LUIGGYANE MARIA COSTA GALDINO"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'LUIGGYANE MARIA COSTA GALDINO', 'aluno_3416147@biblioedu.com', 'student', 3416147, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3416147, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'aluno_3416147@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3411727@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA LUYZA FERREIRA DA SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MARIA LUYZA FERREIRA DA SILVA', 'aluno_3411727@biblioedu.com', 'student', 3411727, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3411727, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'aluno_3411727@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'm98047732@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA RAYSSA SOUSA DOS SANTOS"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MARIA RAYSSA SOUSA DOS SANTOS', 'm98047732@gmail.com', 'student', 2724730, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 2724730, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'm98047732@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_4013542@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MIGUEL PEREIRA DE LUCENA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MIGUEL PEREIRA DE LUCENA', 'aluno_4013542@biblioedu.com', 'student', 4013542, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4013542, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'aluno_4013542@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_4254814@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"RONALD ATAIDE RIO NEGRO DA SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'RONALD ATAIDE RIO NEGRO DA SILVA', 'aluno_4254814@biblioedu.com', 'student', 4254814, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4254814, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'aluno_4254814@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_4259744@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"SALEFE LORRAN FERREIRA DOS SANTOS"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'SALEFE LORRAN FERREIRA DOS SANTOS', 'aluno_4259744@biblioedu.com', 'student', 4259744, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4259744, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'aluno_4259744@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3416310@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"SANIELDER FERREIRA OLIVEIRA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'SANIELDER FERREIRA OLIVEIRA', 'aluno_3416310@biblioedu.com', 'student', 3416310, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3416310, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'aluno_3416310@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_4899799@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"TAYLOR PINHEIRO ALVES FILHO"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'TAYLOR PINHEIRO ALVES FILHO', 'aluno_4899799@biblioedu.com', 'student', 4899799, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4899799, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'aluno_4899799@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_4797313@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"TERESA DAVILLA EVANGELISTA SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'TERESA DAVILLA EVANGELISTA SILVA', 'aluno_4797313@biblioedu.com', 'student', 4797313, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4797313, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'aluno_4797313@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_4202754@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"VANESSA CALISTA SOARES"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'VANESSA CALISTA SOARES', 'aluno_4202754@biblioedu.com', 'student', 4202754, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4202754, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'aluno_4202754@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'ygoreugenio98@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"YGOR EUGENIO SANTOS SANTANA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'YGOR EUGENIO SANTOS SANTANA', 'ygoreugenio98@gmail.com', 'student', 3996540, '1º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3996540, class_year = '1º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'ygoreugenio98@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3987714@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ADLA KERZIA RODRIGUES SANTOS"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'ADLA KERZIA RODRIGUES SANTOS', 'aluno_3987714@biblioedu.com', 'student', 3987714, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3987714, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'aluno_3987714@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3426197@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ADNA ALVES DA SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'ADNA ALVES DA SILVA', 'aluno_3426197@biblioedu.com', 'student', 3426197, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3426197, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'aluno_3426197@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aguidasiqueira3@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"AGUIDA SIQUEIRA LOURENCO"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'AGUIDA SIQUEIRA LOURENCO', 'aguidasiqueira3@gmail.com', 'student', 3996024, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3996024, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'aguidasiqueira3@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'sousayarllen9@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ALTINO YARLLEN PINHEIRO DE SOUSA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'ALTINO YARLLEN PINHEIRO DE SOUSA', 'sousayarllen9@gmail.com', 'student', 3416336, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3416336, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'sousayarllen9@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3404619@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"AMANDA MATIAS RIBEIRO DE SOUSA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'AMANDA MATIAS RIBEIRO DE SOUSA', 'aluno_3404619@biblioedu.com', 'student', 3404619, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3404619, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'aluno_3404619@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'anavitoria9067@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ANA VITORIA DE SOUSA SANTOS"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'ANA VITORIA DE SOUSA SANTOS', 'anavitoria9067@gmail.com', 'student', 5016973, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 5016973, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'anavitoria9067@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'ariadnelouyse@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ARIADNE LOUYSE CUNHA DA SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'ARIADNE LOUYSE CUNHA DA SILVA', 'ariadnelouyse@gmail.com', 'student', 3416342, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3416342, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'ariadnelouyse@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_5672704@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"CECILLYA NASCIMENTO OLIVEIRA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'CECILLYA NASCIMENTO OLIVEIRA', 'aluno_5672704@biblioedu.com', 'student', 5672704, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 5672704, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'aluno_5672704@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_4415471@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"CICERA VITORIA LOURENCO DA SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'CICERA VITORIA LOURENCO DA SILVA', 'aluno_4415471@biblioedu.com', 'student', 4415471, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4415471, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'aluno_4415471@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_4010932@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"DEYVD KAWE FILGUEIRA EVANGELISTA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'DEYVD KAWE FILGUEIRA EVANGELISTA', 'aluno_4010932@biblioedu.com', 'student', 4010932, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4010932, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'aluno_4010932@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3978662@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"EDSON SANTOS MARTINS"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'EDSON SANTOS MARTINS', 'aluno_3978662@biblioedu.com', 'student', 3978662, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3978662, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'aluno_3978662@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3417537@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ESAU ARAUJO MAIA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'ESAU ARAUJO MAIA', 'aluno_3417537@biblioedu.com', 'student', 3417537, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3417537, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'aluno_3417537@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3416488@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"FATIMA MAYARA SIMPLICIO DA SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'FATIMA MAYARA SIMPLICIO DA SILVA', 'aluno_3416488@biblioedu.com', 'student', 3416488, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3416488, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'aluno_3416488@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3427001@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"FRANCISCA LUYANE DA SILVA MATOS"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'FRANCISCA LUYANE DA SILVA MATOS', 'aluno_3427001@biblioedu.com', 'student', 3427001, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3427001, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'aluno_3427001@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'fneto2577@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"FRANCISCO DE ASSIS SOUZA ALVES NETO"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'FRANCISCO DE ASSIS SOUZA ALVES NETO', 'fneto2577@gmail.com', 'student', 4898304, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4898304, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'fneto2577@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3611032@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"GEOVANA PEREIRA DOS SANTOS"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'GEOVANA PEREIRA DOS SANTOS', 'aluno_3611032@biblioedu.com', 'student', 3611032, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3611032, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'aluno_3611032@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_4387690@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"HERLON ARAUJO SOUZA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'HERLON ARAUJO SOUZA', 'aluno_4387690@biblioedu.com', 'student', 4387690, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4387690, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'aluno_4387690@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_4011172@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"HEVILLY MARIA ALVES GONZAGA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'HEVILLY MARIA ALVES GONZAGA', 'aluno_4011172@biblioedu.com', 'student', 4011172, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4011172, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'aluno_4011172@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'hisys2810@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"HISYS GONCALVES DA SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'HISYS GONCALVES DA SILVA', 'hisys2810@gmail.com', 'student', 3610662, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3610662, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'hisys2810@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3411742@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"INACIO GABRIEL SILVA FERREIRA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'INACIO GABRIEL SILVA FERREIRA', 'aluno_3411742@biblioedu.com', 'student', 3411742, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3411742, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'aluno_3411742@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_5672577@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JEAN LUCCA SALVIANO DA ROCHA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'JEAN LUCCA SALVIANO DA ROCHA', 'aluno_5672577@biblioedu.com', 'student', 5672577, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 5672577, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'aluno_5672577@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3415563@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"KEYLA TERESA FRUTUOSO DOS SANTOS"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'KEYLA TERESA FRUTUOSO DOS SANTOS', 'aluno_3415563@biblioedu.com', 'student', 3415563, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3415563, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'aluno_3415563@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'maria.santos6280@aluno.ce.gov.', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"LAYSA DA SILVA NASCIMENTO"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'LAYSA DA SILVA NASCIMENTO', 'maria.santos6280@aluno.ce.gov.', 'student', 2723158, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 2723158, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'maria.santos6280@aluno.ce.gov.';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_5672555@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"LETICIA GOMES MACEDO"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'LETICIA GOMES MACEDO', 'aluno_5672555@biblioedu.com', 'student', 5672555, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 5672555, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'aluno_5672555@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'luiseduardo0123450@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"LUIZ EDUARDO CARVALHO"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'LUIZ EDUARDO CARVALHO', 'luiseduardo0123450@gmail.com', 'student', 4378989, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4378989, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'luiseduardo0123450@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_4855485@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARCOS VINICIUS MONTEIRO FIRMINO"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MARCOS VINICIUS MONTEIRO FIRMINO', 'aluno_4855485@biblioedu.com', 'student', 4855485, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4855485, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'aluno_4855485@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3421647@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA ARIELLY LUCENA CARDOSO"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MARIA ARIELLY LUCENA CARDOSO', 'aluno_3421647@biblioedu.com', 'student', 3421647, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3421647, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'aluno_3421647@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'fmariaclara668@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA CLARA FERREIRA DE SOUSA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MARIA CLARA FERREIRA DE SOUSA', 'fmariaclara668@gmail.com', 'student', 3416518, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3416518, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'fmariaclara668@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'levellyn584@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA EVELLYN LIMA MARIANO"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MARIA EVELLYN LIMA MARIANO', 'levellyn584@gmail.com', 'student', 3962774, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3962774, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'levellyn584@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'helogames87@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA HELOYSA ALBERTO FIRMINO"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MARIA HELOYSA ALBERTO FIRMINO', 'helogames87@gmail.com', 'student', 3849395, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3849395, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'helogames87@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3987859@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA LAIS SANTOS SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MARIA LAIS SANTOS SILVA', 'aluno_3987859@biblioedu.com', 'student', 3987859, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3987859, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'aluno_3987859@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3987865@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA LETICIA ALVES PEREIRA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MARIA LETICIA ALVES PEREIRA', 'aluno_3987865@biblioedu.com', 'student', 3987865, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3987865, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'aluno_3987865@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'marianasantos.tavares30@gmail.', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIANA DOS SANTOS TAVARES"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MARIANA DOS SANTOS TAVARES', 'marianasantos.tavares30@gmail.', 'student', 5291628, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 5291628, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'marianasantos.tavares30@gmail.';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'mariazinhacruzz@icloud.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA NATANAELY TENORIO DA CRUZ"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MARIA NATANAELY TENORIO DA CRUZ', 'mariazinhacruzz@icloud.com', 'student', 3416150, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3416150, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'mariazinhacruzz@icloud.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'mnayaradesouzas19@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA NAYARA DE SOUZA SANTOS"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MARIA NAYARA DE SOUZA SANTOS', 'mnayaradesouzas19@gmail.com', 'student', 3416521, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3416521, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'mnayaradesouzas19@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_5672526@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"PEDRO LUCAS MACEDO VENCESLAU"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'PEDRO LUCAS MACEDO VENCESLAU', 'aluno_5672526@biblioedu.com', 'student', 5672526, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 5672526, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'aluno_5672526@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3987877@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"PEDRO RIKELVY INACIO DE ARAUJO"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'PEDRO RIKELVY INACIO DE ARAUJO', 'aluno_3987877@biblioedu.com', 'student', 3987877, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3987877, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'aluno_3987877@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'ranielysabinomachado@gmail.', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"RANIELY SABINO MACHADO"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'RANIELY SABINO MACHADO', 'ranielysabinomachado@gmail.', 'student', 3406923, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3406923, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'ranielysabinomachado@gmail.';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3978907@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"SAMYA RAFAELLY ALEXANDRIA SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'SAMYA RAFAELLY ALEXANDRIA SILVA', 'aluno_3978907@biblioedu.com', 'student', 3978907, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3978907, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'aluno_3978907@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3408723@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"SARA BRINGEL FERREIRA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'SARA BRINGEL FERREIRA', 'aluno_3408723@biblioedu.com', 'student', 3408723, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3408723, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'aluno_3408723@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'maria.santos6280@aluno.ce.gov.', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"SIMARA LAYS SECUNDO RICARTE"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'SIMARA LAYS SECUNDO RICARTE', 'maria.santos6280@aluno.ce.gov.', 'student', 2713584, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 2713584, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'maria.santos6280@aluno.ce.gov.';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3962767@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"SOFIA TORRES DOS SANTOS"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'SOFIA TORRES DOS SANTOS', 'aluno_3962767@biblioedu.com', 'student', 3962767, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3962767, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'aluno_3962767@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_5672610@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"TEREZA DAVYLLA VIEIRA DE OLIVEIRA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'TEREZA DAVYLLA VIEIRA DE OLIVEIRA', 'aluno_5672610@biblioedu.com', 'student', 5672610, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 5672610, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'aluno_5672610@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_4012872@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"YASMIN CALDAS ALVES"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'YASMIN CALDAS ALVES', 'aluno_4012872@biblioedu.com', 'student', 4012872, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4012872, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'aluno_4012872@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_4435406@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"YOHANN SOUSA DE OLIVEIRA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'YOHANN SOUSA DE OLIVEIRA', 'aluno_4435406@biblioedu.com', 'student', 4435406, '1º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4435406, class_year = '1º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'aluno_4435406@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_4794280@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ADRIAN DIEGO TAVARES DE ARAUJO"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'ADRIAN DIEGO TAVARES DE ARAUJO', 'aluno_4794280@biblioedu.com', 'student', 4794280, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4794280, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'aluno_4794280@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_4613999@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ANA CLARA SANTOS FERREIRA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'ANA CLARA SANTOS FERREIRA', 'aluno_4613999@biblioedu.com', 'student', 4613999, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4613999, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'aluno_4613999@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3950019@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ANA ISABELLY BARBOSA DA SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'ANA ISABELLY BARBOSA DA SILVA', 'aluno_3950019@biblioedu.com', 'student', 3950019, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3950019, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'aluno_3950019@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3426648@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ANA LIVIA DA SILVA PAZ"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'ANA LIVIA DA SILVA PAZ', 'aluno_3426648@biblioedu.com', 'student', 3426648, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3426648, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'aluno_3426648@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_4011393@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ANA VITORIA NASCIMENTO SANTOS"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'ANA VITORIA NASCIMENTO SANTOS', 'aluno_4011393@biblioedu.com', 'student', 4011393, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4011393, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'aluno_4011393@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3404849@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ANTONIO TAVARES MENDES DO NASCIMENTO"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'ANTONIO TAVARES MENDES DO NASCIMENTO', 'aluno_3404849@biblioedu.com', 'student', 3404849, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3404849, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'aluno_3404849@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'carloseduardolordsananda@gmail', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"CARLOS EDUARDO GONCALVES MENDONCA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'CARLOS EDUARDO GONCALVES MENDONCA', 'carloseduardolordsananda@gmail', 'student', 4630859, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4630859, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'carloseduardolordsananda@gmail';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'wm306923@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"CARLOS WESLEY NOGUEIRA DE MOURA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'CARLOS WESLEY NOGUEIRA DE MOURA', 'wm306923@gmail.com', 'student', 3426658, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3426658, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'wm306923@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_4013056@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"DIOGO LIMA COSTA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'DIOGO LIMA COSTA', 'aluno_4013056@biblioedu.com', 'student', 4013056, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4013056, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'aluno_4013056@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3422595@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"EMANUELLE MARIA ANDRADE DA SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'EMANUELLE MARIA ANDRADE DA SILVA', 'aluno_3422595@biblioedu.com', 'student', 3422595, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3422595, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'aluno_3422595@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'emillymariaoliveira957@gmail.', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"EMILLY MARIA OLIVEIRA COELHO"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'EMILLY MARIA OLIVEIRA COELHO', 'emillymariaoliveira957@gmail.', 'student', 4468148, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4468148, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'emillymariaoliveira957@gmail.';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3411739@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"FRANCISCO GABRIEL ANGELO DE OLIVEIRA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'FRANCISCO GABRIEL ANGELO DE OLIVEIRA', 'aluno_3411739@biblioedu.com', 'student', 3411739, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3411739, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'aluno_3411739@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_5676751@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"GABRIEL ASAF ROCHA NEVES"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'GABRIEL ASAF ROCHA NEVES', 'aluno_5676751@biblioedu.com', 'student', 5676751, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 5676751, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'aluno_5676751@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_4015406@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"IANI THAILA FERREIRA SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'IANI THAILA FERREIRA SILVA', 'aluno_4015406@biblioedu.com', 'student', 4015406, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4015406, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'aluno_4015406@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_4572566@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JHON WEBERTY SOUZA LEITE"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'JHON WEBERTY SOUZA LEITE', 'aluno_4572566@biblioedu.com', 'student', 4572566, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4572566, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'aluno_4572566@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'joaovictor2024silva@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOAO VICTOR DA SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'JOAO VICTOR DA SILVA', 'joaovictor2024silva@gmail.com', 'student', 3412617, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3412617, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'joaovictor2024silva@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aluno_3404950@biblioedu.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOAO VITOR ALVES PEREIRA SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'JOAO VITOR ALVES PEREIRA SILVA', 'aluno_3404950@biblioedu.com', 'student', 3404950, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3404950, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'aluno_3404950@biblioedu.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'maria.santos6280@aluno.ce.gov.', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JONATHAM ANDRADE DOS SANTOS"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'JONATHAM ANDRADE DOS SANTOS', 'maria.santos6280@aluno.ce.gov.', 'student', 2241848, '1º Ano', '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 2241848, class_year = '1º Ano', course_id = '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534', role = 'student' WHERE email = 'maria.santos6280@aluno.ce.gov.';
    END IF;
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