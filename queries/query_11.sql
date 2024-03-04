SELECT teachers.first_name,
       teachers.last_name,
       AVG(grades.grade) AS average_grade
FROM teachers
JOIN subjects ON teachers.teacher_id = subjects.teacher_id
JOIN grades ON subjects.subject_id = grades.subject_id
JOIN students ON grades.student_id = students.student_id
WHERE teachers.teacher_id = 'ID_викладача' AND students.student_id = 'ID_студента'
GROUP BY teachers.teacher_id, students.student_id;
