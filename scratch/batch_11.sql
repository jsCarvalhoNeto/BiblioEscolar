DO $$
DECLARE
    new_user_id UUID;
BEGIN
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'jamillym1251@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA JAMILLY MAGALHAES DE FRANCA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MARIA JAMILLY MAGALHAES DE FRANCA', 'jamillym1251@gmail.com', 'student', 3581701, '3º Ano', 'a52adcb4-2cf5-426c-a382-b75017315c78') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3581701, class_year = '3º Ano', course_id = 'a52adcb4-2cf5-426c-a382-b75017315c78', role = 'student' WHERE email = 'jamillym1251@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'silvajujjhonatas@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA JULIA DA SILVA SANTOS"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MARIA JULIA DA SILVA SANTOS', 'silvajujjhonatas@gmail.com', 'student', 3421189, '3º Ano', 'a52adcb4-2cf5-426c-a382-b75017315c78') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3421189, class_year = '3º Ano', course_id = 'a52adcb4-2cf5-426c-a382-b75017315c78', role = 'student' WHERE email = 'silvajujjhonatas@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'marialoysedasilva@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA LOYSE DA SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MARIA LOYSE DA SILVA', 'marialoysedasilva@gmail.com', 'student', 3556664, '3º Ano', 'a52adcb4-2cf5-426c-a382-b75017315c78') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3556664, class_year = '3º Ano', course_id = 'a52adcb4-2cf5-426c-a382-b75017315c78', role = 'student' WHERE email = 'marialoysedasilva@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'priscilalopes042@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA PRISCILA LOPES FERREIRA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MARIA PRISCILA LOPES FERREIRA', 'priscilalopes042@gmail.com', 'student', 3550715, '3º Ano', 'a52adcb4-2cf5-426c-a382-b75017315c78') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3550715, class_year = '3º Ano', course_id = 'a52adcb4-2cf5-426c-a382-b75017315c78', role = 'student' WHERE email = 'priscilalopes042@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'ricaeliferreira@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA RICAELI FERREIRA DOS SANTOS"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MARIA RICAELI FERREIRA DOS SANTOS', 'ricaeliferreira@gmail.com', 'student', 4823888, '3º Ano', 'a52adcb4-2cf5-426c-a382-b75017315c78') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4823888, class_year = '3º Ano', course_id = 'a52adcb4-2cf5-426c-a382-b75017315c78', role = 'student' WHERE email = 'ricaeliferreira@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', '3561752.sem.email@seduc.ce.', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA SOFYA DA SILVA XAVIER"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MARIA SOFYA DA SILVA XAVIER', '3561752.sem.email@seduc.ce.', 'student', 3561752, '3º Ano', 'a52adcb4-2cf5-426c-a382-b75017315c78') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3561752, class_year = '3º Ano', course_id = 'a52adcb4-2cf5-426c-a382-b75017315c78', role = 'student' WHERE email = '3561752.sem.email@seduc.ce.';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'tainararodrigueslino@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA TAINARA RODRIGUES LINO"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MARIA TAINARA RODRIGUES LINO', 'tainararodrigueslino@gmail.com', 'student', 3412628, '3º Ano', 'a52adcb4-2cf5-426c-a382-b75017315c78') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3412628, class_year = '3º Ano', course_id = 'a52adcb4-2cf5-426c-a382-b75017315c78', role = 'student' WHERE email = 'tainararodrigueslino@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'furtado09874@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA VITORIA FURTADO DA SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MARIA VITORIA FURTADO DA SILVA', 'furtado09874@gmail.com', 'student', 4553501, '3º Ano', 'a52adcb4-2cf5-426c-a382-b75017315c78') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4553501, class_year = '3º Ano', course_id = 'a52adcb4-2cf5-426c-a382-b75017315c78', role = 'student' WHERE email = 'furtado09874@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'andrademichelly507@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MICHELLY ALEXANDRE ALVES"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MICHELLY ALEXANDRE ALVES', 'andrademichelly507@gmail.com', 'student', 3548162, '3º Ano', 'a52adcb4-2cf5-426c-a382-b75017315c78') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3548162, class_year = '3º Ano', course_id = 'a52adcb4-2cf5-426c-a382-b75017315c78', role = 'student' WHERE email = 'andrademichelly507@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'rayanegomessampaio077@gmail.', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"RAIANE VICENTINA GOMES SAMPAIO"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'RAIANE VICENTINA GOMES SAMPAIO', 'rayanegomessampaio077@gmail.', 'student', 5019368, '3º Ano', 'a52adcb4-2cf5-426c-a382-b75017315c78') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 5019368, class_year = '3º Ano', course_id = 'a52adcb4-2cf5-426c-a382-b75017315c78', role = 'student' WHERE email = 'rayanegomessampaio077@gmail.';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'tl412884@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"THAIS DIONISIO DE LIMA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'THAIS DIONISIO DE LIMA', 'tl412884@gmail.com', 'student', 3543212, '3º Ano', 'a52adcb4-2cf5-426c-a382-b75017315c78') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3543212, class_year = '3º Ano', course_id = 'a52adcb4-2cf5-426c-a382-b75017315c78', role = 'student' WHERE email = 'tl412884@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'vislene.silva1@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"VISLENE DE SOUSA SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'VISLENE DE SOUSA SILVA', 'vislene.silva1@gmail.com', 'student', 3411576, '3º Ano', 'a52adcb4-2cf5-426c-a382-b75017315c78') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3411576, class_year = '3º Ano', course_id = 'a52adcb4-2cf5-426c-a382-b75017315c78', role = 'student' WHERE email = 'vislene.silva1@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'yasmimpereiracardoso014@gmail', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"YASMIM PEREIRA CARDOSO"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'YASMIM PEREIRA CARDOSO', 'yasmimpereiracardoso014@gmail', 'student', 3404021, '3º Ano', 'a52adcb4-2cf5-426c-a382-b75017315c78') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3404021, class_year = '3º Ano', course_id = 'a52adcb4-2cf5-426c-a382-b75017315c78', role = 'student' WHERE email = 'yasmimpereiracardoso014@gmail';
    END IF;
END $$;