# Day 29 - SQL Window Functions

## Topics Covered

- Window Functions
- `over()`
- `partition by`
- `order by` with Window Functions
- `avg() over()`
- `rank()`
- `row_number()`
- `dense_rank()`
- Ranking within groups
- CTE with Window Functions
- Finding highest-paid employees in each department

## What are Window Functions?

Window Functions perform calculations across a set of related rows without combining the rows into a single result.

Unlike `group by`, Window Functions keep the individual rows in the result.

## OVER()

The `over()` clause is used with Window Functions.

```sql
avg(salary) over()
```
This calculates the overall average salary and displays the same average beside every employee.

## PARTITION BY

`partition by` divides the rows into groups before performing the window calculation.
```sql
avg(salary) over(partition by department)
```
This calculates the average salary separately for each department while keeping every employee row.

Example:
IT      -> IT average
HR      -> HR average
General -> General average

## ORDER BY with Window Functions

`order by` can be used inside `over()` to control the order in which rows are ranked.
```sql
rank() over(order by salary desc)
```
This ranks employees from highest salary to lowest salary.

## RANK()

`rank()` assigns the same rank to rows with the same value.
```sql
rank() over(order by salary desc)
```
If two employees have the same salary, they receive the same rank and the next rank is skipped.

Example:
1
2
2
4

## ROW_NUMBER()

`row_number()` gives every row a unique number even when values are equal.
```sql
row_number() over(order by salary desc)
```
Example:
1
2
3
4

## DENSE_RANK()

`dense_rank()` gives the same rank to equal values but does not skip the next rank.

Example:
1
2
2
3

Difference Between Ranking Functions
| Function | Ties | Gaps |
|----------|------|------|
| `row_number()` | No same rank | No gaps |
| `rank()` | Same rank | Gaps |
| `dense_rank() | Same rank | No gaps |

## PARTITION BY with RANK()
Ranking can also be performed separately inside each department.
```sql
rank() over(partition by department order by salary desc)
```
This means:
1. Divide employees by department 
2. Sort salaries from highest to lowest
3. Assign ranks inside each department
4. Restart the ranking for every department

## PARTITION BY with ROW_NUMBER()
```sql
row_number() over(
    partition by department
    order by salary desc
)
```
This assigns a unique row number to employees inside each department.

## CTE with Window Functions
A CTE can be used with a Window Function to filter the ranked result.
```sql
with ranked_employees as (
    select first_name, department, salary,
    row_number() over(
        partition by department
        order by salary desc
    ) as dept_rank
    from employees
)
select first_name, department, salary
from ranked_employees
where dept_rank = 1;
```
This returns the highest-paid employee from each department.

## Skills Gained
- Using Window Functions
- Using over()
- Using partition by
- Using order by with Window Functions
- Calculating overall averages
- Calculating department-wise averages
- Ranking employees
- Using rank()
- Using row_number()
- Using dense_rank()
- Ranking within departments
- Combining CTEs with Window Functions
- Finding highest-paid employees by department

## Outcome
Today I started learning SQL Window Functions. I learned how over() works with aggregate functions, how partition by performs calculations within groups, and how rank(), row_number() and dense_rank() handle ranking. I also learned how to combine Window Functions with CTEs to find the highest-paid employee in each department.