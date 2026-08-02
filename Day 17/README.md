# Day 17 - Stored Procedures with Parameters (IN, OUT, INOUT)

## Topics Covered
- IN Parameters
- OUT Parameters
- INOUT Parameters
- Aggregate Functions inside Stored Procedures
- COUNT()
- MAX()
- AVG()
- Parameter Passing
- DROP PROCEDURE
- SHOW PROCEDURE STATUS

## Database
`college_management`

## Procedures Created
### 1. CountEmployees()
Returns the total number of employees using an **OUT** parameter.
```sql
CALL CountEmployees(@total);
SELECT @total;
```

### 2. HighestSalary()
Returns the highest salary from the employees table.
```sql
CALL HighestSalary(@salary);
SELECT @salary;
```

### 3. AverageSalary()
Returns the average salary of all employees.
```sql
CALL AverageSalary(@average);
SELECT @average;
```

### 4. TotalITEmployee()
Returns the total number of employees working in the IT department.
```sql
CALL TotalITEmployee(@total);
SELECT @total;
```

### 5. IncreaseSalary()
Demonstrates the use of an **INOUT** parameter by increasing the provided salary value.
```sql
SET @salary = 30000;
CALL IncreaseSalary(@salary);
SELECT @salary;
```
Output:
```
35000
```

### 6. EmployeeStatus()
Accepts an employee ID as an **IN** parameter and returns:
- Employee Name
- Salary
- Department
using **OUT** parameters.
```sql
CALL EmployeeStatus(101, @name, @salary, @department);
SELECT @name, @salary, @department;
```
## Procedures Removed
```sql
DROP PROCEDURE CountEmployees;
DROP PROCEDURE HighestSalary;
DROP PROCEDURE AverageSalary;
DROP PROCEDURE TotalITEmployee;
DROP PROCEDURE IncreaseSalary;
DROP PROCEDURE EmployeeStatus;
```

## Checking Existing Procedures
```sql
SHOW PROCEDURE STATUS
WHERE Db = 'college_management';
```

## Concepts Learned

### IN Parameter
Used to pass values into a stored procedure.

```sql
CREATE PROCEDURE Demo(IN value INT)
```

### OUT Parameter
Used to return values from a stored procedure.

```sql
CREATE PROCEDURE Demo(OUT total INT)
```

### INOUT Parameter
Acts as both an input and an output parameter.

```sql
CREATE PROCEDURE Demo(INOUT number INT)
```

## Aggregate Functions Used

- COUNT()
- MAX()
- AVG()

## Why Parameters are Useful

- Make procedures dynamic.
- Avoid hardcoding values.
- Reuse the same procedure with different inputs.
- Return calculated results without writing repeated queries.

## Outcome
By completing this practical, I learned how to create parameterized stored procedures using **IN**, **OUT**, and **INOUT** parameters in MySQL. I practiced using aggregate functions such as `COUNT()`, `MAX()`, and `AVG()` to calculate and return values through stored procedures. I also understood how to pass input values, retrieve output values, and modify variables using `INOUT` parameters. Additionally, I learned how to remove procedures and verify their existence using `DROP PROCEDURE` and `SHOW PROCEDURE STATUS`. This practical strengthened my understanding of reusable SQL programming and dynamic database operations.