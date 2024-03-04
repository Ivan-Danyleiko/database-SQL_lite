SELECT subjects.subject_name
FROM students
JOIN grades ON students.student_id = grades.student_id
JOIN subjects ON grades.subject_id = subjects.subject_id
JOIN teachers ON subjects.teacher_id = teachers.teacher_id
WHERE students.student_id = 'ID_студента' AND teachers.teacher_id = 'ID_викладача';
