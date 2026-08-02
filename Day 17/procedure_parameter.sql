USE college_management;


DELIMITER //
CREATE PROCEDURE CountEmployees(OUT totalEmployees INT)
BEGIN
    SELECT COUNT(*) 
    INTO totalEmployees 
    FROM employees;
END //
DELIMITER ;

CALL CountEmployees(@total);
SELECT @total;


DELIMITER //
CREATE PROCEDURE HighestSalary(OUT maxSalary int)
BEGIN
    SELECT MAX(salary)
    INTO maxSalary
    FROM employees;
END //
DELIMITER ;

CALL HighestSalary(@salary);
SELECT @salary;


DELIMITER //
CREATE PROCEDURE AverageSalary(OUT avgSalary int)
BEGIN
    SELECT AVG(salary)
    INTO avgSalary
    FROM employees;
END //
DELIMITER ;

CALL AverageSalary(@average);
SELECT @average;


DELIMITER //
CREATE PROCEDURE TotalITEmployee(OUT TotalITEmp int)
BEGIN
    SELECT COUNT(*)
    INTO TotalITEmp
    FROM employees e JOIN departments d
    ON e.dept_id = d.dept_id
    WHERE d.department_name = 'IT';
END //
DELIMITER ;

CALL TotalITEmployee(@total);
SELECT @total;


DELIMITER //
CREATE PROCEDURE IncreaseSalary(INOUT salaryAmount int)
BEGIN 
    SET salaryAmount = salaryAmount + 5000;
END //
DELIMITER ;

SET @salary = 30000;
CALL IncreaseSalary(@salary);
SELECT @salary;


DELIMITER //
CREATE PROCEDURE EmployeeStatus(IN empId int, OUT EmpName varchar(50), OUT Salary int, OUT Department varchar(50))
BEGIN
    SELECT e.first_name, e.salary, d.department_name
    INTO EmpName, Salary, Department
    FROM employees e JOIN departments d
    ON e.dept_id = d.dept_id
    WHERE e.emp_id = empId;
END //
DELIMITER ;

CALL EmployeeStatus(101, @name, @salary, @department);
SELECT @name, @salary, @department;


DROP PROCEDURE AverageSalary;
DROP PROCEDURE CountEMployees;
DROP PROCEDURE HighestSalary;
DROP PROCEDURE IncreaseSalary;
DROP PROCEDURE TotalITEmployee;   
DROP PROCEDURE EmployeeStatus;


SHOW PROCEDURE STATUS
WHERE Db = 'college_management';
