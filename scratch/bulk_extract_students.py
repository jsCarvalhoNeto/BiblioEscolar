import xlrd
import os
import re

# Course Mapping
COURSES = {
    'informatica': '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534',
    'infformatica': '1ae8c5d3-9523-4aa0-aa53-50c4fd7ec534',
    'enfermagem': '94da45a7-7fc5-4054-a318-98e53aa339d6',
    'comercio': '104f1b0d-6197-4fcd-9c1f-675c158bb9be',
    'edificações': '78481cda-c091-40a6-b9da-4e90192e5f4a',
    'estetica': 'a52adcb4-2cf5-426c-a382-b75017315c78'
}

def extract_students_from_file(file_path, course_id, class_year):
    try:
        wb = xlrd.open_workbook(file_path)
        sh = wb.sheet_by_index(0)
    except Exception as e:
        print(f"Error opening {file_path}: {e}")
        return []

    students = []
    
    for i in range(11, sh.nrows):
        row = sh.row_values(i)
        # The structure check based on 'ALUNO:' at index 4 (from previous script)
        if len(row) > 7 and str(row[4]).strip().upper() == 'ALUNO:':
            enrollment = str(row[3]).strip().split('.')[0]
            if not enrollment or enrollment == '0': continue
            
            name = str(row[7]).strip()
            email = ''
            if len(row) > 26:
                email = str(row[26]).strip()
            
            # Check for split email (common in these reports)
            if len(row) > 27 and email and not (email.endswith('.com') or email.endswith('.br')):
                email += str(row[27]).strip()
            
            if not email or '@' not in email:
                email = f"aluno_{enrollment}@biblioedu.com"
            
            students.append({
                'name': name,
                'email': email,
                'enrollment': enrollment,
                'class_year': class_year,
                'course_id': course_id
            })
            
    return students

def generate_sql(all_students):
    sql_statements = [
        "DO $$",
        "DECLARE",
        "    new_user_id UUID;",
        "BEGIN",
        "    -- Bulk Student Import"
    ]
    
    for student in all_students:
        name_sql = student['name'].replace("'", "''")
        email_sql = student['email'].replace("'", "''").lower()
        enrollment = student['enrollment']
        class_year = student['class_year']
        course_id = student['course_id']
        
        sql_statements.append(f"    -- Student: {student['name']}")
        sql_statements.append(f"    new_user_id := NULL;")
        sql_statements.append(f"    INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)")
        sql_statements.append(f"    VALUES ('00000000-0000-0000-0000-000000000000', gen_random_uuid(), 'authenticated', 'authenticated', '{email_sql}', '', now(), '{{\"provider\":\"email\",\"providers\":[\"email\"]}}', '{{\"full_name\":\"{name_sql}\"}}', now(), now())")
        sql_statements.append(f"    ON CONFLICT (email) DO NOTHING")
        sql_statements.append(f"    RETURNING id INTO new_user_id;")
        
        sql_statements.append(f"    IF new_user_id IS NOT NULL THEN")
        sql_statements.append(f"        INSERT INTO public.profiles (id, full_name, email, role, enrollment_number, class_year, course_id)")
        sql_statements.append(f"        VALUES (new_user_id, '{name_sql}', '{email_sql}', 'student', {enrollment}, '{class_year}', '{course_id}')")
        sql_statements.append(f"        ON CONFLICT (id) DO NOTHING;")
        sql_statements.append(f"    ELSE")
        sql_statements.append(f"        -- Update existing user profile if email matches")
        sql_statements.append(f"        UPDATE public.profiles SET enrollment_number = {enrollment}, class_year = '{class_year}', course_id = '{course_id}', role = 'student' WHERE email = '{email_sql}';")
        sql_statements.append(f"    END IF;")
        sql_statements.append("")

    sql_statements.append("END $$;")
    return "\n".join(sql_statements)

if __name__ == "__main__":
    base_path = r'D:\Projetos\BiblioEdu\dados brutos\alunos'
    all_students = []
    
    files = os.listdir(base_path)
    for filename in files:
        if not filename.endswith('.xls'): continue
        if filename in ['relatorio.xls', 'informatica.xls']: continue # Skip generic reports
        
        print(f"Processing {filename}...")
        
        # Determine Year
        year = '1º Ano'
        if filename.startswith('2'): year = '2º Ano'
        elif filename.startswith('3'): year = '3º Ano'
        
        # Determine Course
        course_id = None
        for keyword, cid in COURSES.items():
            if keyword in filename.lower():
                course_id = cid
                break
        
        if not course_id:
            print(f"Skipping {filename}: Could not determine course.")
            continue
            
        students = extract_students_from_file(os.path.join(base_path, filename), course_id, year)
        print(f"  Found {len(students)} students.")
        all_students.extend(students)
        
    if all_students:
        sql_content = generate_sql(all_students)
        output_file = r'D:\Projetos\BiblioEdu\scratch\import_all_students.sql'
        with open(output_file, 'w', encoding='utf-8') as f:
            f.write(sql_content)
        print(f"\nDone! Total students found: {len(all_students)}")
        print(f"SQL generated in: {output_file}")
