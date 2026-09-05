use college_management;

select first_name, percentage,
case
    when percentage >= 90 then "Excellent"
    when percentage >= 75 then "Good"
    when percentage >= 50 then "Average"
    else "Needs Improvement"
end as performance from students;

select first_name, percentage,
case
    when percentage >= 90 then "O"
    when percentage >= 80 then "A"
    when percentage >= 70 then "B"
    when percentage >= 60 then "C"
    when percentage >= 50 then "D"
    else "F"
end as grade from students;

select first_name, percentage,
case
    when percentage >= 90 then "Excellent"
    when percentage >= 75 then "Good"
    when percentage >= 50 then "Average"
    else "Needs Improvement"
end as performance,
case
    when percentage >= 90 then "O"
    when percentage >= 80 then "A"
    when percentage >= 70 then "B"
    when percentage >= 60 then "C"
    when percentage >= 50 then "D"
    else "F"
end as grade from students;

select
case
    when percentage >= 90 then "Excellent"
    when percentage >= 75 then "Good"
    when percentage >= 50 then "Average"
    else "Needs Improvement"
end as performance, count(*) as total_students
from students 
group by performance;