# Day 15 - Stored Procedures (MySQL)

## Topics Covered
- Stored Procedures
- DELIMITER
- BEGIN ... END
- CALL Procedure
- JOIN inside Procedures
- Filtering Records
- DROP PROCEDURE
- SHOW PROCEDURE STATUS

## Database
`college_management`

## Procedures Created
### 1. ShowEmployees()
Displays all employee records.
```sql
CALL ShowEmployees();
```

### 2. ITEmployees()
Displays employees who belong to the **IT Department** using an INNER JOIN.
```sql
CALL ITEmployees();
```

### 3. HighSalaryEmployees()
Displays employees whose salary is greater than or equal to **35000**.
```sql
CALL HighSalaryEmployees();
```

### 4. EmployeeEmails()
Displays only:
- Employee ID
- First Name
- Email
```sql
CALL EmployeeEmails();
```

## Deleting Procedures
```sql
DROP PROCEDURE ShowEmployees;
DROP PROCEDURE ITEmployees;
DROP PROCEDURE HighSalaryEmployees;
DROP PROCEDURE EmployeeEmails;
```

## Checking Existing Procedures
```sql
SHOW PROCEDURE STATUS
WHERE Db = 'college_management';
```

## Concepts Learned

### DELIMITER
Changes the default statement terminator while creating procedures.

Normally SQL ends with:
```sql
;
```

During procedure creation:
```sql
DELIMITER //
```

After creating:
```sql
DELIMITER ;
```

### BEGIN ... END
Marks the beginning and ending of a stored procedure.

```sql
BEGIN
    SQL Statements
END
```

### CALL
Executes an existing stored procedure.

## Why Stored Procedures?
- Avoid writing the same query repeatedly.
- Reusable SQL code.
- Easier maintenance.
- Improves readability.
- Centralizes business logic inside the database.

## Key Learnings

- Creating stored procedures.
- Executing procedures using `CALL`.
- Using `DELIMITER`.
- Understanding `BEGIN` and `END`.
- Joining multiple tables inside procedures.
- Filtering data within procedures.
- Removing procedures using `DROP PROCEDURE`.
- Checking existing procedures.

## Outcome
By completing this practical, I gained a clear understanding of MySQL Stored Procedures and their importance in reducing repetitive SQL queries. I learned how to create, execute, and delete stored procedures using `CREATE PROCEDURE`, `CALL`, and `DROP PROCEDURE` statements. I also understood the purpose of `DELIMITER`, `BEGIN`, and `END` while defining procedures. Additionally, I practiced using filtering conditions and `JOIN` operations inside procedures to retrieve specific data efficiently. This practical improved my understanding of reusable SQL programming and strengthened my confidence in managing database operations using stored procedures.