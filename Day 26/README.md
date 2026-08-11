# Day 26 - SQL JOINs

## Topics Covered

* `inner join`
* `left join`
* `right join`
* `on`
* table aliases
* `join` with `where`
* `join` with `order by`
* `join` with `group by`
* `join` with aggregate functions
* `join` with `having`
* finding unmatched records

## 1. INNER JOIN

`inner join` combines rows from two tables when the condition specified in the `on` clause matches.

Basic structure:

```sql
select columns
from table1
join table2
on table1.column = table2.column;
```

In this practice, `employees` and `departments` were joined using `dept_id`.

## 2. LEFT JOIN

`left join` returns all rows from the left table and matching rows from the right table.

If there is no matching row in the right table, the right-side columns contain `null`.

Example:

```sql
select e.first_name, d.department_name
from employees as e
left join departments as d
on e.dept_id = d.dept_id;
```

## 3. Finding Unmatched Records

A `left join` can be combined with `is null` to find records that have no matching row in the other table.

```sql
where d.dept_id is null;
```

In the practice database, this returned an empty result because every employee had a matching department.

## 4. RIGHT JOIN

`right join` works similarly to `left join`, but preserves all rows from the right table.

```sql
select d.department_name, e.first_name
from employees as e
right join departments as d
on e.dept_id = d.dept_id;
```

This helped identify departments that currently have no employees.

## 5. Table Aliases

Aliases make JOIN queries shorter and easier to read.

```sql
from employees as e
join departments as d
on e.dept_id = d.dept_id;
```

Here:

* `e` represents `employees`
* `d` represents `departments`

Columns can then be written as:

```sql
e.first_name
d.department_name
```

## 6. JOIN with WHERE

`where` can be used after joining tables to filter the final result.

Example:

```sql
select e.first_name, e.salary, d.department_name
from employees as e
join departments as d
on e.dept_id = d.dept_id
where e.salary > 30000;
```

## 7. JOIN with ORDER BY

The joined result can be sorted using `order by`.

```sql
order by e.salary desc;
```

Multiple sorting conditions can also be used:

```sql
order by d.department_name asc, e.salary desc;
```

## 8. JOIN with GROUP BY

JOINs can be combined with aggregate functions and `group by`.

### Employee count

```sql
count(e.emp_id)
```

### Total salary

```sql
sum(e.salary)
```

### Average salary

```sql
avg(e.salary)
```

### Highest salary

```sql
max(e.salary)
```

### Lowest salary

```sql
min(e.salary)
```

Example:

```sql
select d.department_name, count(e.emp_id) as employee_count
from departments as d
left join employees as e
on d.dept_id = e.dept_id
group by d.department_name;
```

## 9. JOIN with HAVING

`having` can filter grouped results after aggregate functions are calculated.

Example:

```sql
select d.department_name, sum(e.salary) as total_salary
from departments as d
left join employees as e
on d.dept_id = e.dept_id
group by d.department_name
having total_salary > 50000;
```

## 10. JOIN with Subqueries

JOINs can also be combined with subqueries.

Example:

```sql
select e.first_name, e.salary, d.department_name
from employees as e
join departments as d
on e.dept_id = d.dept_id
where e.salary = (select max(salary) from employees);
```

This finds the employee with the highest salary and displays their department.

## 11. Final Combined Query

The final challenge combined several concepts:

```sql
select d.department_name,
       count(e.emp_id) as employee_count,
       sum(e.salary) as total_salary,
       avg(e.salary) as average_salary,
       max(e.salary) as highest_salary,
       min(e.salary) as lowest_salary
from departments as d
left join employees as e
on d.dept_id = e.dept_id
group by d.department_name
order by total_salary desc;
```

This query displays:

* department name
* number of employees
* total salary
* average salary
* highest salary
* lowest salary

and sorts departments by total salary from highest to lowest.

## Important Difference

| JOIN         | What it keeps                             |
| ------------ | ----------------------------------------- |
| `inner join` | Only matching rows                        |
| `left join`  | All left-table rows + matching right rows |
| `right join` | All right-table rows + matching left rows |

## Practice Completed

* Joined `employees` with `departments`
* Used `inner join`
* Used `left join`
* Used `right join`
* Used `on` to match tables
* Used table aliases
* Filtered joined data with `where`
* Sorted joined data with `order by`
* Grouped joined data with `group by`
* Used `count`, `sum`, `avg`, `max`, and `min`
* Filtered grouped results using `having`
* Found unmatched records using `is null`
* Combined JOINs with subqueries
* Completed a combined JOIN + aggregate challenge

## Key Takeaway

A JOIN allows related information stored in different tables to be combined into one result.

The most important pattern from this day is:

```text
from
→ join
→ on
→ where
→ group by
→ having
→ order by
```

Each clause has a different purpose, and JOIN queries become much easier once the relationship between the tables is understood.

## Outcome
Completed the basics of **SQL JOINs** and practiced combining multiple tables with filtering, grouping, aggregation, sorting, and subqueries.