USE college_management;

DELIMITER //
CREATE PROCEDURE ShowEmployees()
BEGIN
    SELECT * FROM employees;
END //
DELIMITER ;

CALL ShowEmployees();


DELIMITER //
CREATE PROCEDURE ITEmployees()
BEGIN
    SELECT
        employees.first_name,
        employees.email,
        departments.department_name
    FROM employees
    JOIN departments
    ON employees.dept_id = departments.dept_id
    WHERE departments.department_name = 'IT';
END //
DELIMITER ;

CALL ITEmployees();


DELIMITER //
CREATE PROCEDURE HighSalaryEmployees()
BEGIN
    SELECT first_name, department, salary
    FROM employees
    WHERE salary >= 35000;
END //
DELIMITER ;

CALL HighSalaryEmployees();


DELIMITER //
CREATE PROCEDURE EmployeeEmails()
BEGIN
    SELECT emp_id, first_name, email
    FROM employees;
END //
DELIMITER ;

CALL EmployeeEmails();

DROP PROCEDURE ShowEmployees;
DROP PROCEDURE ITEmployees;
DROP PROCEDURE HighSalaryEmployees;
DROP PROCEDURE EmployeeEmails;

SHOW PROCEDURE STATUS
WHERE Db = 'college_management';