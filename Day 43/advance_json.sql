use college_management;

select json_keys(employee_data) as employee_keys
from employee_json;

select json_length(employee_data) as total_fields
from employee_json;

select json_type(employee_data) as json_type
from employee_json;

select json_type( json_extract(employee_data, '$.salary') ) as salary_type
from employee_json;

select json_contains_path(employee_data, 'one', '$.city') as city_exists
from employee_json;

select json_contains_path(employee_data, 'one', '$.city', '$.phone') as at_least_one_exists
from employee_json;

select json_contains_path(employee_data, 'all', '$.city', '$.phone') as all_exist 
from employee_json;

select json_contains(employee_data, '"IT"', '$.department') as department_exists
from employee_json;