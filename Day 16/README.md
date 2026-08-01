# Day 16 - Stored Procedures with Parameters (MySQL)

## Topics Covered
- Stored Procedures with Parameters
- IN Parameters
- Passing Arguments using CALL
- Parameterized Queries
- Multiple Parameters
- JOIN inside Stored Procedures
- Filtering Data
- DROP PROCEDURE
- SHOW PROCEDURE STATUS

## Database
`college_management`

## Procedures Created
### 1. ShowEmployeeByName()
Displays the complete details of an employee using their first name.
```sql
CALL ShowEmployeeByName('Rahul');
```

### 2. ShowDepartment()
Displays employees belonging to a specific department using an INNER JOIN.
```sql
CALL ShowDepartment('IT');
```

### 3. EmployeesAboveSalary()
Displays employees whose salary is greater than the given amount.
```sql
CALL EmployeesAboveSalary(30000);
```

### 4. EmployeeFilter()
Displays employees based on both department and minimum salary.
```sql
CALL EmployeeFilter('IT',30000);
```

### 5. EmployeeEmail()
Displays the employee's name and email using the provided email address.
```sql
CALL EmployeeEmail('ananya@gmail.com');
```

### 6. EmployeeDetails()
Displays employee details using Employee ID.
```sql
CALL EmployeeDetails(101);
```

## Removing Procedures
```sql
DROP PROCEDURE ShowEmployeeByName;
DROP PROCEDURE ShowDepartment;
DROP PROCEDURE EmployeesAboveSalary;
DROP PROCEDURE EmployeeFilter;
DROP PROCEDURE EmployeeEmail;
DROP PROCEDURE EmployeeDetails;
```

## Checking Existing Procedures
```sql
SHOW PROCEDURE STATUS
WHERE Db = 'college_management';
```

# Concepts Learned

## IN Parameter
Allows a value to be passed into a stored procedure while calling it.

## CALL
Executes a stored procedure and passes the required arguments.

## Multiple Parameters
A procedure can accept more than one input value.

## JOIN inside Procedures
Stored procedures can also use JOIN operations to retrieve data from multiple related tables.

## Why Parameterized Procedures?
- Avoid creating multiple procedures for different values.
- Make stored procedures reusable.
- Improve flexibility.
- Reduce repetitive SQL code.
- Simplify database operations.

## Outcome
By completing this practical, I learned how to create dynamic stored procedures using **IN parameters** in MySQL. I understood how to pass values while calling procedures, making them reusable instead of writing separate procedures for every condition. I also practiced using multiple parameters, filtering records, and performing `JOIN` operations inside stored procedures to retrieve meaningful information from related tables. Additionally, I learned how to manage procedures by checking their status and deleting them when no longer required. This practical improved my understanding of writing flexible and reusable SQL programs for real-world database applications.