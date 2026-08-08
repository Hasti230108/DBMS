use college_management;

select department, count(*) as employee_count
from employees group by department;

select department, sum(salary) as total_salary
from employees group by department;

select department, avg(salary) as average_salary
from employees group by department;

select department, max(salary) as highest_salary
from employees group by department;

select department, min(salary) as lowest_salary
from employees group by department;


select department, count(*) as employee_count
from employees group by department having employee_count > 1;

select department, avg(salary) as average_salary
from employees group by department having average_salary > 30000;

select department, sum(salary) as total_salary
from employees group by department having total_salary > 50000;


select department, avg(salary) as average_salary
from employees group by department order by average_salary desc;

select department, avg(salary) as average_highest_salary
from employees group by department order by average_highest_salary desc limit 1;