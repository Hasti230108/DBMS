USE college_management;

DELIMITER //
CREATE PROCEDURE ShowEmployeeByName(IN firstName varchar(50))
BEGIN
    SELECT * FROM employees
    WHERE first_name = firstName;
END //
DELIMITER ;

CALL ShowEmployeeByName('Rahul');


DELIMITER //
CREATE PROCEDURE ShowDepartment(IN deptName varchar(50))
BEGIN
    SELECT e.first_name, e.email, d.dept_id, d.department_name 
    FROM departments d JOIN employees e
    ON d.dept_id = e.dept_id
    WHERE department_name = deptName;
END //
DELIMITER ;

CALL ShowDepartment('IT');


DELIMITER //
CREATE PROCEDURE EmployeesAboveSalary(IN minSalary int)
BEGIN
    SELECT * FROM employees
    WHERE salary > minSalary;
END //
DELIMITER ; 

CALL EmployeesAboveSalary(30000);


DELIMITER //
CREATE PROCEDURE EmployeeFilter(IN deptName varchar(50), IN minSalary int)
BEGIN
    SELECT * FROM employees
    WHERE department = deptName AND salary > minSalary;
END //
DELIMITER ;

CALL EmployeeFilter('IT', 30000);


DELIMITER //
CREATE PROCEDURE EmployeeEmail(IN emailA varchar(75))
BEGIN
    SELECT first_name, email FROM employees
    WHERE email = emailA;
END //
DELIMITER ;

CALL EmployeeEmail('ananya@gmail.com');


DELIMITER //
CREATE PROCEDURE EmployeeDetails(IN empId int)
BEGIN
    SELECT e.first_name, d.dept_id, e.salary, e.email
    FROM employees e JOIN departments d 
    ON e.dept_id = d.dept_id 
    WHERE e.emp_id = empId;
END //
DELIMITER ;

Call EmployeeDetails(101);

SHOW PROCEDURE STATUS
WHERE Db = 'college_management';

DROP PROCEDURE ShowEmployeeByName;
DROP PROCEDURE ShowDepartment;
DROP PROCEDURE EmployeesAboveSalary;
DROP PROCEDURE EmployeeFilter;
DROP PROCEDURE EmployeeEmail;   
DROP PROCEDURE EmployeeDetails;

SHOW PROCEDURE STATUS
WHERE Db = 'college_management';
