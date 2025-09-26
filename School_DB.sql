CREATE DATABASE SCHOOL_DB;
USE SCHOOL_DB;
CREATE TABLE STUDENTS_RECORDS (
Rollno INT AUTO_INCREMENT PRIMARY KEY,
Name VARCHAR(40),
Class VARCHAR(40),
Subjects VARCHAR(50),
Marks INT NOT NULL,
Grade VARCHAR(2));
INSERT INTO STUDENTS_RECORDS (Name, Class, Subjects, Marks, Grade) VALUES 
('Kiran', '9th', 'English', 67, 'C'),
('Anita', '10th', 'Science', 95, 'A'),
('Ravi', '8th', 'Math', 73, 'B'),
('Lakshmi', '10th', 'Math', 88, 'A'),
('Suresh', '9th', 'Science', 81, 'B'),
('Divya', '6th', 'English', 92, 'A'),
('Manoj', '7th', 'Math', 60, 'D'),
('Neha', '10th', 'Science', 85, 'B'),
('Karthik', '9th', 'English', 77, 'B'),
('Pooja', '10th', 'Math', 99, 'A');
-- MAX Maximum Marks and Student Rollno
SELECT MAX(MARKS) FROM STUDENTS_RECORDS;
SELECT Rollno, Name, Marks
FROM STUDENTS_RECORDS
WHERE Marks = (SELECT MAX(Marks) FROM STUDENTS_RECORDS);

-- Minimum Marks and Student Rollno
SELECT Rollno, MIN(MARKS) FROM STUDENTS_RECORDS;
SELECT Rollno, Name, Marks
FROM STUDENTS_RECORDS
WHERE Marks = (SELECT MIN(Marks) FROM STUDENTS_RECORDS);

-- count of Students in Each Class
SELECT Class, COUNT(*) AS Student_Count
FROM STUDENTS_RECORDS
GROUP BY Class;

-- Total Marks of All Students
SELECT SUM(Marks) AS Total_Marks
FROM STUDENTS_RECORDS;

-- avg Marks per Class
SELECT Class, AVG(Marks) AS Avg_Marks
FROM STUDENTS_RECORDS
GROUP BY Class;
-- avg Marks per Class and Subject
SELECT Class, Subjects, AVG(Marks) AS Avg_Marks
FROM STUDENTS_RECORDS
GROUP BY Class, Subjects;


-- COUNT
SELECT Name, COUNT(Marks) FROM STUDENTS_RECORDS
WHERE Marks > 60
GROUP BY Name;
-- SUM
SELECT SUM(Marks) FROM STUDENTS_RECORDS;

SELECT SUM(Marks) FROM STUDENTS_RECORDS
WHERE Subjects = 'Math';
-- AVG 
SELECT AVG(Marks) FROM STUDENTS_RECORDS
WHERE Grade = 'A';
SELECT COUNT(*) AS Total_A_Students
FROM STUDENTS_RECORDS
WHERE Grade = 'B';
