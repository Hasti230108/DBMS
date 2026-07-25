USE college_management;

SELECT * FROM departments;
SELECT * FROM employees;
SELECT e.first_name, d.department_name, e.salary FROM employees AS e INNER JOIN departments AS d ON e.dept_id = d.dept_id ORDER BY e.salary DESC;
SELECT e.first_name, e.email, d.department_name FROM employees AS e INNER JOIN departments AS d ON e.dept_id = d.dept_id WHERE d.department_name = "HR";
SELECT e.first_name, e.salary, d.department_name FROM employees e JOIN departments d ON e.dept_id = d.dept_id WHERE e.salary > (SELECT AVG(salary) FROM employees);
SELECT d.department_name, COUNT(*) FROM employees AS e INNER JOIN departments AS d ON e.dept_id = d.dept_id GROUP BY d.department_name;
SELECT d.department_name, MAX(e.salary) FROM employees AS e INNER JOIN departments AS d ON e.dept_id = d.dept_id GROUP BY d.department_name;
SELECT d.department_name, MIN(e.salary) FROM employees AS e INNER JOIN departments AS d ON e.dept_id = d.dept_id GROUP BY d.department_name;
SELECT e.first_name, e.salary, d.department_name FROM employees AS e INNER JOIN departments AS d ON e.dept_id = d.dept_id WHERE e.salary BETWEEN 30000 AND 40000;
SELECT e.first_name, d.department_name, e.email FROM employees AS e INNER JOIN departments AS d ON e.dept_id = d.dept_id WHERE e.email LIKE "r%";
SELECT e.first_name, d.department_name, e.salary FROM employees AS e INNER JOIN departments AS d ON e.dept_id = d.dept_id ORDER BY e.first_name ASC;
SELECT d.department_name, COUNT(*) AS total_employees FROM employees AS e INNER JOIN departments AS d ON e.dept_id = d.dept_id GROUP BY d.department_name ORDER BY total_employees DESC LIMIT 1;
