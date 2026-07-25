# Day 09 - INNER JOIN Practice

## Topics Covered
- INNER JOIN
- Table Aliases (`AS`)
- Filtering with `WHERE`
- Sorting using `ORDER BY`
- Aggregate Functions
  - COUNT()
  - MAX()
  - MIN()
  - AVG()
- ORDER BY
- GROUP BY
- ON Clause
- LIKE
- BETWEEN
- LIMIT
- Subqueries (Introduction)

## Database
`college_management`

## Table Used
- employees
- departments

## Queries Practiced

### Basic INNER JOIN
- Display employee names with their department names.
- Display employee names, department names, and salaries.
- Display employee emails with department names.

### Filtering
- Employees from the HR department.
- Employees whose salary is between 30000 and 40000.
- Employees whose email starts with 'r'.

### Sorting
- Sort employees by salary (Highest to Lowest).
- Sort employees alphabetically by first name.

### Aggregate Functions
- Count employees in each department.
- Find the highest salary in each department.
- Find the lowest salary in each department.

### Subquery
- Display employees whose salary is greater than the average salary.

### Additional Practice
- Display the department with the maximum number of employees.

## Concepts Learned

- Connecting two related tables using `INNER JOIN`.
- Using foreign keys to retrieve related data.
- Writing cleaner queries using table aliases (`e` and `d`).
- Combining `JOIN` with filtering and sorting.
- Using aggregate functions together with `GROUP BY`.
- Introduction to subqueries using `AVG()`.
- Solving real-world SQL queries involving multiple tables.

## Outcome
Today I practiced writing SQL queries using `INNER JOIN` to retrieve related data from multiple tables. I learned how to combine joins with filtering, sorting, aggregate functions, grouping, and subqueries. This strengthened my understanding of relational databases and prepared me for learning `LEFT JOIN`, `RIGHT JOIN`, and more advanced SQL concepts.