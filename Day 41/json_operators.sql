use college_management;

select json_extract(employee_data, '$.name')
from employee_json;

select employee_data -> "$.name" 
from employee_json;

select employee_data ->> "$.name"
from employee_json;

select employee.* from employee_json
join json_table(
    employee_json.employee_data, '$'
    columns(
        name varchar(50) path '$.name',
        age int path '$.age',
        department varchar(50) path '$.department',
        salary int path '$.salary'
    )
) as employee;

select employee.* from employee_json
join json_table(
    employee_json.employee_data, '$'
    columns(
        name varchar(50) path '$.name',
        department varchar(50) path '$.department',
        salary int path '$.salary'
    )
) as employee;

select json_extract(
    '["Rahul", "Ananya", "Reshma", "Rohan"]',
    '$[0]'
);

select json_extract(
    '["Rahul", "Ananya", "Reshma", "Rohan"]',
    '$[2]'
);

select json_extract(
    '["Rahul", "Ananya", "Reshma", "Rohan"]',
    '$[1]',
    '$[3]'
);

select * from json_table(
    '["Rahul", "Ananya", "Reshma", "Rohan"]',
    '$[*]'
    columns(
        name varchar(50) path '$'
    )
) as employees;