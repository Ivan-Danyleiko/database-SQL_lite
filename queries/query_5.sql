SELECT subjects.subject_name
FROM subjects
JOIN teachers ON subjects.teacher_id = teachers.teacher_id
WHERE teachers.first_name = "Ім'я_викладача" AND teachers.last_name = 'Прізвище_викладача';
