use college_management;

select first_name, salary,
row_number() over(
    order by salary desc
) as salary_row_number,
rank() over(
    order by salary desc
) as rank_salary,
dense_rank() over(
    order by salary desc
) as dense_rank_salary
from employees;

select first_name, salary, 
lag(salary) over(
    order by salary desc
) as previous_employees_salary,
salary - lag(salary) over(order by salary desc) as salary_difference
from employees;

select first_name, department, salary,
sum(salary) over(
    order by salary desc
) as running_total
from employees;

select first_name, department, salary,
avg(salary) over(
    order by salary desc 
    rows between 2 preceding and current row
) as moving_average
from employees;

select first_name, salary,
ntile(2) over(
    order by salary desc
) as salary_group
from employees;

select first_name, salary,
percent_rank() over(
    order by salary desc
) as salary_percent_rank,
cume_dist() over(
    order by salary desc
) as cumulative_distribution
from employees;

select first_name, department, salary, 
sum(salary) over(
    partition by department
    order by salary desc
) as salary_running_total
from employees;

with greater_salary as(
    select first_name, department, salary
    from employees where salary > 30000
) select * from greater_salary;

with 
high_salary as (
    select first_name, department, salary
    from employees where salary > 30000
),
employee_bonus as (
    select first_name, department, salary + 5000 as salary_bonus
    from high_salary
)
select * from employee_bonus;


with recursive numbers as (
    select 1 as number

    union all

    select number + 1
    from numbers
    where number < 10
) select * from numbers;

with recursive numbers as (
    select 2 as number

    union all

    select number + 2
    from numbers
    where number < 20
) select * from numbers;

with recursive dates as (
    select "2026-07-16" as date

    union all

    select date + interval 1 day
    from dates
    where date < "2026-08-23"
) select * from dates;