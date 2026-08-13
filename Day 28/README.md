# Day  Revision - Joins, Subqueries and CTEs

## Topics Covered

- INNER JOIN
- LEFT JOIN
- SELF JOIN
- GROUP BY & HAVING
- Aggregate Functions
- Subqueries
- ALL & ANY
- Common Table Expressions (CTEs)
- UNION & UNION ALL

## Concepts Revised

### Joins

```sql
select e.first_name, d.department_name
from employees e
join departments d
on e.dept_id = d.dept_id;
```

### Self Join

```sql
select e.first_name as employee_name,
       m.first_name as manager_name
from employees e
join employees m
on e.manager_id = m.emp_id;
```

### Subquery

```sql
select first_name, salary
from employees
where salary > (
    select avg(salary)
    from employees
);
```

### CTE

```sql
with average_salary as (
    select avg(salary) as avg_salary
    from employees
)
select e.first_name, e.salary
from employees e, average_salary
where e.salary > average_salary.avg_salary;
```

### UNION

```sql
select first_name, department
from employees
where department = "IT"

union

select first_name, department
from employees
where department = "HR";
```

## Skills Gained
- Writing complex SQL queries
- Joining related tables
- Using SELF JOIN
- Using aggregate functions
- Writing subqueries
- Using CTEs
- Combining query results with UNION

## Outcome

Today I revised important SQL concepts including JOINs, SELF JOINs, aggregate functions, subqueries, CTEs, UNION and UNION ALL. This revision strengthened my SQL query-writing skills and prepared me to move toward more advanced DBMS concepts.