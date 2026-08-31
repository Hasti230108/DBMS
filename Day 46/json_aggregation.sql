use college_management;

select json_arrayagg(
    employee_data ->> '$.name'
) as employee_names
from employee_json;

select json_arrayagg(
    employee_data ->> '$.city'
) as employee_cities
from employee_json;

select json_arrayagg(
    employee_data -> '$.salary'
) as employee_salaries
from employee_json;

select json_objectagg(
    emp_id,
    employee_data ->> '$.name'
) as employee_names
from employee_json;

select json_objectagg(
    emp_id,
    employee_data ->> '$.salary'
) as employee_names
from employee_json;
