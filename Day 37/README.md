# DBMS Day 37 — Common Table Expressions (CTEs)

## Topic

**Common Table Expressions (CTEs) in MySQL**

## What I Revised

A **Common Table Expression (CTE)** is a named temporary result set created using the `WITH` clause. It exists only for the duration of the statement and can be referenced later in that statement.

CTEs are useful for making complex SQL queries **easier to read, organize, and reuse**.

## Basic Syntax

```sql
WITH cte_name AS (
    SELECT ...
)
SELECT *
FROM cte_name;
```

The query inside `AS (...)` creates the CTE, and the query after it uses the CTE.

## Tasks Completed

### Task 1 — Basic CTE

Created an `employee_data` CTE to select employee information.

```sql
WITH employee_data AS (
    SELECT first_name, department, salary
    FROM employees
)
SELECT *
FROM employee_data;
```

### Task 2 — CTE with WHERE

Created a CTE containing employees earning more than 30,000.

```sql
WITH high_salary AS (
    SELECT first_name, salary
    FROM employees
    WHERE salary > 30000
)
SELECT *
FROM high_salary;
```

### Task 3 — Calculated Column

Created a CTE that calculates salary after adding a 5,000 bonus.

```sql
WITH employee_bonus AS (
    SELECT first_name, salary,
           salary + 5000 AS salary_with_bonus
    FROM employees
)
SELECT *
FROM employee_bonus;
```

### Task 4 — CTE with GROUP BY

Calculated the average salary for every department.

```sql
WITH average_salary AS (
    SELECT department, AVG(salary) AS average_salary
    FROM employees
    GROUP BY department
)
SELECT *
FROM average_salary;
```

### Task 5 — Filtering a CTE Result

Filtered departments whose average salary is greater than 30,000.

```sql
WITH average_salary AS (
    SELECT department, AVG(salary) AS average_salary
    FROM employees
    GROUP BY department
)
SELECT *
FROM average_salary
WHERE average_salary > 30000;
```

### Task 6 — Multiple Connected CTEs

Created one CTE and used it inside another CTE.

```sql
WITH
high_salary AS (
    SELECT first_name, salary
    FROM employees
    WHERE salary > 30000
),
employee_bonus AS (
    SELECT first_name, salary,
           salary + 5000 AS salary_with_bonus
    FROM high_salary
)
SELECT *
FROM employee_bonus;
```

This demonstrates an important concept: **a CTE can reference an earlier CTE in the same `WITH` clause.**

## Key Points 
- `WITH` is used to create a CTE.
- A CTE is temporary and exists only for the statement.
- CTEs make complex queries more readable.
- Multiple CTEs can be created using commas.
- A later CTE can use an earlier CTE.
- CTE names must be unique within the same `WITH` clause.
- `WITH RECURSIVE` is used for recursive CTEs.
- CTEs can be used with `SELECT`, and MySQL also permits them in several other statement contexts.

## Outcome
The main thing I revised today is that instead of writing one huge SQL query, I can **break the query into smaller named steps using CTEs**.