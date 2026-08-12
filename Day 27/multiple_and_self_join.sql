use college_management;

select e.first_name, e.salary, d.department_name
from employees e join departments d
on e.dept_id = d.dept_id;

select e.first_name, e.last_name, d.department_name, e.salary
from employees e join departments d
on e.dept_id = d.dept_id
order by e.salary desc;

select e.first_name, e.salary, d.department_name
from employees e join departments d
on e.dept_id = d.dept_id
where d.department_name = "IT";

select d.department_name, count(e.salary)
from departments d join employees e
on d.dept_id = e.dept_id
group by d.department_name;

select e.first_name as employee_name, m.first_name as manager_name
from employees as e join employees as m
on e.manager_id = m.emp_id;

select e.first_name as employee_name, e.salary as employee_salary, m.first_name as manager_name
from employees as e join employees as m
on e.manager_id = m.emp_id;

select e.first_name as employee_name, e.salary as employee_salary, m.first_name as manager_name, m.salary as manager_salary
from employees as e join employees as m
on e.manager_id = m.emp_id;

select e.first_name as employee_name, e.salary as employee_salary, m.first_name as manager_name, m.salary as manager_salary
from employees as e join employees as m
on e.manager_id = m.emp_id
where m.salary > 30000;

select m.first_name as manager_name, count(e.emp_id) as employee_count
from employees as e join employees as m
on e.manager_id = m.emp_id
group by e.manager_id;

select m.first_name as manager_name, count(e.emp_id) as employee_count
from employees as e join employees as m
on e.manager_id = m.emp_id
group by e.manager_id
order by employee_count desc 
limit 1;

select e.first_name as employee_name, e.salary as employee_salary, d.department_name as department_name, m.first_name as manager_name
from employees as e join departments as d on e.dept_id = d.dept_id
join employees as m on e.manager_id = m.emp_id;