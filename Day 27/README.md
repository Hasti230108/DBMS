# Day 27 - Multiple JOINs and SELF JOIN

## Topics Covered

- multiple table joins
- inner join
- self join
- table aliases
- employee-manager relationships
- join with where
- join with group by
- join with count
- join with order by
- join with limit

## 1. Multiple JOINs

Multiple tables can be joined in the same query.

In this practice, the `employees` table was joined with the `departments` table using `dept_id`.

Example:

```sql
select e.first_name, e.salary, d.department_name
from employees e
join departments d
on e.dept_id = d.dept_id;