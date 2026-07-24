USE college_management;

SELECT * FROM departments;
SELECT * FROM employees;

SELECT * FROM employees INNER JOIN departments ON employees.dept_id = departments.dept_id;
SELECT employees.first_name, departments.department_name FROM employees INNER JOIN departments ON employees.dept_id = departments.dept_id;
SELECT employees.first_name, employees.salary, departments.department_name FROM employees INNER JOIN departments ON employees.dept_id = departments.dept_id;
SELECT employees.first_name, departments.department_name FROM employees INNER JOIN departments ON employees.dept_id = departments.dept_id WHERE departments.department_name = "IT";
SELECT employees.first_name, employees.email, departments.department_name FROM employees INNER JOIN departments ON employees.dept_id = departments.dept_id;
SELECT employees.first_name, employees.salary, departments.department_name FROM employees INNER JOIN departments ON employees.dept_id = departments.dept_id WHERE salary > 30000;
SELECT employees.first_name, employees.salary, departments.department_name FROM employees INNER JOIN departments ON employees.dept_id = departments.dept_id ORDER BY salary DESC;
SELECT departments.department_name, COUNT(*) FROM employees INNER JOIN departments ON employees.dept_id = departments.dept_id GROUP BY departments.department_name;
SELECT departments.department_name, employees.email FROM employees INNER JOIN departments ON employees.dept_id = departments.dept_id WHERE departments.department_name = "HR";
SELECT e.first_name, d.department_name FROM employees AS e INNER JOIN departments AS d ON e.dept_id = d.dept_id;
SELECT e.first_name, e.email, e.salary, d.department_name FROM employees AS e INNER JOIN departments AS d ON e.dept_id = d.dept_id ORDER BY salary DESC;
SELECT e.first_name, e.email, e.salary FROM employees AS e INNER JOIN departments AS d ON e.dept_id = d.dept_id WHERE d.department_name = "IT";
SELECT e.first_name, d.department_name, e.salary FROM employees AS e INNER JOIN departments AS d ON e.dept_id = d.dept_id WHERE salary BETWEEN 30000 and 40000;
SELECT e.first_name, e.email, d.department_name FROM employees AS e INNER JOIN departments AS d ON e.dept_id = d.dept_id WHERE e.email LIKE "r%";
