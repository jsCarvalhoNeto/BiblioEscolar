import xlrd
import json
import uuid

def extract_students(file_path, course_id, class_year):
    wb = xlrd.open_workbook(file_path)
    sh = wb.sheet_by_index(0)
    
    sql_statements = ["DO $$", "DECLARE", "    new_user_id UUID;", "BEGIN"]
    
    for i in range(11, sh.nrows):
        row = sh.row_values(i)
        if len(row) > 7 and str(row[4]).strip() == 'ALUNO:':
            enrollment = str(row[3]).strip().split('.')[0]
            if not enrollment or enrollment == '0': continue
            
            name = str(row[7]).strip()
            email = ''
            if len(row) > 26:
                email = str(row[26]).strip()
            
            # Check for split email
            if len(row) > 27 and email and not (email.endswith('.com') or email.endswith('.br')):
                email += str(row[27]).strip()
            
            if not email or '@' not in email:
                email = f"aluno_{enrollment}@biblioedu.com"
            
            # Sanitize single quotes for SQL
            name_sql = name.replace("'", "''")
            email_sql = email.replace("'", "''")
            
            sql_statements.append(f"    -- {name}")
            sql_statements.append(f"    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)")
            sql_statements.append(f"    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', '{email_sql}', '', now(), '{{\"provider\":\"email\",\"providers\":[\"email\"]}}', '{{\"full_name\":\"{name_sql}\"}}', now(), now())")
            sql_statements.append(f"    ON CONFLICT (email) DO NOTHING")
            sql_statements.append(f"    RETURNING id INTO new_user_id;")
            
            sql_statements.append(f"    IF new_user_id IS NOT NULL THEN")
            sql_statements.append(f"        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)")
            sql_statements.append(f"        VALUES (new_user_id, '{name_sql}', '{email_sql}', 'student', {enrollment}, '{class_year}', '{course_id}')")
            sql_statements.append(f"        ON CONFLICT (id) DO NOTHING;")
            sql_statements.append(f"    ELSE")
            sql_statements.append(f"        UPDATE public.profiles SET enrollment_number = {enrollment}, class_year = '{class_year}', course_id = '{course_id}', role = 'student' WHERE email = '{email_sql}';")
            sql_statements.append(f"    END IF;")
            sql_statements.append("");

    sql_statements.append("END $$;")
    return "\n".join(sql_statements)

if __name__ == "__main__":
    course_comercio = '104f1b0d-6197-4fcd-9c1f-675c158bb9be'
    file_path = r'D:\Projetos\BiblioEdu\dados brutos\alunos\1 comercio.xls'
    sql_content = extract_students(file_path, course_comercio, '1º Ano')
    with open(r'D:\Projetos\BiblioEdu\scratch\import_students.sql', 'w', encoding='utf-8') as f:
        f.write(sql_content)
    print("SQL generated successfully in scratch/import_students.sql")
