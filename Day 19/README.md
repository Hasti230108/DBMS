# Day 19 - MySQL Triggers

## Topics Covered

- Triggers
- BEFORE Trigger
- AFTER Trigger
- INSERT Trigger
- UPDATE Trigger
- DELETE Trigger
- OLD Keyword
- NEW Keyword
- Audit Logs
- Automatic Database Actions

## Database

`college_management`

## Tables Created

### 1. employee_logs
Stores employee activity logs automatically using triggers.

Columns:
- log_id
- emp_id
- action
- action_time

### 2. salary_logs
Stores salary change history.

Columns:
- emp_id
- old_salary
- new_salary
- changed_at

## Triggers Created

### 1. new_employee

**AFTER INSERT Trigger**

Whenever a new employee is added to the `employees` table, a new record is automatically inserted into `employee_logs`.

```sql
INSERT INTO employees
VALUES (...);
```

Automatically stores:

```
Employee Added
```

### 2. delete_employee

**AFTER DELETE Trigger**

Whenever an employee is deleted, the trigger automatically stores the deletion record in `employee_logs`.

Automatically stores:

```
Employee Deleted
```

### 3. update_employee

**AFTER UPDATE Trigger**

Whenever employee information is updated, the trigger automatically stores the update action inside `employee_logs`.

Automatically stores:

```
Salary Updated
```

### 4. salary_update

**AFTER UPDATE Trigger**

Whenever an employee's salary changes, the trigger automatically stores:

- Employee ID
- Old Salary
- New Salary
- Timestamp

inside the `salary_logs` table.

## Practical Operations Performed

### Insert Employee

```sql
INSERT INTO employees (...);
```

### Update Salary

```sql
UPDATE employees
SET salary = salary + 5000
WHERE department = 'General';
```

### Delete Employee

```sql
DELETE FROM employees
WHERE emp_id = 108;
```

### View Employee Logs

```sql
SELECT * FROM employee_logs;
```

### View Salary Logs

```sql
SELECT * FROM salary_logs;
```

## Cleanup

### Drop Triggers

```sql
DROP TRIGGER IF EXISTS new_employee;
DROP TRIGGER IF EXISTS delete_employee;
DROP TRIGGER IF EXISTS update_employee;
DROP TRIGGER IF EXISTS salary_update;
```

### Drop Tables

```sql
DROP TABLE employee_logs;
DROP TABLE salary_logs;
```

## Concepts Learned

- What is a Trigger
- Automatic execution of SQL statements
- Difference between BEFORE and AFTER triggers
- Difference between INSERT, UPDATE, and DELETE triggers
- Using `NEW` keyword during INSERT and UPDATE
- Using `OLD` keyword during DELETE and UPDATE
- Creating audit log tables
- Automatically maintaining database history
- Testing and debugging triggers

## Outcome
Today I learned how MySQL Triggers automate database operations without manually executing SQL statements. I created multiple triggers that automatically recorded employee insertions, updates, deletions, and salary changes into separate log tables. I also understood the use of `OLD` and `NEW` keywords, practiced debugging trigger-related errors, and learned how audit logging works in real-world database systems. This practical helped me understand how triggers improve automation, data integrity, and activity tracking in relational databases.