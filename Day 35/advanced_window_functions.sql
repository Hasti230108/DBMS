use college_management;

select first_name, salary, 
ntile(2) over(
    order by salary desc
) as salary_group
from employees;

select first_name, salary,
ntile(4) over(
    order by salary desc
) as salary_quartile
from employees;

select first_name, salary,
percent_rank() over(
    order by salary desc
) as salary_percent_rank
from employees;

select first_name, salary,
cume_dist() over(
    order by salary desc
) as cumulative_distribution
from employees;

select first_name, department, salary,
ntile(2) over(
    partition by department
    order by salary desc
) as department_salary_group
from employees;