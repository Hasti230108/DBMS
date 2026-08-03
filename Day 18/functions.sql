USE college_management;

DELIMITER //
CREATE FUNCTION GetSalary(empId int)
RETURNS int
DETERMINISTIC
BEGIN
    DECLARE empSalary int;

    SELECT salary INTO empSalary
    FROM employees WHERE emp_id = empId;

    RETURN empSalary;

END //
DELIMITER ;

SELECT GetSalary(101);


DELIMITER //
CREATE FUNCTION GetEmployeeName(empId int)
RETURNS varchar(50)
DETERMINISTIC
BEGIN 
    DECLARE empName varchar(50);

    SELECT first_name INTO empName
    FROM employees WHERE emp_id = empId;

    RETURN empName;

END //
DELIMITER ;

SELECT GetEmployeeName(102);

DELIMITER //
CREATE FUNCTION GetDepartment(empId int)
RETURNS varchar(50)
DETERMINISTIC
BEGIN
    DECLARE empDept varchar(50);

    SELECT department INTO empDept
    FROM employees WHERE emp_id = empId;

    RETURN empDept;

END //
DELIMITER ;

SELECT GetDepartment(101);


DELIMITER //
CREATE FUNCTION CheckSalary(empId int)
RETURNS varchar(50)
DETERMINISTIC
BEGIN
    DECLARE empSalary int;
    DECLARE status varchar(20);

    SELECT salary INTO empSalary
    FROM employees WHERE emp_id = empId;

    IF empSalary > 40000 THEN
        SET status = "High Salary";
    Else 
        SET status = "Normal Salary";
    END IF;

    RETURN status;
END //
DELIMITER ;

SELECT CheckSalary(103);


DELIMITER //
CREATE FUNCTION YearlySalary(empId int)
RETURNS int
DETERMINISTIC
BEGIN
    DECLARE yearly int;

    SELECT salary * 12 INTO yearly
    FROM employees WHERE emp_id = empId;

    RETURN yearly;
END //
DELIMITER ;

SELECT YearlySalary(107);


DELIMITER //
CREATE FUNCTION EmployeeBonus(empId int)
RETURNS decimal(10,2)
DETERMINISTIC
BEGIN
    DECLARE empSalary int;
    DECLARE bonus decimal(10,2);

    SELECT salary into empSalary
    FROM employees WHERE emp_id = empId;

    IF empSalary > 50000 THEN 
        SET bonus = empSalary * 0.20;
    ELSE
        SET bonus = empSalary * 0.10;
    END IF;

    RETURN bonus;
END //
DELIMITER ;

SELECT EmployeeBonus(103);


DROP FUNCTION GetSalary;
DROP FUNCTION EmployeeBonus;
DROP FUNCTION CheckSalary;
DROP FUNCTION GetEmployeeName;
DROP FUNCTION GetDepartment;
DROP FUNCTION YearlySalary;


SHOW FUNCTION STATUS
WHERE Db = "college_management";