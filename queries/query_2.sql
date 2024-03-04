SELECT students.student_id,
       students.first_name,
       students.last_name,
       AVG(grades.grade) AS average_grade
FROM students
JOIN grades ON students.student_id = grades.student_id
JOIN subjects ON grades.subject_id = subjects.subject_id
WHERE subjects.subject_name = 'Math'
GROUP BY students.student_id
ORDER BY average_grade DESC
LIMIT 1;
