use college_management;

select e.first_name, e.last_name, d.department_name
from employees as e join departments as d
on e.dept_id = d.dept_id;

select e.first_name, e.salary, d.department_name
from employees as e join departments as d
on e.dept_id = d.dept_id;

select e.emp_id, e.first_name, d.department_name
from employees e join departments d
on e.dept_id = d.dept_id 
order by department_name desc;

select e.first_name, e.salary, d.department_name 
from employees e join departments d
on e.dept_id = d.dept_id
where d.department_name = "IT";

select e.first_name, e.salary, d.department_name
from employees as e left join departments as d
on e.dept_id = d.dept_id;

select e.first_name, e.salary 
from employees as e left join departments as d
on e.dept_id = d.dept_id
where d.dept_id is null;

select d.department_name, e.first_name, e.salary
from departments d  left join employees e
on d.dept_id = e.dept_id;

select d.department_name, e.first_name, e.salary 
from employees e right join departments d
on e.dept_id = d.dept_id;

select e.first_name, e.salary, d.department_name
from employees as e join departments as d
on e.dept_id = d.dept_id
where e.salary > 30000;

select e.first_name, e.salary, d.department_name
from employees as e join departments as d
on e.dept_id = d.dept_id
where d.department_name = 'IT'
and e.salary > 30000;

select e.first_name, e.salary, d.department_name
from employees as e join departments as d
on e.dept_id = d.dept_id
order by e.salary desc;

select e.first_name, e.salary, d.department_name
from employees as e join departments as d
on e.dept_id = d.dept_id
order by d.department_name asc, e.salary desc;

select d.department_name, count(e.emp_id) as employee_count
from departments as d left join employees as e
on d.dept_id = e.dept_id
group by d.department_name;

select d.department_name, sum(e.salary) as total_salary
from departments as d left join employees as e
on d.dept_id = e.dept_id
group by d.department_name;

select d.department_name, avg(e.salary) as average_salary
from departments as d left join employees as e
on d.dept_id = e.dept_id
group by d.department_name;

select d.department_name, max(e.salary) as highest_salary
from departments as d left join employees as e
on d.dept_id = e.dept_id
group by d.department_name;

select d.department_name, count(e.emp_id) as employee_count
from departments as d left join employees as e
on d.dept_id = e.dept_id
group by d.department_name
having employee_count > 1;

select d.department_name, sum(e.salary) as total_salary
from departments as d left join employees as e
on d.dept_id = e.dept_id
group by d.department_name
having total_salary > 50000;

select d.department_name, avg(e.salary) as average_salary
from departments as d left join employees as e
on d.dept_id = e.dept_id
group by d.department_name
having average_salary > 30000;

select e.first_name, e.salary, d.department_name
from employees as e join departments as d
on e.dept_id = d.dept_id
where e.salary = (select max(salary) from employees);

select e.first_name, e.salary, d.department_name
from employees as e join departments as d
on e.dept_id = d.dept_id
where e.salary = (select min(salary) from employees);

select d.department_name, sum(e.salary) as total_salary
from departments as d join employees as e
on d.dept_id = e.dept_id
group by d.department_name
order by total_salary desc
limit 1;

select d.department_name, avg(e.salary) as average_salary
from departments as d join employees as e
on d.dept_id = e.dept_id
group by d.department_name
order by average_salary desc
limit 1;

select d.department_name,
       count(e.emp_id) as employee_count,
       sum(e.salary) as total_salary,
       avg(e.salary) as average_salary,
       max(e.salary) as highest_salary,
       min(e.salary) as lowest_salary
from departments as d left join employees as e
on d.dept_id = e.dept_id
group by d.department_name
order by total_salary desc;