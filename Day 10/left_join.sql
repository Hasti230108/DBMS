USE college_management;

SELECT e.first_name, d.department_name
FROM departments AS d
LEFT JOIN employees AS e
ON e.dept_id = d.dept_id;

SELECT e.first_name, d.department_name
FROM employees AS e
LEFT JOIN departments AS d
ON e.dept_id = d.dept_id;

SELECT e.first_name, d.department_name
FROM departments AS d
INNER JOIN employees AS e
ON e.dept_id = d.dept_id
WHERE d.department_name = "IT";

SELECT d.department_name, COUNT(e.emp_id)
FROM departments d
LEFT JOIN employees e
ON d.dept_id = e.dept_id
GROUP BY d.department_name
ORDER BY COUNT(e.emp_id) DESC;

SELECT d.department_name, COUNT(e.emp_id)
FROM departments d
LEFT JOIN employees e
ON d.dept_id = e.dept_id
GROUP BY d.department_name
ORDER BY COUNT(e.emp_id) DESC
LIMIT 1;
