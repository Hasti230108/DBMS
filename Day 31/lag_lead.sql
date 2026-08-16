use college_management;

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

select first_name, department, salary,
lag(salary) over(
    partition by department
    order by salary desc
) as previous_dept_salary
from employees;