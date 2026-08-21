use college_management;

select first_name, salary, 
row_number() over(
    order by salary desc
) as salary_row_number,
rank() over(
    order by salary desc
) as salary_rank,
dense_rank() over(
    order by salary desc
) as dense_salary_rank
from employees;

select first_name, department, salary,
rank() over(
    partition by department
    order by salary desc
) as dept_rank
from employees;

select first_name, salary, 
lag(salary) over(
    order by salary desc
) as previous_salary,
lead(salary) over(
    order by salary desc
) as next_salary
from employees;

select first_name, salary,
lag(salary) over(
    order by salary desc
) as previous_salary,
salary - lag(salary) over(order by salary desc) as salary_difference
from employees;

select first_name, salary,
first_value(salary) over(
    order by salary desc
) as highest_salary,
last_value(salary) over(
    order by salary desc
) as lowest_salary
from employees;
 
select first_name, salary, 
sum(salary) over(
    order by salary asc
) as running_total 
from employees;

select first_name, salary,
avg(salary) over(
    order by salary asc
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
) as  running_total
from employees;