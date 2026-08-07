USE college_management;

show index from employees;

create index idx_employees_departments
on employees(department);

show index from employees;

create index idx_employee_salary
on employees(salary);

show index from employees;

select * from employees where department = 'IT';

select * from employees where salary > 40000;

drop index idx_employees_departments on employees;

drop index idx_employee_salary on employees;

show index from employees;
