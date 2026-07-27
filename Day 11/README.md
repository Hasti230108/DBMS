# Day 11 - RIGHT JOIN 

## Topics Covered
- RIGHT JOIN
- Table Aliases
- Filtering Joined Tables
- Aggregate Functions with RIGHT JOIN
- GROUP BY
- ORDER BY
- LIMIT
- Subqueries
- LIKE Operator
- BETWEEN Operator

## Database
`college_management`

## Table Used
- employees
- departments

## Queries Practiced
### 1. Display all employees with their departments
- Use `RIGHT JOIN` to display every employee along with their department.

### 2. Compare RIGHT JOIN with different table positions
- Observe how changing the left and right tables affects the output.

### 3. Display employee name, email, and department
- Retrieve employee details using `RIGHT JOIN`.

### 4. Display employees working in the IT department
- Filter joined data using the `WHERE` clause.

### 5. Count employees in each department
- Use `COUNT()` with `GROUP BY` to calculate the number of employees.

### 6. Display employees earning above the average salary
- Use a subquery with `AVG()`.

### 7. Display employees whose email starts with 'r'
- Use the `LIKE` operator with `RIGHT JOIN`.

### 8. Display the department having the highest number of employees
- Use `COUNT()`, `GROUP BY`, `ORDER BY`, and `LIMIT`.

### 9. Display employees sorted by salary
- Arrange employee records in descending order of salary.

### 10. Display employees whose salary is between 30000 and 40000
- Use the `BETWEEN` operator.

### 11. Display employees in alphabetical order
- Sort employee names using `ORDER BY`.

## Concepts Learned

- Understanding RIGHT JOIN.
- Difference between LEFT JOIN and RIGHT JOIN.
- Choosing which table should be preserved in a JOIN.
- Using aggregate functions with JOIN.
- Combining `GROUP BY`, `ORDER BY`, and `LIMIT`.
- Using subqueries with JOIN.
- Filtering joined data using `WHERE`, `LIKE`, and `BETWEEN`.

## Outcome
Today I learned how the `RIGHT JOIN` preserves every record from the right table while matching records from the left table whenever possible. I practiced retrieving employee and department information, filtering joined records, using aggregate functions, sorting results, and applying subqueries with JOIN operations. I also understood how changing the position of tables changes the output of a JOIN query.