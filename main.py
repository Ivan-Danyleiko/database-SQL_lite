import sqlite3
from faker import Faker
import random

fake = Faker()

conn = sqlite3.connect('your_database_name.db')
cursor = conn.cursor()

for i in range(3):
    group_name = fake.word()
    cursor.execute("INSERT INTO groups (group_name) VALUES (?)", (group_name,))
    conn.commit()

for i in range(3):
    teacher_first_name = fake.first_name()
    teacher_last_name = fake.last_name()
    cursor.execute("INSERT INTO teachers (first_name, last_name) VALUES (?, ?)", (teacher_first_name, teacher_last_name))
    conn.commit()

for i in range(30):
    first_name = fake.first_name()
    last_name = fake.last_name()
    group_id = random.randint(1, 3)
    cursor.execute("INSERT INTO students (first_name, last_name, group_id) VALUES (?, ?, ?)", (first_name, last_name, group_id))
    conn.commit()

subjects = ["Math", "Physics", "Chemistry", "History", "English"]
for subject in subjects:
    teacher_id = random.randint(1, 3)
    cursor.execute("INSERT INTO subjects (subject_name, teacher_id) VALUES (?, ?)", (subject, teacher_id))
    conn.commit()

for student_id in range(1, 31):
    for subject_id in range(1, 6):
        grade = random.randint(1, 10)
        exam_date = fake.date_this_year()
        cursor.execute("INSERT INTO grades (student_id, subject_id, grade, exam_date) VALUES (?, ?, ?, ?)", (student_id, subject_id, grade, exam_date))
        conn.commit()

conn.close()
