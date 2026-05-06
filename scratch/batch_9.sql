DO $$
DECLARE
    new_user_id UUID;
BEGIN
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'gabrielabva2024@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"GABRIELA LEAL DA COSTA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'GABRIELA LEAL DA COSTA', 'gabrielabva2024@gmail.com', 'student', 3800891, '3º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3800891, class_year = '3º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'gabrielabva2024@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'graziellesolino2@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"GRAZIELLE IMACULADA SOLINO FERNANDES"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'GRAZIELLE IMACULADA SOLINO FERNANDES', 'graziellesolino2@gmail.com', 'student', 4099323, '3º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4099323, class_year = '3º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'graziellesolino2@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'isaacmartins237@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ISAAC MARTINS ALVES PAZ"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'ISAAC MARTINS ALVES PAZ', 'isaacmartins237@gmail.com', 'student', 4023718, '3º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4023718, class_year = '3º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'isaacmartins237@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'isaacwifi12408@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ISAAC RODRIGUES PEDROSA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'ISAAC RODRIGUES PEDROSA', 'isaacwifi12408@gmail.com', 'student', 3549805, '3º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3549805, class_year = '3º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'isaacwifi12408@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'joseliaaleriana93@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ISABELY ROCHA DA SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'ISABELY ROCHA DA SILVA', 'joseliaaleriana93@gmail.com', 'student', 3606708, '3º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3606708, class_year = '3º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'joseliaaleriana93@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'iurygabrielsousa04@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"IURY GABRIEL DE SOUZA LIMA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'IURY GABRIEL DE SOUZA LIMA', 'iurygabrielsousa04@gmail.com', 'student', 3412609, '3º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3412609, class_year = '3º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'iurygabrielsousa04@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'kerllonpinheiro34@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOAO KERLLON PINHEIRO DE SOUSA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'JOAO KERLLON PINHEIRO DE SOUSA', 'kerllonpinheiro34@gmail.com', 'student', 4551787, '3º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4551787, class_year = '3º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'kerllonpinheiro34@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'joaolucaspgoncalo@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOAO LUCAS PEREIRA GONCALO"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'JOAO LUCAS PEREIRA GONCALO', 'joaolucaspgoncalo@gmail.com', 'student', 3758506, '3º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3758506, class_year = '3º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'joaolucaspgoncalo@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'lopesjoaomiguel15@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOAO MIGUEL LOPES VIDAL"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'JOAO MIGUEL LOPES VIDAL', 'lopesjoaomiguel15@gmail.com', 'student', 3800870, '3º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3800870, class_year = '3º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'lopesjoaomiguel15@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'wendell1099@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOAQUIM WENDEL LOPES DE SOUSA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'JOAQUIM WENDEL LOPES DE SOUSA', 'wendell1099@gmail.com', 'student', 2723895, '3º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 2723895, class_year = '3º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'wendell1099@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'josealexandresouzasantos234@g', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOSE ALEXANDRE SOUZA SANTOS"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'JOSE ALEXANDRE SOUZA SANTOS', 'josealexandresouzasantos234@g', 'student', 2677098, '3º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 2677098, class_year = '3º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'josealexandresouzasantos234@g';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'js3940956@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOSE ANDERSON MESSIAS DA SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'JOSE ANDERSON MESSIAS DA SILVA', 'js3940956@gmail.com', 'student', 3407882, '3º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3407882, class_year = '3º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'js3940956@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'josefilhho08@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"JOSE HAROLDO DE AQUINO FILHO"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'JOSE HAROLDO DE AQUINO FILHO', 'josefilhho08@gmail.com', 'student', 2423134, '3º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 2423134, class_year = '3º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'josefilhho08@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'levyalmeidadesousa@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"LEVY ALMEIDA DE SOUSA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'LEVY ALMEIDA DE SOUSA', 'levyalmeidadesousa@gmail.com', 'student', 3542794, '3º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3542794, class_year = '3º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'levyalmeidadesousa@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'levy93749@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"LEVY FERREIRA SANTOS"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'LEVY FERREIRA SANTOS', 'levy93749@gmail.com', 'student', 3800664, '3º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3800664, class_year = '3º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'levy93749@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'cluan0519@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"LUAN DE SOUSA COSTA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'LUAN DE SOUSA COSTA', 'cluan0519@gmail.com', 'student', 5260148, '3º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 5260148, class_year = '3º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'cluan0519@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'luankennedy2002@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"LUAN KENNEDY RICARTE DOS SANTOS"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'LUAN KENNEDY RICARTE DOS SANTOS', 'luankennedy2002@gmail.com', 'student', 2245863, '3º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 2245863, class_year = '3º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'luankennedy2002@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'lucas15falconi@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"LUCAS FALCONI RODRIGUES GOMES MEDEIROS"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'LUCAS FALCONI RODRIGUES GOMES MEDEIROS', 'lucas15falconi@gmail.com', 'student', 4766487, '3º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4766487, class_year = '3º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'lucas15falconi@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'marcosaureliolopesbezerra@gmail', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARCOS AURELIO LOPES BEZERRA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MARCOS AURELIO LOPES BEZERRA', 'marcosaureliolopesbezerra@gmail', 'student', 3416974, '3º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3416974, class_year = '3º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'marcosaureliolopesbezerra@gmail';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'mariahalanna104@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA ALANNA PEREIRA DO NASCIMENTO"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MARIA ALANNA PEREIRA DO NASCIMENTO', 'mariahalanna104@gmail.com', 'student', 3422785, '3º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3422785, class_year = '3º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'mariahalanna104@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'robertothayanny14@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA THAYANNY ROBERTO DA SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MARIA THAYANNY ROBERTO DA SILVA', 'robertothayanny14@gmail.com', 'student', 3422074, '3º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3422074, class_year = '3º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'robertothayanny14@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'athylis000@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"MARIA YASMIM FELIX DOS SANTOS"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'MARIA YASMIM FELIX DOS SANTOS', 'athylis000@gmail.com', 'student', 2700969, '3º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 2700969, class_year = '3º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'athylis000@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'richardcassio43@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"RICHARD CASSIO SANTOS VIDAL"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'RICHARD CASSIO SANTOS VIDAL', 'richardcassio43@gmail.com', 'student', 3545395, '3º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3545395, class_year = '3º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'richardcassio43@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'gomesrilary9@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"RILARY RUANY MACEDO GOMES"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'RILARY RUANY MACEDO GOMES', 'gomesrilary9@gmail.com', 'student', 5260258, '3º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 5260258, class_year = '3º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'gomesrilary9@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'ruan11289@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"RUAN SANTOS LIMA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'RUAN SANTOS LIMA', 'ruan11289@gmail.com', 'student', 2718388, '3º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 2718388, class_year = '3º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'ruan11289@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'limat6391@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"THAINA LIMA DA SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'THAINA LIMA DA SILVA', 'limat6391@gmail.com', 'student', 2704592, '3º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 2704592, class_year = '3º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'limat6391@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'leoufczf90@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"VINICIUS VIEIRA DE SOUSA ALVES"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'VINICIUS VIEIRA DE SOUSA ALVES', 'leoufczf90@gmail.com', 'student', 4902931, '3º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4902931, class_year = '3º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'leoufczf90@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'yagotaveira8@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"YAGO TAVEIRA DOS SANTOS"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'YAGO TAVEIRA DOS SANTOS', 'yagotaveira8@gmail.com', 'student', 3547360, '3º Ano', '78481cda-c091-40a6-b9da-4e90192e5f4a') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3547360, class_year = '3º Ano', course_id = '78481cda-c091-40a6-b9da-4e90192e5f4a', role = 'student' WHERE email = 'yagotaveira8@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aiannyg892@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"AIANNY VITORIA GOMES DE SOUSA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'AIANNY VITORIA GOMES DE SOUSA', 'aiannyg892@gmail.com', 'student', 3421053, '3º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3421053, class_year = '3º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'aiannyg892@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'analiviasilvasouza50@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ANA LIVIA SILVA SOUZA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'ANA LIVIA SILVA SOUZA', 'analiviasilvasouza50@gmail.com', 'student', 5117494, '3º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 5117494, class_year = '3º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'analiviasilvasouza50@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'anavitoria.rocha.7334@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ANA VITORIA ROCHA VIDAL"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'ANA VITORIA ROCHA VIDAL', 'anavitoria.rocha.7334@gmail.com', 'student', 2422492, '3º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 2422492, class_year = '3º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'anavitoria.rocha.7334@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'raykavidal8@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ANNA RAYKA LIMA VIDAL"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'ANNA RAYKA LIMA VIDAL', 'raykavidal8@gmail.com', 'student', 3800859, '3º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3800859, class_year = '3º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'raykavidal8@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'mayarabva2024@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"APARECIDA MAYARA FEITOZA FERREIRA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'APARECIDA MAYARA FEITOZA FERREIRA', 'mayarabva2024@gmail.com', 'student', 4822623, '3º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4822623, class_year = '3º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'mayarabva2024@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'pereirabrunayasmin@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"BRUNA YASMIN PEREIRA DA SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'BRUNA YASMIN PEREIRA DA SILVA', 'pereirabrunayasmin@gmail.com', 'student', 4783627, '3º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4783627, class_year = '3º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'pereirabrunayasmin@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'camilasamyla1507@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"CAMILA SAMYLA RODRIGUES TEIXEIRA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'CAMILA SAMYLA RODRIGUES TEIXEIRA', 'camilasamyla1507@gmail.com', 'student', 5260690, '3º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 5260690, class_year = '3º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'camilasamyla1507@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'vidalandrecarlos@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"CARLOS ANDRE VIDAL DOS SANTOS"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'CARLOS ANDRE VIDAL DOS SANTOS', 'vidalandrecarlos@gmail.com', 'student', 3801145, '3º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3801145, class_year = '3º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'vidalandrecarlos@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', '994980yh@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"CICERA YHASMIM SILVA LUCENA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'CICERA YHASMIM SILVA LUCENA', '994980yh@gmail.com', 'student', 3431187, '3º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3431187, class_year = '3º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = '994980yh@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'clausswendell123@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"CLAUSS WENDELL TAVARES DE LUNA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'CLAUSS WENDELL TAVARES DE LUNA', 'clausswendell123@gmail.com', 'student', 3415633, '3º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3415633, class_year = '3º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'clausswendell123@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'cristianofsampaio@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"CRISTIANO TAVARES SAMPAIO FILHO"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'CRISTIANO TAVARES SAMPAIO FILHO', 'cristianofsampaio@gmail.com', 'student', 3415638, '3º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3415638, class_year = '3º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'cristianofsampaio@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'dferreirasilva942@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"DIOGO FERREIRA SILVA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'DIOGO FERREIRA SILVA', 'dferreirasilva942@gmail.com', 'student', 3408662, '3º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3408662, class_year = '3º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'dferreirasilva942@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'ellenavila035@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ELLEN AVILA DE SANTANA ALVES"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'ELLEN AVILA DE SANTANA ALVES', 'ellenavila035@gmail.com', 'student', 2642662, '3º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 2642662, class_year = '3º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'ellenavila035@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'emanuellyalberto09@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"EMANUELLY ALBERTO MIRANDA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'EMANUELLY ALBERTO MIRANDA', 'emanuellyalberto09@gmail.com', 'student', 4430968, '3º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 4430968, class_year = '3º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'emanuellyalberto09@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'eriknascimentodossantos129@gm', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ERIK NASCIMENTO DOS SANTOS"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'ERIK NASCIMENTO DOS SANTOS', 'eriknascimentodossantos129@gm', 'student', 3481504, '3º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3481504, class_year = '3º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'eriknascimentodossantos129@gm';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'ezequielinaci75@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"EZEQUIEL INACIO SANTOS"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'EZEQUIEL INACIO SANTOS', 'ezequielinaci75@gmail.com', 'student', 3420817, '3º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3420817, class_year = '3º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'ezequielinaci75@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'aniellypereira2008@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"FATIMA ANIELLY ALVES PEREIRA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'FATIMA ANIELLY ALVES PEREIRA', 'aniellypereira2008@gmail.com', 'student', 3417505, '3º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3417505, class_year = '3º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'aniellypereira2008@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'weslleyfernandes297@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"FRANCISCO WESLLEY FERNANDES FERREIRA"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'FRANCISCO WESLLEY FERNANDES FERREIRA', 'weslleyfernandes297@gmail.com', 'student', 3417507, '3º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3417507, class_year = '3º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'weslleyfernandes297@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'geaneleite72108@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"GEANE LEITE GALVAO"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'GEANE LEITE GALVAO', 'geaneleite72108@gmail.com', 'student', 3549491, '3º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3549491, class_year = '3º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'geaneleite72108@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'isadoramariaramalho@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ISADORA MARIA RAMALHO CRUZ"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'ISADORA MARIA RAMALHO CRUZ', 'isadoramariaramalho@gmail.com', 'student', 3411568, '3º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 3411568, class_year = '3º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'isadoramariaramalho@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', 'ribeirosisadora777@gmail.com', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ISADORA RIBEIRO DOS SANTOS"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'ISADORA RIBEIRO DOS SANTOS', 'ribeirosisadora777@gmail.com', 'student', 2170635, '3º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 2170635, class_year = '3º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = 'ribeirosisadora777@gmail.com';
    END IF;
    new_user_id := NULL;
    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', '5262002.sem.email@seduc.ce.', '', now(), '{"provider":"email","providers":["email"]}', '{"full_name":"ISLA SARA BANDEIRA RODRIGUES"}', now(), now())
    ON CONFLICT (email) WHERE (is_sso_user = false) DO NOTHING RETURNING id INTO new_user_id;
    IF new_user_id IS NOT NULL THEN
        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id) VALUES (new_user_id, 'ISLA SARA BANDEIRA RODRIGUES', '5262002.sem.email@seduc.ce.', 'student', 5262002, '3º Ano', '94da45a7-7fc5-4054-a318-98e53aa339d6') ON CONFLICT (id) DO NOTHING;
    ELSE
        UPDATE public.profiles SET enrollment_number = 5262002, class_year = '3º Ano', course_id = '94da45a7-7fc5-4054-a318-98e53aa339d6', role = 'student' WHERE email = '5262002.sem.email@seduc.ce.';
    END IF;
END $$;