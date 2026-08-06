USE college_management;

create view employee_public as  
select emp_id, first_name, last_name, department
from employees;

select * from employee_public;

create view it_employees as select *
from employees where department = "IT";

select * from it_employees;

create view employee_contact as 
select emp_id, first_name, last_name, email 
from employees;

select * from employee_contact;

create or replace view it_employees as
select first_name, last_name, salary
from employees where department = "IT";

select * from it_employees;

show full tables where Table_type = 'view';

drop view employee_public;
drop view it_employees;
drop view employee_contact;

show full tables where Table_type = 'view';
