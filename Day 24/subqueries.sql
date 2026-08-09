use college_management;

select first_name, salary from employees 
where salary > (select avg(salary) from employees);

select first_name, salary as highest_salary from employees
where salary = (select max(salary) from employees);

select first_name, salary as lowest_salary from employees
where salary = (select min(salary) from employees);

select first_name, salary from employees 
where salary < (select avg(salary) from employees);

select first_name, salary from employees
where salary > (select min(salary) from employees);

select first_name, salary from employees
where salary < (select max(salary) from employees);

select first_name, salary from employees 
where salary > (select avg(salary) from employees where department = "IT");

select department, avg(salary) as average_salary 
from employees group by department
having average_salary > (select avg(salary) from employees);

select first_name, salary as second_highest_salary from employees 
where salary = (select max(salary) from employees
where salary <> (select max(salary) from employees));

select first_name, salary from employees
where salary > all (
    select salary from employees
    where department = "HR");

select first_name, salary from employees
where salary > any (
    select salary from employees 
    where department = "IT");
