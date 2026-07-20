USE college_management;

SELECT * FROM students;
SELECT *FROM teachers;

START TRANSACTION;
UPDATE students SET percentage = 95 WHERE student_id = 101;
ROLLBACK;
SELECT student_id, first_name, percentage FROM students WHERE student_id = 101;

START TRANSACTION;
UPDATE students SET semester = 4 WHERE course = 'AI & ML';
SELECT student_id, first_name, semester FROM students WHERE course = 'AI & ML';
COMMIT;

START TRANSACTION;
SAVEPOINT sp1;
DELETE FROM students WHERE student_id = 109;
SELECT * FROM students;
ROLLBACK TO sp1;
SELECT * FROM students;
COMMIT;

START TRANSACTION;
UPDATE teachers SET salary = salary + 5000 WHERE city = 'Mumbai';
SELECT teacher_id, first_name, salary FROM teachers WHERE city = 'Mumbai';
ROLLBACK;
