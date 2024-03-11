/* Database Creation and Table Setup */
-- Create a database called 'edu_institute'
CREATE DATABASE edu_institute;

USE edu_institute;

-- Create a table named students
CREATE TABLE students (
	student_id INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(50),
	age INT,
	gender CHAR(1),
	enrollment_date DATE,
	program VARCHAR(50)
);

/* Data Insertion */

INSERT INTO
	students (name, age, gender, enrollment_date, program)
VALUES 
	('John Doe', 25, 'M', '2022-01-15', 'Computer Science'),
	('Jane Smith', 22, 'F', '2022-02-20', 'Data Science'),
	('Michael Johnson', 28, 'M', '2021-12-10', 'Mathematics'),
	('Emily Brown', 23, 'F', '2022-03-05', 'Engineering'),
	('David Lee', 27, 'M', '2022-02-10', 'Data Science');
	
/* Basic Queries */
	
-- Select all columns for all students in the "Data Science" program 
SELECT * 
FROM students
WHERE program = 'Data Science';

-- Total number of students as 'Total Students'
SELECT COUNT(student_id) AS 'Total Students'
FROM students;

/* Function Usage */

-- Display the current date in a column named 'Today's Date'
SELECT CURRENT_DATE() AS "Today's Date"
FROM students;

-- Return the student names and enrollment dates with the names in uppercase
SELECT 
	UPPER(name) AS Name,
	enrollment_date
FROM students;

/* Advanced Queries */

-- Number of students in each program
SELECT 
	program,
	COUNT(student_id) AS 'Number of Students'
FROM students
GROUP BY program
ORDER BY COUNT(student_id)  DESC;

-- The youngest student's name and age
SELECT 
	name,
	age
FROM students
ORDER BY age
LIMIT 1;

