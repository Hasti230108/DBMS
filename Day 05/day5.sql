USE college_management;
CREATE TABLE employees( emp_id INT PRIMARY KEY, first_name VARCHAR(30) NOT NULL, last_name VARCHAR(30), email VARCHAR(50) UNIQUE, department VARCHAR(30) DEFAULT 'General', salary INT CHECK (salary >= 20000) );
INSERT INTO employees VALUES(101,'Rahul','Sharma','rahul@gmail.com','IT',35000);
INSERT INTO employees(emp_id,first_name,last_name,email,salary) VALUES(102,'Ananya','Patel','ananya@gmail.com',40000);
INSERT INTO employees VALUES(103,'Reshma','Shah','reshma@gmail.com','HR',28000);
SELECT * FROM employees;

INSERT INTO employees VALUES(104,'Aarav','Mehta','rahul@gmail.com','Sales',30000);
/* Testing UNIQUE Constraint */

INSERT INTO employees VALUES(105,'Kartik','Sharma','kartik@gmail.com','IT',15000);
/* Testing CHECK Constraint */

INSERT INTO employees VALUES(101,'Riya','Patel','riya@gmail.com','HR',25000);
/* Testing Duplicate PRIMARY KEY */

INSERT INTO employees VALUES(106,NULL,'Patel','abc@gmail.com','HR',25000);
/* Testing NOT NULL Constraint */

SELECT * FROM employees;
SELECT * FROM employees WHERE salary > 30000;
SELECT * FROM employees ORDER BY salary DESC;
SELECT COUNT(*) FROM employees;
SELECT MAX(salary) FROM employees;
SELECT DISTINCT department FROM employees;

DESC employees;