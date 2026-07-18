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
