# Day 25 - SQL Common Table Expressions (CTEs)

## Topics Covered

* Common Table Expressions (CTEs)
* `WITH` clause
* Creating a CTE from a subquery
* Using a CTE in `SELECT`
* CTE with aggregate functions
* CTE with `GROUP BY`
* CTE with `WHERE`
* CTE with `ORDER BY`
* Multiple CTEs
* Understanding CTEs as temporary result sets

## What is a CTE?

**CTE** stands for **Common Table Expression**.

A CTE is a named temporary result set that exists only for the duration of a single SQL statement.

It is created using the `WITH` clause and can then be referenced like a table within that statement.

### Basic Structure

```sql
WITH cte_name AS (
    SELECT ...
)
SELECT ...
FROM cte_name;
```

The query inside `AS (...)` creates the result set, and the CTE name can be used by the main query.

## Why Use CTEs?

CTEs help make complex queries:
* Easier to read
* Easier to understand
* Easier to organize
* Easier to reuse within the same statement
* Cleaner than deeply nested subqueries

## 1. CTE with Average Salary

Created a CTE containing the overall average salary and used it to find employees earning above the average.

```sql
WITH average_salary AS (
    SELECT AVG(salary) AS avg_salary
    FROM employees
)
SELECT first_name, salary
FROM employees, average_salary
WHERE salary > average_salary.avg_salary;
```

## 2. CTE with Maximum Salary

Created a CTE containing the highest salary and used it to find the employee earning that salary.

```sql
WITH highest_salary AS (
    SELECT MAX(salary) AS high_salary
    FROM employees
)
SELECT first_name, salary
FROM employees, highest_salary
WHERE salary = highest_salary.high_salary;
```

## 3. CTE for IT Employees

Created a CTE containing only employees from the IT department.

```sql
WITH it_employees AS (
    SELECT *
    FROM employees
    WHERE department = "IT"
)
SELECT *
FROM it_employees;
```

## 4. Department Total Salary

Created a CTE to calculate the total salary for each department and displayed departments whose total salary was greater than `50000`.

```sql
WITH dept_total_salary AS (
    SELECT department, SUM(salary) AS total_salary
    FROM employees
    GROUP BY department
)
SELECT department, total_salary
FROM dept_total_salary
WHERE total_salary > 50000;
```

## 5. Department Average Salary

Created a CTE to calculate the average salary of each department.

```sql
WITH average_salary AS (
    SELECT department, AVG(salary) AS average_salary
    FROM employees
    GROUP BY department
)
SELECT department, average_salary
FROM average_salary;
```

## 6. Multiple CTEs

Learned how to define multiple CTEs inside one `WITH` clause.

Multiple CTEs are separated using commas.

```sql
WITH
average_salary AS (
    SELECT AVG(salary) AS avg_salary
    FROM employees
),
it_employees AS (
    SELECT *
    FROM employees
    WHERE department = "IT"
)
SELECT first_name, salary, avg_salary
FROM it_employees, average_salary;
```

## 7. CTE with ORDER BY

Created a CTE containing department-wise average salaries and sorted the results from highest to lowest average salary.

```sql
WITH average_salary AS (
    SELECT department, AVG(salary) AS average_salary
    FROM employees
    GROUP BY department
)
SELECT department, average_salary
FROM average_salary
ORDER BY average_salary DESC;
```

## 8. CTE with Filtering

Created a CTE containing department-wise total salaries and filtered departments whose total salary was greater than `30000`.

```sql
WITH dept_totals AS (
    SELECT department, SUM(salary) AS total_salary
    FROM employees
    GROUP BY department
)
SELECT department, total_salary
FROM dept_totals
WHERE total_salary > 30000;
```

## Important Concept Learned

A CTE can be thought of as a **temporary named result set**.

For example:

```text
WITH
    ↓
Create CTE
    ↓
CTE produces a result
    ↓
SELECT FROM CTE
    ↓
Filter / Sort / Analyze
```

One important lesson from today's practice was understanding that once the required result is already inside the CTE, I can query the CTE directly instead of unnecessarily combining it with the original table.

## CTE vs Subquery

| Subquery                                         | CTE                                   |
| ------------------------------------------------ | ------------------------------------- |
| Query written inside another query               | Named result set created with `WITH`  |
| Can become difficult to read when nested         | Usually easier to read                |
| Often placed inside `WHERE`, `FROM`, or `SELECT` | Defined before the main query         |
| Useful for smaller calculations                  | Useful for organizing larger queries  |
| Can be nested                                    | Multiple CTEs can be defined together |

## Key Syntax

### Single CTE

```sql
WITH cte_name AS (
    SELECT ...
)
SELECT *
FROM cte_name;
```

### Multiple CTEs

```sql
WITH
cte1 AS (
    SELECT ...
),
cte2 AS (
    SELECT ...
)
SELECT ...
FROM cte1, cte2;
```

## Outcome
Today I learned how to use **Common Table Expressions (CTEs)** with the `WITH` clause. I practiced creating CTEs for average salary, maximum salary, department-wise totals and averages, filtering, sorting, and IT employees. I also learned how to use multiple CTEs in a single query and understood how a CTE acts as a temporary named result set within a SQL statement.