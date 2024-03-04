SELECT teachers.first_name,
       teachers.last_name,
       AVG(grades.grade) AS average_grade
FROM teachers
JOIN subjects ON teachers.teacher_id = subjects.teacher_id
JOIN grades ON subjects.subject_id = grades.subject_id
GROUP BY teachers.teacher_id
ORDER BY average_grade DESC;
