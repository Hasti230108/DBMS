# Day 23 - GROUP BY and HAVING

## Topics Covered
* GROUP BY
* COUNT()
* SUM()
* AVG()
* MAX()
* MIN()
* HAVING
* ORDER BY
* DESC
* LIMIT
* Column Aliases

## What is GROUP BY?

`GROUP BY` is used to group rows that have the same value in a column. It is commonly used with aggregate functions such as `COUNT()`, `SUM()`, `AVG()`, `MAX()`, and `MIN()`.

## What is HAVING?

`HAVING` is used to filter grouped results. Unlike `WHERE`, which filters individual rows, `HAVING` can filter results based on aggregate calculations.

## Practical Performed

### 1. Count Employees by Department

```sql
SELECT department, COUNT(*) AS employee_count
FROM employees
GROUP BY department;
```

### 2. Total Salary by Department

```sql
SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department;
```

### 3. Average Salary by Department

```sql
SELECT department, AVG(salary) AS average_salary
FROM employees
GROUP BY department;
```

### 4. Highest Salary by Department

```sql
SELECT department, MAX(salary) AS highest_salary
FROM employees
GROUP BY department;
```

### 5. Lowest Salary by Department

```sql
SELECT department, MIN(salary) AS lowest_salary
FROM employees
GROUP BY department;
```

### 6. Departments with More Than One Employee

```sql
SELECT department, COUNT(*) AS employee_count
FROM employees
GROUP BY department
HAVING employee_count > 1;
```

### 7. Departments with Average Salary Above 30,000

```sql
SELECT department, AVG(salary) AS average_salary
FROM employees
GROUP BY department
HAVING average_salary > 30000;
```

### 8. Departments with Total Salary Above 50,000

```sql
SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department
HAVING total_salary > 50000;
```

### 9. Departments Ordered by Average Salary

```sql
SELECT department, AVG(salary) AS average_salary
FROM employees
GROUP BY department
ORDER BY average_salary DESC;
```

### 10. Department with Highest Average Salary

```sql
SELECT department, AVG(salary) AS average_highest_salary
FROM employees
GROUP BY department
ORDER BY average_highest_salary DESC
LIMIT 1;
```

## Concepts Learned

* Grouping rows using `GROUP BY`
* Using aggregate functions with groups
* Filtering grouped results using `HAVING`
* Using aliases in `HAVING`
* Sorting grouped results using `ORDER BY`
* Using `DESC` for descending order
* Using `LIMIT` to restrict results

## Key Difference

```text
WHERE  → filters individual rows
HAVING → filters grouped results
```

## Outcome
Today I learned how to group records using `GROUP BY` and analyze each group using aggregate functions. I also practiced filtering grouped results with `HAVING`, sorting the results with `ORDER BY`, and finding the highest result using `DESC` and `LIMIT`.