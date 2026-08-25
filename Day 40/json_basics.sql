use college_management;

select json_object(
    'name', 'Rahul',
    'age', 20,
    'city', 'Mumbai'
);

select json_array('Rahul', 'Ananya', 'Reshma', 'Rohan');

create table employee_json (
    emp_id int primary key,
    employee_data json
);

insert into employee_json values (
    101,
    '{"name": "Rahul", "age": 20, "department": "IT", "salary": 35000}'
);

select * from employee_json;

select json_extract(
    employee_data,
    '$.name'
) from employee_json;

select json_extract(
    employee_data,
    '$.salary'
) from employee_json;

select json_extract(
    employee_data,
    '$.department'
) from employee_json;

select json_extract(
    employee_data,
    '$.age'
) from employee_json;

select json_extract(
    employee_data,
    '$.name',
    '$.department',
    '$.salary'
) from employee_json;