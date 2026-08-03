# Day 18 - MySQL Functions

## Topics Covered
- Introduction to MySQL Functions
- CREATE FUNCTION
- RETURNS
- DETERMINISTIC
- DECLARE Variables
- SELECT ... INTO
- RETURN Statement
- IF...ELSE...END IF
- SET Statement
- DROP FUNCTION

## Database
`college_management`

## Functions Created

### 1. GetSalary()
Returns the salary of an employee using the employee ID.

```sql
SELECT GetSalary(101);
```

### 2. GetEmployeeName()
Returns the first name of an employee using the employee ID.

```sql
SELECT GetEmployeeName(102);
```

### 3. GetDepartment()
Returns the department of an employee using the employee ID.

```sql
SELECT GetDepartment(101);
```

### 4. CheckSalary()
Checks whether an employee's salary is greater than ₹40,000.
Returns:
- High Salary
- Normal Salary

```sql
SELECT CheckSalary(103);
```

### 5. YearlySalary()
Calculates the yearly salary of an employee.
Formula

```
Monthly Salary × 12
```

```sql
SELECT YearlySalary(107);
```

### 6. EmployeeBonus()
Calculates the employee bonus.

Rules

- Salary > 50000 → 20% Bonus
- Otherwise → 10% Bonus

```sql
SELECT EmployeeBonus(103);
```

## Functions Removed

```sql
DROP FUNCTION GetSalary;
DROP FUNCTION GetEmployeeName;
DROP FUNCTION GetDepartment;
DROP FUNCTION CheckSalary;
DROP FUNCTION YearlySalary;
DROP FUNCTION EmployeeBonus;
```

## Checking Existing Functions

```sql
SHOW FUNCTION STATUS
WHERE Db = 'college_management';
```

## Concepts Learned

### CREATE FUNCTION
Used to create reusable SQL functions that return a single value.

```sql
CREATE FUNCTION FunctionName(...)
```

### RETURNS
Specifies the datatype returned by the function.
Example

```sql
RETURNS INT
```

```sql
RETURNS VARCHAR(50)
```

### DETERMINISTIC
Indicates that the function always returns the same output for the same input.

### DECLARE
Creates local variables inside a function.

```sql
DECLARE salary INT;
```

### SELECT ... INTO
Stores the result of a query into a variable.

```sql
SELECT salary
INTO empSalary
FROM employees;
```

### RETURN
Returns the final value from the function.

```sql
RETURN empSalary;
```

### IF...ELSE
Used to perform conditional operations.

```sql
IF salary > 40000 THEN
    ...
ELSE
    ...
END IF;
```

### SET
Assigns a value to a variable.

```sql
SET bonus = salary * 0.20;
```

## Why Functions are Useful
- Return a single value from the database.
- Reduce repeated SQL queries.
- Perform calculations inside the database.
- Improve query readability.
- Reuse business logic across multiple SQL statements.

## Learning Outcome
By completing this practical, I learned how to create MySQL Functions using **CREATE FUNCTION**, **RETURNS**, and **RETURN** statements. I practiced declaring variables with **DECLARE**, storing query results using **SELECT ... INTO**, assigning values with **SET**, and implementing decision-making using **IF...ELSE** conditions. I also created functions to perform calculations, retrieve employee details, determine salary status, calculate yearly salary, and compute employee bonuses. Finally, I learned how to remove functions using **DROP FUNCTION** and verify existing functions using **SHOW FUNCTION STATUS**, strengthening my understanding of reusable SQL programming and database logic.