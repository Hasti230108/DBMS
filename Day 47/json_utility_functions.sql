use college_management;

select json_pretty(employee_data) as formatted_employee
from employee_json;

select json_valid(employee_data) as is_valid_json
from employee_json;

select json_valid('{"name": "Hasti", "age": 19}') as valid_json;

select json_valid('{"name": "Hasti", "age": }') as invalid_json;

select json_depth(employee_data) as json_depth
from employee_json;

select json_quote('Hasti Karaniya') as quoted_name;

select json_unquote('Hasti Karaniya') as unquoted_name;

select json_unquote(
    json_extract(employee_data, '$.name')
) as employee_name from employee_json;