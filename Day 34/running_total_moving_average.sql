use college_management;

select first_name, salary,
sum(salary) over(
    order by salary asc
) as running_total
from employees;

select first_name, salary,
avg(salary) over(
    order by salary asc
) as running_average
from employees;

select first_name, department, salary,
sum(salary) over(
    partition by department
    order by salary asc
) as department_running_total
from employees;

select first_name, salary,
sum(salary) over(
    order by salary asc
    rows between unbounded preceding and current row
) as running_total
from employees;

select first_name, salary,
avg(salary) over(
    order by salary asc
    rows between 2 preceding and current row
) as moving_average
from employees;

select first_name, salary,
sum(salary) over(
    partition by department
    order by salary asc
    rows between unbounded preceding and current row
) as running_total
from employees;