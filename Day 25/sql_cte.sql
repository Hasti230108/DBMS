use college_management;

with average_salary as (
    select avg(salary) as avg_salary from employees
)
select first_name, salary from employees, average_salary
where salary > average_salary.avg_salary;


with highest_salary as (
    select max(salary) as high_salary from employees
)
select first_name, salary from employees, highest_salary
where salary = highest_salary.high_salary;


with it_employees as (
    select * from employees where department = "IT"
)
select * from it_employees;


with dept_total_salary as (
    select department, sum(salary) as total_salary from employees group by department
)
select department, total_salary from dept_total_salary where total_salary > 50000;


with average_salary as (
    select department, avg(salary) as average_salary from employees group by department
)
select department, average_salary from average_salary;


with 
average_salary as (select avg(salary) as avg_salary from employees),
it_employees as (select * from employees where department = "IT")
select first_name, salary, avg_salary 
from it_employees, average_salary;


with average_salary as (
    select department, avg(salary) as average_salary from employees group by department 
)
select department, average_salary from average_salary order by average_salary desc;


with dept_totals as (
    select department, sum(salary) as total_salary from employees group by department
)
select department, total_salary from dept_totals where total_salary > 30000;
