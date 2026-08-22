use college_management;

with employee_data as(
    select first_name, department, salary
    from employees
) select * from employee_data;

with high_salary as(
    select first_name, salary 
    from employees where salary > 30000
) select * from high_salary;

with employee_bonus as (
    select first_name, salary,
    salary + 5000 as salary_with_bonus 
    from employees
) select * from employee_bonus;

with average_salary as (
    select department, avg(salary) as average_salary
    from employees group by department
) select * from average_salary;

with average_salary as (
    select department, avg(salary) as average_salary
    from employees group by department
) select * from average_salary w21here average_salary > 30000;

with 
high_salary as ( select first_name, salary from employees where salary > 30000),
employee_bonus as ( select first_name, salary, salary + 5000 as salary_with_bonus from high_salary)
select * from employee_bonus;