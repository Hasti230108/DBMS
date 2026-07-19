CREATE DATABASE college_management;
USE college_management;
CREATE TABLE teachers(
    teacher_id int primary key,
    first_name varchar(50) not null,
    last_name varchar(50),
    subject varchar(50) not null,
    experience int,
    salary int not null,
    city varchar(30)
);
INSERT into teachers values(201, "Himanshi", "Shah", "C++", 5, 45000, "Mumbai");
INSERT into teachers(teacher_id, first_name, last_name, subject, salary, city) values(202, "Tinker", "Bell", "Java", 40000, "Pune");
INSERT into teachers values(203, "Hassan", "Khan", "Python", 7, 50000, "Bangalore");
INSERT into teachers values(204, "Twinkle", "Kamble", "Data Structures", 2, 42000, "Delhi");
SELECT * FROM teachers;
UPDATE teachers SET experience = 3 WHERE teacher_id = 202;
INSERT into teachers values(205, "Kartik", "Sharma", "React js", 4, 48000, "Mumbai");
SELECT teacher_id, first_name, subject, salary FROM teachers;

SELECT * From teachers;
SELECT first_name, subject From teachers;
SELECT * From teachers WHERE salary > 45000;
SELECT * From teachers WHERE city = "Mumbai";
SELECT * From teachers WHERE experience >= 4;
SELECT * From teachers WHERE subject = "Python";
SELECT * From teachers WHERE city = "Mumbai" or city = "Pune";
SELECT * From teachers WHERE salary BETWEEN 42000 AND 48000;
SELECT * FROM teachers ORDER BY salary ASC;
SELECT * FROM teachers ORDER BY salary DESC;
SELECT DISTINCT city FROM teachers;
SELECT * FROM teachers LIMIT 3;
SELECT * FROM teachers WHERE first_name LIKE "T%";
SELECT * FROM teachers WHERE last_name LIKE "%a";
SELECT * FROM teachers WHERE subject LIKE "%Data%";
SELECT * From teachers WHERE city = "Mumbai" AND  salary  > 45000 AND experience >= 4;
SELECT * From teachers WHERE salary != 45000;
SELECT COUNT(*) FROM teachers;
SELECT MAX(salary) FROM teachers;
SELECT SUM(salary) FROM teachers;
SELECT MIN(salary) FROM teachers;
SELECT AVG(salary) FROM teachers;
SELECT * FROM teachers WHERE experience IS NULL;
SELECT * FROM teachers WHERE experience IS NOT NULL;

CREATE TABLE students(
    student_id int PRIMARY KEY,
    first_name varchar(15)  NOT NULL,
    last_name varchar(15) NOT NULL,
    age int,
    gender varchar(10) NOT NULL,
    city varchar(15),
    course varchar(50) NOT NULL,
    semester int,
    marks int
);

INSERT INTO students VALUES
(101, 'Hasti', 'Karaniya', 18, 'Female', 'Mumbai', 'AI & ML', 3, 91),
(102, 'Rahul', 'Sharma', 21, 'Male', 'Pune', 'Data Science', 5, 76),
(103, 'Ananya', 'Patel', 20, 'Female', 'Delhi', 'Web Development', 4, 88),
(104, 'Elia', 'Khan', 18, 'Male', 'Mumbai', 'AI & ML', 3, 89),
(105, 'Riya', 'Kulkarni', 22, 'Female', 'Bangalore', 'Data Science', 5, 56),
(106, 'Aarav', 'Mehta', 19, 'Male', 'Pune', 'Information Technology', 2, 83),
(107, 'Tejal', 'Konjiya', 19, 'Female', 'Mumbai', 'AI & ML', 3, 84),
(108, 'Kartik', 'Sharma', 20, 'Male', 'Delhi', 'Web Development', 4, 57),
(109, 'Sanya', 'Patel', 21, 'Female', 'Bangalore', 'Information Technology', 2, 92),
(110, 'Tahseen', 'Raza', 20, 'Male', 'Mumbai', 'AI & ML', 3, 85);

SELECT * FROM students;
SELECT * FROM students WHERE marks > 80;
SELECT * FROM students WHERE city = 'Mumbai';
SELECT * FROM students WHERE city = 'Mumbai' OR city = 'Pune';
SELECT * FROM students WHERE marks BETWEEN 70 AND 90;
SELECT * FROM students WHERE course = 'AI & ML';
SELECT first_name, marks FROM students WHERE marks > 80;
SELECT DISTINCT city FROM students;
SELECT * FROM students LIMIT 5;
SELECT MAX(marks), MIN(marks), AVG(marks), SUM(marks) FROM students;
SELECT COUNT(*) FROM students;
SELECT * FROM students ORDER BY marks DESC;
SELECT * FROM students ORDER BY first_name ASC;
SELECT * FROM students WHERE first_name LIKE 'T%';
SELECT * FROM students WHERE last_name LIKE '%a';

ALTER TABLE students ADD COLUMN email varchar(50);
UPDATE students SET email = 'hasti.k@abc.edu' WHERE student_id = 101;
UPDATE students SET email = 'rahul.s@abc.edu' WHERE student_id = 102;
UPDATE students SET email = 'ananya.p@abc.edu' WHERE student_id = 103;
UPDATE students SET email = 'elia.k@abc.edu' WHERE student_id = 104;
UPDATE students SET email = 'riya.k@abc.edu' WHERE student_id = 105;
UPDATE students SET email = 'aarav.m@abc.edu' WHERE student_id = 106;
UPDATE students SET email = 'tejal.k@abc.edu' WHERE student_id = 107;
UPDATE students SET email = 'kartik.s@abc.edu' WHERE student_id = 108;
UPDATE students SET email = 'sanya.p@abc.edu' WHERE student_id = 109;
UPDATE students SET email = 'tahseen.r@abc.edu' WHERE student_id = 110;
ALTER TABLE students MODIFY city varchar(50);
ALTER TABLE students RENAME COLUMN marks TO percentage;
ALTER TABLE students ADD COLUMN phone varchar(15);
UPDATE students SET phone = '7656296301' WHERE student_id = 102;
UPDATE students SET phone = '9124568743' WHERE student_id = 105;
ALTER TABLE students DROP COLUMN email;
RENAME TABLE students TO college_students;
SELECT * FROM college_students;
RENAME TABLE college_students TO students;
DELETE FROM students WHERE student_id = 109;
