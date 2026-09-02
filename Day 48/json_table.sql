use college_management;

select jt.* from employee_json
cross join json_table(
    employee_data, '$' columns(
        name varchar(50) path '$.name',
        age int path '$.age',
        city varchar(50) path '$.city',
        salary  int path '$.salary',
        department varchar(50) path '$.department'
    )
) as jt;

select jt.* from employee_json
join json_table(
    employee_data, '$' columns(
        employee_name varchar(50) path '$.name',
        employee_salary int path '$.salary'
    )
) as jt;

select emp_id, jt.name, jt.city, jt.department from employee_json
join json_table(
    employee_data, '$' 
    columns(
        name varchar(50) path '$.name',
        city varchar(50) path '$.city',
        department varchar(50) path '$.department'
    )
) as jt;