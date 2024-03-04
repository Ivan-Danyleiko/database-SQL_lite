SELECT students.student_id,
       students.first_name,
       students.last_name,
       grades.grade
FROM students
JOIN grades ON students.student_id = grades.student_id
JOIN subjects ON grades.subject_id = subjects.subject_id
JOIN groups ON students.group_id = groups.group_id
WHERE groups.group_name = 'Назва_групи'
  AND subjects.subject_name = 'Назва_предмета'
ORDER BY grades.exam_date DESC
LIMIT 1;
