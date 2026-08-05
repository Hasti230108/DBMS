# Day 20 - DBMS Revision

## Topics Revised

- SELECT Statement
- WHERE Clause
- ORDER BY
- DISTINCT
- LIKE
- BETWEEN
- IN Operator
- Aggregate Functions
- GROUP BY
- INNER JOIN
- LEFT JOIN
- Subqueries
- DESC
- SHOW TABLES

## Database
`college_management`

## Queries Practiced

### 1. Retrieve Data

```sql
SELECT * FROM employees;
SELECT * FROM departments;
SELECT * FROM teachers;
```


### 2. Filtering Records

```sql
SELECT * FROM employees
WHERE salary > 30000;

SELECT * FROM employees
WHERE department = 'IT';
```

---

### 3. Sorting Records

```sql
SELECT * FROM employees
ORDER BY salary DESC;

SELECT * FROM employees
ORDER BY first_name ASC;
```

### 4. Aggregate Functions

- COUNT()
- MAX()
- MIN()
- AVG()
- SUM()

### 5. GROUP BY

```sql
SELECT department, COUNT(*) AS total_employees
FROM employees GROUP BY department;
```

```sql
SELECT department, AVG(salary) AS average_salary
FROM employees GROUP BY department;
```

### 6. INNER JOIN

```sql
SELECT e.emp_id, e.first_name, d.department_name
FROM employees e
INNER JOIN departments d
ON e.dept_id = d.dept_id;
```

### 7. LEFT JOIN

```sql
SELECT e.first_name, e.last_name, d.department_name
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id;
```
### 8. SELF JOIN

```sql
SELECT e.first_name, e.last_name, m.first_name AS manager_name
FROM employees e
SELF JOIN employees m
ON e.manager_id = m.emp_id;
```

### 9. Subquery

```sql
SELECT first_name, salary
FROM employees WHERE salary > ( 
    SELECT AVG(salary) FROM employees
);
```

### 10. Other SQL Operators

- DISTINCT
- LIKE
- BETWEEN
- IN

Examples:

```sql
SELECT DISTINCT department
FROM employees;

SELECT * FROM employees
WHERE salary BETWEEN 30000 AND 50000;

SELECT * FROM employees
WHERE first_name LIKE 'R%';

SELECT * FROM employees
WHERE department IN ('IT','HR');
```

### 11. Database Structure

```sql
DESC employees;

DESC departments;

SHOW TABLES;
```

## Concepts Revised

- Data Retrieval
- Filtering
- Sorting
- Aggregate Functions
- Grouping Data
- Joins
- Self Join
- Subqueries
- SQL Operators
- Table Structure
- Database Inspection

## Outcome
Today I revised all the SQL concepts learned so far, including data retrieval, filtering, sorting, aggregate functions, grouping, joins, self joins, subqueries, and commonly used SQL operators. This revision strengthened my understanding of core SQL queries and prepared me for learning advanced database concepts such as Views, Indexes, Transactions, and Normalization.