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

select first_name, department, salary,
rank() over(partition by department order by salary desc) as dept_rank
from employees;

with ranked_employees as (
    select first_name, department, salary,
    row_number() over(partition by department order by salary desc) as dept_rank
    from employees
)
select first_name, department, salary
from ranked_employees
where dept_rank = 1;