# Day 08 - INNER JOIN Practice

## Topics Covered
- INNER JOIN
- ON Clause
- Selecting Specific Columns
- WHERE with JOIN
- ORDER BY
- GROUP BY
- COUNT()
- LIKE
- BETWEEN
- Table Aliases (AS)

## Database
`college_management`

## Table Created
- employees
- departments

## Queries Practiced
- Display all employees with their department names.
- Display employee name and department.
- Display employee name, salary and department.
- Display employees working in the IT department.
- Display employee name, email and department.
- Display employees earning more than 30000.
- Sort employees by salary (highest to lowest).
- Count employees in each department.
- Display HR employee email addresses.
- Rewrite JOIN queries using table aliases.
- Filter emails using the `LIKE` operator.

## Concepts Learned

### INNER JOIN
Combined records from the `employees` and `departments` tables using the common `dept_id` field.

### ON Clause
Learned how the `ON` clause matches related records from two tables.

### Selecting Required Columns
Displayed only the necessary columns instead of using `SELECT *`.

### Filtering Data
Used the `WHERE` clause to retrieve employees from a specific department and filter records based on salary and email.

### Sorting Data
Sorted employee records by salary in descending order using `ORDER BY`.

### GROUP BY
Grouped employees by department and counted the number of employees in each department.

### Table Aliases
Used aliases (`e` and `d`) to write cleaner and more readable SQL queries.

## Outcome
Today I understood how SQL combines related tables using `INNER JOIN`. I learned why the `ON` clause is necessary, how relationships work using foreign keys, and how to retrieve meaningful data from multiple tables. I also practiced filtering, sorting, grouping, and writing cleaner queries using table aliases.