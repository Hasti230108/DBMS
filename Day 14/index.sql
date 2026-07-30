USE college_management;

CREATE INDEX idx_first_name
ON employees(first_name);

CREATE INDEX idx_salary
ON employees(salary); 

SHOW INDEX FROM employees;

SELECT * 
FROM employees 
WHERE first_name = "Rahul";

SELECT * 
FROM employees
WHERE salary>33000;

CREATE UNIQUE INDEX idx_email
ON employees(email);

SELECT *
FROM employees
WHERE email="ananya@gmail.com";

DROP INDEX idx_email
ON employees;

DROP INDEX idx_salary
ON employees;

DROP INDEX idx_first_name
ON employees;