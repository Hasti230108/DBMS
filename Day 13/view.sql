USE college_management;

CREATE VIEW employee_details AS
SELECT e.first_name,
       e.email,
       d.department_name,
       e.salary
FROM employees e
JOIN departments d
ON e.dept_id = d.dept_id;

SELECT * FROM employee_details;

SELECT * FROM employee_details WHERE salary > 40000;

SELECT * FROM employee_details WHERE department_name = "IT";

SELECT first_name, salary FROM employee_details ORDER BY salary DESC;

SELECT first_name, salary FROM employee_details WHERE first_name LIKE "R%";

SELECT department_name, COUNT(first_name) AS Total_Employees
FROM employee_details GROUP BY department_name;


CREATE VIEW employee_basic AS 
SELECT first_name, department_name
FROM employee_details;

SELECT * FROM employee_basic;

DROP VIEW employee_basic;

SELECT DISTINCT department_name FROM employee_details;

DROP VIEW employee_details;