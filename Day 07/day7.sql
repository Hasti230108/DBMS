USE college_management;

SELECT * FROM teachers WHERE salary > 45000;
SELECT * FROM teachers WHERE city = 'Mumbai';
SELECT * FROM teachers WHERE experience BETWEEN 3 AND 6;
SELECT * FROM teachers ORDER BY salary DESC;
SELECT COUNT(*) FROM teachers;

SELECT * FROM students WHERE percentage > 85;
SELECT * FROM students WHERE city = 'Mumbai' OR city = 'Pune';
SELECT first_name, percentage FROM students WHERE course = 'AI & ML';
SELECT * FROM students ORDER BY percentage DESC LIMIT 3;
SELECT AVG(percentage) FROM students;

SELECT * FROM employees WHERE salary>30000;
SELECT * FROM employees WHERE department = 'IT';
SELECT * FROM employees WHERE salary BETWEEN 25000 AND 40000;
SELECT * FROM employees WHERE email LIKE 'r%';
SELECT * FROM employees WHERE department = 'HR' OR department = 'IT';
SELECT * FROM employees WHERE salary > 30000 AND department = 'IT';
SELECT * FROM employees ORDER BY salary ASC;
SELECT * FROM employees ORDER BY salary DESC;
SELECT DISTINCT department FROM employees;
SELECT * FROM employees ORDER BY salary DESC LIMIT 2;
SELECT COUNT(*) FROM employees;
SELECT AVG(salary) FROM employees;
SELECT MAX(salary) FROM employees;
SELECT SUM(salary) FROM employees;
SELECT MIN(salary) FROM employees;

SELECT * FROM departments;
SELECT * FROM departments WHERE department_name LIKE 'G%';
