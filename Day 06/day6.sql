USE college_management;

SELECT * FROM employees;

CREATE TABLE departments(dept_id INT PRIMARY KEY, department_name varchar(30) UNIQUE NOT NULL);
INSERT INTO departments VALUES(1, "IT"), (2, "HR"), (3, "General"), (4, "Sales");
SELECT * FROM departments;

ALTER TABLE employees ADD dept_id INT;
UPDATE employees SET dept_id = 1 WHERE department = 'IT';
UPDATE employees SET dept_id = 2 WHERE department = 'HR';
UPDATE employees SET dept_id = 3 WHERE department = 'General';
UPDATE employees SET dept_id = 4 WHERE department = 'Sales';

ALTER TABLE employees ADD CONSTRAINT fk_department FOREIGN KEY (dept_id) REFERENCES departments(dept_id);

INSERT INTO employees VALUES(107, 'Rohan', 'Patel', 'rohan@gmail.com', 'IT', 35000, 10);
/*Testing FOREIGN KEY Constraint*/

INSERT INTO employees VALUES(107, 'Rohan', 'Patel', 'rohan@gmail.com', 'IT', 35000, 1);
/*Valid FOREIGN KEY*/

SELECT * FROM employees;

DELETE FROM departments WHERE dept_id = 1;
/*Testing Referential Integrity*/

SELECT * FROM departments;
