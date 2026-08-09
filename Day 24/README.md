# Day 24 - SQL Subqueries

## Topics Covered

* Introduction to Subqueries
* Scalar Subqueries
* Subqueries with Aggregate Functions
* Subqueries with `AVG()`
* Subqueries with `MAX()` and `MIN()`
* Department-specific Subqueries
* `GROUP BY` with Subqueries
* `HAVING` with Subqueries
* Nested Subqueries
* `ALL` with Subqueries
* `ANY` with Subqueries

## What is a Subquery?

A **Subquery** is a query written inside another SQL query.

The inner query is executed as part of the outer query and its result is used by the outer query.

### Basic Structure

```sql
SELECT column_name
FROM table_name
WHERE column_name > (
    SELECT column_name
    FROM table_name
);
```

The query outside is called the **outer query**, while the query inside the parentheses is the **subquery**.

## Why Subqueries are Used

* Compare values with calculated results
* Find employees based on aggregate values
* Filter records using results from another query
* Solve complex filtering problems
* Nest one query inside another query

## Practical Performed

### 1. Employees Above Overall Average Salary

```sql
select first_name, salary
from employees 
where salary > (select avg(salary) from employees);
```

### 2. Employee with Highest Salary

```sql
select first_name, salary as highest_salary
from employees
where salary = (select max(salary) from employees);
```

### 3. Employee with Lowest Salary

```sql
select first_name, salary as lowest_salary
from employees
where salary = (select min(salary) from employees);
```

### 4. Employees Below Average Salary

```sql
select first_name, salary
from employees 
where salary < (select avg(salary) from employees);
```

### 5. Employees Above Minimum Salary

```sql
select first_name, salary
from employees
where salary > (select min(salary) from employees);
```

### 6. Employees Below Maximum Salary

```sql
select first_name, salary
from employees
where salary < (select max(salary) from employees);
```

### 7. Employees Earning More Than IT Average Salary

```sql
select first_name, salary
from employees 
where salary > (
    select avg(salary)
    from employees
    where department = "IT"
);
```

### 8. Departments Above Overall Average Salary

```sql
select department, avg(salary) as average_salary 
from employees
group by department
having average_salary > (
    select avg(salary)
    from employees
);
```

This uses a subquery together with `GROUP BY` and `HAVING`.

### 9. Second-Highest Salary

```sql
select first_name, salary as second_highest_salary
from employees 
where salary = (
    select max(salary)
    from employees
    where salary <> (
        select max(salary)
        from employees
    )
);
```

This uses a **nested subquery**, where one subquery is placed inside another subquery.

### 10. Employees Earning More Than Every HR Employee

```sql
select first_name, salary
from employees
where salary > all (
    select salary
    from employees
    where department = "HR"
);
```

`ALL` means the comparison must be true for **all values returned by the subquery**.

### 11. Employees Earning More Than At Least One IT Employee

```sql
select first_name, salary
from employees
where salary > any (
    select salary
    from employees 
    where department = "IT"
);
```

`ANY` means the comparison must be true for **at least one value returned by the subquery**.

## Important Concepts Learned

### Scalar Subquery

A scalar subquery returns a single value.

Example:
```sql
select avg(salary)
from employees;
```

It can then be used in a comparison:

```sql
where salary > (select avg(salary) from employees);
```

### Nested Subquery

A subquery can contain another subquery.

Example:
```sql
where salary = (
    select max(salary)
    from employees
    where salary <> (
        select max(salary)
        from employees
    )
);
```

### `ALL`

```sql
salary > ALL (subquery)
```

The condition must be true for every value returned by the subquery.

### `ANY`

```sql
salary > ANY (subquery)
```

The condition must be true for at least one value returned by the subquery.

## Outcome
Today I learned how SQL subqueries work and how one query can use the result of another query. I practiced scalar subqueries with `AVG()`, `MAX()`, and `MIN()`, department-specific subqueries, `GROUP BY` with `HAVING`, nested subqueries for finding the second-highest salary, and comparison operators such as `ALL` and `ANY`.