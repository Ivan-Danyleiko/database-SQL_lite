Project "database-SQL_lite"
This project is an educational database created for learning purposes. The database contains information about students, groups, teachers, subjects, and their grades.

Table Descriptions
students: A table that contains information about students, such as their first name, last name, and group.

groups: A table that defines groups of students based on their identifier and group name.

teachers: A table that contains data about teachers, including their first name and last name.

subjects: A table that defines subjects, their names, and associated teachers.

grades: A table that stores information about students' grades in different subjects, with an indication of the exam date.

How to Run the Project
Install Dependencies:

bash
Copy code
pip install -r requirements.txt
Run the main script to create the database and populate it with random data:

bash
Copy code
python main.py
Execute SQL queries using the script:

bash
Copy code
python run_queries.py
Project Structure
main.py: Script for creating the database and populating it with random data.
run_queries.py: Script for executing SQL queries from the queries folder.
queries/: Folder containing SQL queries.
Requirements
Python 3.x
SQLite
...
Database Schema
The creation_tables.sql file contains SQL queries for creating database tables.