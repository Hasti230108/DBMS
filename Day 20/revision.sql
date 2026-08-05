USE college_management;

SELECT * FROM employees;

SELECT * FROM departments;

SELECT * FROM teachers;

SELECT first_name, last_name, salary FROM employees;

SELECT * FROM employees
WHERE salary > 30000;

SELECT * FROM employees
WHERE department = 'IT';

SELECT * FROM employees
ORDER BY salary DESC;

SELECT * FROM employees
ORDER BY first_name ASC;

SELECT COUNT(*) AS total_employees
FROM employees;

SELECT MAX(salary) AS highest_salary
FROM employees;

SELECT MIN(salary) AS lowest_salary
FROM employees;

SELECT AVG(salary) AS average_salary
FROM employees;

SELECT SUM(salary) AS total_salary
FROM employees;

SELECT department, COUNT(*) AS total
FROM employees GROUP BY department;

SELECT department, AVG(salary) AS average_salary
FROM employees GROUP BY department;

SELECT e.emp_id, e.first_name, d.department_name
FROM employees e
INNER JOIN departments d
ON e.dept_id = d.dept_id;

SELECT e.first_name, e.last_name, d.department_name
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id;

SELECT e.first_name, e.last_name, m.first_name AS manager_name
FROM employees e
SELF JOIN employees m
ON e.manager_id = m.emp_id;

SELECT first_name, salary
FROM employees WHERE salary > ( 
    SELECT AVG(salary) FROM employees
);

SELECT DISTINCT department
FROM employees;

SELECT * FROM employees
WHERE salary BETWEEN 30000 AND 50000;

SELECT * FROM employees
WHERE first_name LIKE 'R%';

SELECT * FROM employees
WHERE department IN ('IT','HR');

DESC employees;

DESC departments;

SHOW TABLES;