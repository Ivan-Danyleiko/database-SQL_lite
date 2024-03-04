SELECT groups.group_id,
       groups.group_name,
       AVG(grades.grade) AS average_grade
FROM groups
JOIN students ON groups.group_id = students.group_id
JOIN grades ON students.student_id = grades.student_id
JOIN subjects ON grades.subject_id = subjects.subject_id
WHERE subjects.subject_name = 'YourSubject'
GROUP BY groups.group_id
ORDER BY average_grade DESC;
