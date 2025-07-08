--Example of SQL Code--
DROP TABLE IF EXISTS Students;
--Create a table named 'Students'--
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FIRSTNAME VARCHAR(50),
    LASTNAME VARCHAR(50),
    AGE INT,
    GRADE VARCHAR(10)
    );

--Insert data into the 'Students' table--
INSERT INTO Students (STUDENTID, FIRSTNAME, LASTNAME, AGE, GRADE )
VALUES (1, 'Ian', 'Smith', 20, 'A'),
       (2, 'Sally', 'Johnson', 22, 'B'),
       (3, 'Olivia', 'Burns', 19, 'C'),
       (4, 'Kenny', 'Walters', 21, 'B'),
       (5, 'Mia', 'Davis', 23, 'A');

--Select all data from the 'Students' table--
SELECT * FROM Students;

--Update a student's grade--
UPDATE Students
SET GRADE = 'A+'
WHERE STUDENTID = 3;

--Delete a student from the 'Students' table--
DELETE FROM Students 
WHERE STUDENTID = 2;

--Select all data from the 'Students' table afte updates-- 
SELECT * FROM Students;

--Select students with a specific age--
SELECT * FROM Students
WHERE AGE = 20;

--Select students with a specific grade--
SELECT * FROM Students
WHERE GRADE = 'A';

--Count the number of students in each grade--
SELECT GRADE, COUNT(*) AS NumberOfStudents
FROM Students
GROUP BY GRADE;

--Select students ordered by age--
SELECT * FROM Students
ORDER BY AGE;