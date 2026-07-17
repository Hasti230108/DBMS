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