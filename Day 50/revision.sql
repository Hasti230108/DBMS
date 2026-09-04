use college_management;

select json_search(
    employee_data,
    'one',
    'Rahul'
) as name_path
from employee_json;

select json_search(
    employee_data,
    'one',
    'Mumbai'
) as city_path
from employee_json;

select json_search(
    employee_data,
    'one',
    'IT',
) as department_path
from employee_json;

select json_search(
    employee_data,
    'all',
    'Rahul'
) as all_paths
from employee_json;

select json_search(
    employee_data,
    'one',
    'M%'
) as search_result
from employee_json;

    select json_search(
        employee_data,
        'one',
        'I_'
    ) as search_result
    from employee_json;

select json_search(
    employee_data,
    'one',
    'Python'
) as search_result
from employee_json;

select json_search(
    employee_data,
    'one',
    'Rahul',
    NULL,
    '$.name'
) as search_result
from employee_json;
