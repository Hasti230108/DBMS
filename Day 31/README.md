# DBMS Day 31 - LAG and LEAD Window Functions

## Topics Covered

- `LAG()`
- `LEAD()`
- Previous row values
- Next row values
- Comparing current and previous values
- `PARTITION BY` with `LAG()`

## LAG()

`LAG()` is used to access a value from a previous row within the window. If there is no previous row, it returns `NULL` by default. 

```sql
lag(salary) over(order by salary desc)
```
Example:
```sql
select first_name, salary,
lag(salary) over(order by salary desc) as previous_salary
from employees;
```
## LEAD()

`LEAD()` is used to access a value from the next row within the window. If there is no next row, it returns NULL by default.

```sql
lead(salary) over(order by salary desc)
```
Example:
```sql
select first_name, salary,
lead(salary) over(order by salary desc) as next_salary
from employees;
```

## Comparing Current and Previous Values

`LAG()` can be used to compare the current row with the previous row.
```sql
select first_name, salary,
lag(salary) over(order by salary desc) as previous_salary,
salary - lag(salary) over(order by salary desc) as salary_difference
from employees;
```
This calculates the difference between the current employee's salary and the previous employee's salary.

## LAG() with PARTITION BY
`LAG()` can also work separately within each department.
```sql
select first_name, department, salary,
lag(salary) over(
    partition by department
    order by salary desc
) as previous_dept_salary
from employees;
```
`PARTITION BY` creates a separate window for each department, so the previous value is taken only from the same department.

## Difference Between LAG and LEAD
| LAG() | LEAD() |
|-------|--------|
| Looks at the previous row | Looks at the next row |
| Moves backward | Moves forward |
| Useful for previous-value comparison | Useful for next-value comparison |

## Important Syntax
### LAG
```sql
lag(column) over(order by column)
```
### LEAD
```sql
lead(column) over(order by column)
```
### With Partition
```sql
lag(column) over(
    partition by department
    order by salary desc
)
```

## Skills Gained
- Using LAG()
- Using LEAD()
- Comparing rows
- Calculating differences between rows
- Using PARTITION BY with LAG()
- Understanding previous and next row values

## Outcome
Today I learned how to use `LAG()` and `LEAD()` window functions to access previous and next row values. I also practiced comparing employee salaries and using `PARTITION BY` to perform the comparison separately within each department.