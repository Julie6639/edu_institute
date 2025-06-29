-- creating databas
CREATE DATABASE edu_institute;
USE edu_institute;

-- creating tables
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    gender CHAR(1),
    enrollment_date DATE,
    program VARCHAR(50)
);
-- data entry
INSERT INTO students (student_id, name, age, gender, enrollment_date, program)
VALUES
(1, 'chalin ruto', 22, 'F', '2024-01-10', 'Data Science'),
(2, 'Brian Otieno', 24, 'M', '2023-09-15', 'Cyber Security'),
(3, 'Clara Wanjiru', 21, 'F', '2024-02-01', 'Software Engineering'),
(4, 'Albert Ojwang', 23, 'M', '2023-11-20', 'Data Science'),
(5, 'Evelyn Achieng', 20, 'F', '2024-03-12', 'Artificial Intelligence'),
(6, 'simon njenge' ,19, 'M', 2024-06-14, 'Data Science'),
(7, 'Baxy Pendo', 25, 'F' '2023-05-2015', 'cyber Security');
SELECT * FROM  students;
-- basic query
SELECT * FROM students WHERE  program = 'Data Science'; 

SELECT COUNT(*) AS "Total students"
FROM students;

 -- function use for current date
SELECT CURRENT_DATE() AS "Today's Date";

-- students name and enrollment date
SELECT UPPER(name) AS name, enrollment_date
FROM students;

-- advanced query number per program
SELECT program, COUNT(*) AS "Number of Students"
FROM students
GROUP BY program
ORDER BY "Number of Students" DESC;

-- youngest student
SELECT name, age
FROM students
ORDER BY age ASC
LIMIT 1;
