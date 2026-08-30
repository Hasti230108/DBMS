use college_management;

select json_object(
    'name', 'Hasti',
    'age', 19,
    'city', 'Mumbai'
) as student_data;

select json_array(
    'Python',
    'DBMS',
    'Data Structures'
) as subjects;

select json_object(
    'name', 'Hasti',
    'subjects', json_array(
        'Python',
        'DBMS',
        'Data Structures'
    )
) as student_data;

select json_object(
    'name', 'Hasti',
    'age', 19,
    'address', json_object(
        'city', 'Mumbai',
        'state', 'Maharashtra'
    )
) as student_data;

select json_array(
    86,
    92,
    75,
    88
) as marks;

select json_object(
    'emp_id', emp_id,
    'employee_name', employee_data ->> '$.name',
    'salary', employee_data -> '$.salary'
) as employee_summary
from employee_json;
