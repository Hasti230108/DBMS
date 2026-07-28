USE college_management;

ALTER TABLE employees ADD manager_id int;

UPDATE employees 
SET manager_id = 103 
WHERE emp_id IN (101, 102);

UPDATE employees 
SET manager_id = 101 
WHERE emp_id = 107;

SELECT e.first_name AS Employee, m.first_name AS Manager
FROM employees e
JOIN employees m
ON e.manager_id = m.emp_id;

SELECT e1.first_name AS Employee1, e2.first_name AS Employee2, e1.dept_id
FROM employees e1
JOIN employees e2
ON e1.dept_id = e2.dept_id
WHERE e1.emp_id < e2.emp_id;

SELECT e1.first_name AS Higher_Paid, e2.first_name AS Lower_Paid, e1.salary AS Higher_Salary, e2.salary AS Lower_Salary
FROM employees e1
JOIN employees e2
ON e1.salary > e2.salary;

SELECT first_name FROM employees
UNION
SELECT department_name FROM departments;

SELECT department FROM employees
UNION
SELECT department_name FROM departments;

SELECT department FROM employees
UNION ALL
SELECT department_name FROM departments;

SELECT first_name FROM employees WHERE first_name LIKE 'R%'
UNION
SELECT department_name FROM departments WHERE department_name LIKE 'R%';