use college_management;

select json_set(
    employee_data,
    '$.salary', 40000
) as updated_employee
from employee_json;

SELECT JSON_SET(
    employee_data,
    '$.city', 'Mumbai'
) AS updated_employee
FROM employee_json;

SELECT JSON_REPLACE(
    employee_data,
    '$.salary', 45000
) AS updated_employee
FROM employee_json;

SELECT JSON_REPLACE(
    employee_data,
    '$.city', 'Mumbai'
) AS updated_employee
FROM employee_json;

SELECT JSON_REMOVE(
    employee_data,
    '$.department'
) AS updated_employee
FROM employee_json;

SELECT JSON_REMOVE(
    employee_data,
    '$.age',
    '$.salary'
) AS updated_employee
FROM employee_json;

SELECT JSON_INSERT(
    employee_data,
    '$.city', 'Mumbai'
) AS updated_employee
FROM employee_json;

SELECT JSON_INSERT(
    employee_data,
    '$.salary', 45000
) AS updated_employee
FROM employee_json;

UPDATE employee_json
SET employee_data = JSON_SET(
    employee_data,
    '$.salary', 40000
)
WHERE emp_id = 101;

UPDATE employee_json
SET employee_data = JSON_SET(
    employee_data,
    '$.city', 'Mumbai'
)
WHERE emp_id = 101;

select * from employee_json;