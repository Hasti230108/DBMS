# Day 09 - LEFT JOIN 

## Topics Covered
- LEFT JOIN
- INNER JOIN vs LEFT JOIN
- Parent Table
- Child Table
- Table Aliases (`AS`)
- COUNT(*)
- COUNT(column)
- GROUP BY
- ORDER BY
- LIMIT
- NULL Values in JOIN

## Database
`college_management`

## Table Used
- employees
- departments

## Queries Practiced
- Displayed all departments with matching employees using `LEFT JOIN`
- Displayed all employees with their departments using `LEFT JOIN`
- Retrieved employees from the IT department
- Counted employees in each department using `GROUP BY`
- Compared `COUNT(*)` and `COUNT(column)`
- Found the department with the highest number of employees
- Displayed employees whose salary falls within a given range
- Filtered employees using the `LIKE` operator
- Sorted joined data using `ORDER BY`

## Concepts Learned

- Understood the difference between `INNER JOIN` and `LEFT JOIN`.
- Learned that **LEFT JOIN keeps all records from the left table**, even when no matching record exists in the right table.
- Understood how `NULL` values appear in unmatched rows.
- Learned the difference between:
  - `COUNT(*)` → Counts all rows.
  - `COUNT(column)` → Counts only non-NULL values.
- Practiced using aliases (`e`, `d`) to write cleaner SQL queries.
- Improved understanding of how SQL JOINs generate result sets based on matching rows.

## Outcome
Today I gained a clear understanding of how `LEFT JOIN` works and when it should be used instead of `INNER JOIN`. I also learned how `COUNT(*)` and `COUNT(column)` behave differently with `NULL` values. This practice strengthened my understanding of SQL joins and relational database concepts.