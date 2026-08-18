use college_management;

select first_name, salary,
avg(salary) over() as overall_average
from employees;

select first_name, department, salary,
avg(salary) over(partition by department) as department_average
from employees;

select first_name, salary,
row_number() over(order by salary desc) as row_num,
rank() over(order by salary desc) as salary_rank,
dense_rank() over(order by salary desc) as dense_salary_rank
from employees;

select first_name, salary,
lag(salary) over(order by salary desc) as previous_salary
from employees;

select first_name, salary,
lead(salary) over(order by salary desc) as next_salary
from employees;

select first_name, salary,
lag(salary) over(order by salary desc) as previous_salary,
salary - lag(salary) over(order by salary desc) as salary_difference
from employees;

select first_name, salary,
first_value(salary) over(order by salary desc) as highest_salary,
last_value(salary) over(
    order by salary desc
    rows between unbounded preceding and unbounded following
) as lowest_salary,
nth_value(salary, 2) over(
    order by salary desc
    rows between unbounded preceding and unbounded following
) as second_highest_salary
from employees;

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