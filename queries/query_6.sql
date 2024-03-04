SELECT students.student_id, students.first_name, students.last_name
FROM students
JOIN groups ON students.group_id = groups.group_id
WHERE groups.group_name = 'Назва_групи';
