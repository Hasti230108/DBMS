use college_management;

select first_name, salary,
first_value(salary) over(order by salary desc) as highest_salary
from employees;

select first_name, salary,
first_value(first_name) over(order by salary desc) as highest_paid_employee
from employees;

select first_name, salary,
nth_value(salary, 2) over(
    order by salary desc
    rows between unbounded preceding and unbounded following
) as second_highest_salary
from employees;

select first_name, salary,
last_value(salary) over(
    order by salary desc
    rows between unbounded preceding and unbounded following
) as lowest_salary
from employees;

select first_name, salary,
first_value(salary) over(order by salary desc) as highest_salary,
last_value(salary) over(
    order by salary desc 
    rows between unbounded preceding and unbounded following 
) as lowest_salary,
nth_value(salary, 2) over( 
    order by salary desc
    rows between unbounded preceding and unbounded following
) as second_highest_salary
from employees;