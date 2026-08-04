use college_management;

create table employee_logs(
    log_id int auto_increment primary key, 
    emp_id int, 
    action varchar(50),
    action_time timestamp default current_timestamp 
    );


delimiter //
create trigger new_employee
after insert
on employees
for each row
begin
    insert into employee_logs(emp_id, action) values (new.emp_id, "Employee Added");
end //
delimiter ;


insert into employees values(108, "Tahseen", "Raza", "tahseen@gmail.com", "Sales", 48000, 4, NULL);


delimiter //
create trigger delete_employee
after delete
on employees
for each row
begin
    insert into employee_logs(emp_id, action) values (old.emp_id, "Employee Deleted");
end //
delimiter ;

delimiter //
create trigger update_employee
after update
on employees
for each row
begin
    insert into employee_logs(emp_id, action) values (new.emp_id, "Salary Updated");
end //
delimiter ;


create table salary_logs(
    emp_id int primary key,
    old_salary int,
    new_salary int,
    changed_at timestamp default current_timestamp
);

delimiter //
create trigger salary_update 
after update
on employees
for each row
begin
    insert into salary_logs(emp_id, old_salary, new_salary) values(new.emp_id, old.salary, new.salary);
end //
delimiter ;

update employees set salary = salary + 5000 WHERE department = "General";

select * from employee_logs;
select * from salary_logs;

delete from employees where emp_id = 108;

select * from employee_logs;


drop trigger if exists new_employee;
drop trigger if exists delete_employee;
drop trigger if exists update_employee;
drop trigger if exists salary_update;

show triggers;

drop table employee_logs;
drop table salary_logs;
