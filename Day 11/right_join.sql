USE college_management;

SELECT e.first_name, d.department_name
FROM departments AS d
RIGHT JOIN employees AS e
ON e.dept_id = d.dept_id;

SELECT e.first_name, d.department_name
FROM employees AS e
RIGHT JOIN departments AS d
ON e.dept_id = d.dept_id;

SELECT e.first_name, e.email, d.department_name
FROM departments AS d
RIGHT JOIN employees AS e 
ON e.dept_id = d.dept_id;

SELECT e.first_name, d.department_name
FROM departments AS d
RIGHT JOIN employees AS e
ON e.dept_id = d.dept_id
WHERE d.department_name = "IT";

SELECT d.department_name, COUNT(e.emp_id)
FROM departments d
RIGHT JOIN employees e
ON d.dept_id = e.dept_id
GROUP BY d.department_name
ORDER BY COUNT(e.emp_id) DESC;

SELECT e.first_name, e.salary, d.department_name
FROM departments AS d
RIGHT JOIN employees AS e
ON e.dept_id = d.dept_id
WHERE e.salary > (
    SELECT AVG(salary)
    FROM employees
);

SELECT e.first_name, e.email, d.department_name
FROM departments AS d
RIGHT JOIN employees AS e
ON e.dept_id = d.dept_id
WHERE e.email LIKE "r%";

SELECT d.department_name, COUNT(e.emp_id)
FROM departments d
RIGHT JOIN employees e
ON d.dept_id = e.dept_id
GROUP BY d.department_name
ORDER BY COUNT(e.emp_id) DESC
LIMIT 1;

SELECT e.first_name, e.salary, d.department_name
FROM departments AS d
RIGHT JOIN employees AS e
ON e.dept_id = d.dept_id
ORDER BY e.salary DESC;

SELECT e.first_name, e.salary, d.department_name
FROM departments AS d
RIGHT JOIN employees AS e
ON e.dept_id = d.dept_id
WHERE e.salary BETWEEN 30000 AND 40000;

SELECT e.first_name, d.department_name
FROM departments AS d
RIGHT JOIN employees AS e
ON e.dept_id = d.dept_id
ORDER BY e.first_name ASC;