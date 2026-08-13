use college_management;

select e.first_name, e.last_name, d.department_name
from employees e
join departments d
on e.dept_id = d.dept_id;

select e.first_name, e.salary, d.department_name
from employees e
join departments d
on e.dept_id = d.dept_id;

select e.first_name, e.salary, d.department_name
from employees e
join departments d
on e.dept_id = d.dept_id
order by e.salary desc;

select e.first_name, e.salary, d.department_name
from employees e
join departments d
on e.dept_id = d.dept_id
where d.department_name = "IT";

select e.first_name, e.salary, d.department_name
from employees e
left join departments d
on e.dept_id = d.dept_id;

select d.department_name, count(e.emp_id) as employee_count
from departments d
join employees e
on d.dept_id = e.dept_id
group by d.department_name;

select d.department_name, count(e.emp_id) as employee_count
from departments d
join employees e
on d.dept_id = e.dept_id
group by d.department_name
having employee_count > 1;

select e.first_name as employee_name,
       m.first_name as manager_name
from employees e
join employees m
on e.manager_id = m.emp_id;

select e.first_name as employee_name,
       e.salary as employee_salary,
       m.first_name as manager_name,
       m.salary as manager_salary
from employees e
join employees m
on e.manager_id = m.emp_id;

select e.first_name as employee_name,
       e.salary as employee_salary,
       m.first_name as manager_name,
       m.salary as manager_salary
from employees e
join employees m
on e.manager_id = m.emp_id
where m.salary > 30000;

select m.first_name as manager_name,
       count(e.emp_id) as employee_count
from employees e
join employees m
on e.manager_id = m.emp_id
group by e.manager_id;

select department, avg(salary) as average_salary
from employees
group by department;

select department, avg(salary) as average_salary
from employees
group by department
having average_salary > 30000;

select department, max(salary) as highest_salary
from employees
group by department;

select department, sum(salary) as total_salary
from employees
group by department;

select first_name, salary
from employees
where salary > (
    select avg(salary)
    from employees
);

select first_name, salary
from employees
where salary = (
    select max(salary)
    from employees
);

select first_name, salary
from employees
where salary = (
    select min(salary)
    from employees
);

select first_name, salary
from employees
where salary > (
    select avg(salary)
    from employees
    where department = "IT"
);

select first_name, salary
from employees
where salary > all (
    select salary
    from employees
    where department = "HR"
);

select first_name, salary
from employees
where salary > any (
    select salary
    from employees
    where department = "IT"
);

with average_salary as (
    select avg(salary) as avg_salary
    from employees
)
select e.first_name, e.salary
from employees e, average_salary
where e.salary > average_salary.avg_salary;

with highest_salary as (
    select max(salary) as high_salary
    from employees
)
select e.first_name, e.salary
from employees e, highest_salary
where e.salary = highest_salary.high_salary;

with it_employees as (
    select *
    from employees
    where department = "IT"
)
select * from it_employees;

with dept_totals as (
    select department,
           sum(salary) as total_salary
    from employees
    group by department
)
select department, total_salary from dept_totals;

with average_salary as (
    select department,
           avg(salary) as average_salary
    from employees
    group by department
)
select department, average_salary from average_salary
order by average_salary desc;

with dept_totals as (
    select department,
           sum(salary) as total_salary
    from employees
    group by department
)
select department, total_salary from dept_totals
where total_salary > 30000;

select first_name, department
from employees
where department = "IT"
union
select first_name, department
from employees
where department = "HR";

select first_name, department
from employees
where department = "IT"
union all
select first_name, department
from employees
where department = "HR";