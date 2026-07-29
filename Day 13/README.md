# Day 13 - SQL Views

## Topics Covered
- SQL Views
- CREATE VIEW
- Querying Views
- Filtering Data from Views
- ORDER BY with Views
- Aggregate Functions on Views
- GROUP BY
- DISTINCT
- DROP VIEW

## Database
`college_management`

## Table Used
- employees
- departments

## Queries Practiced
### 1. Create a View
- Created a view named `employee_details`.
- Combined employee and department information using `JOIN`.

### 2. Display All Records
- Retrieved all records from the created view.

### 3. Filter Employees by Salary
- Displayed employees earning more than ₹40,000.

### 4. Filter Employees by Department
- Displayed employees working in the IT department.

### 5. Sort Employee Records
- Displayed employee names and salaries in descending order.

### 6. Filter Employee Names
- Displayed employees whose names start with the letter 'R'.

### 7. Count Employees Department-wise
- Used `COUNT()` with `GROUP BY` on the view.

### 8. Create Another View
- Created a second view named `employee_basic`.
- Included only employee names and department names.

### 9. Display the Second View
- Retrieved all records from `employee_basic`.

### 10. Delete a View
- Dropped the `employee_basic` view.

### 11. Display Unique Departments
- Used `DISTINCT` to display unique department names.

### 12. Remove the Main View
- Dropped the `employee_details` view.

## Concepts Learned

- What SQL Views are.
- Creating reusable virtual tables using `CREATE VIEW`.
- Querying data from a view.
- Filtering records using `WHERE`.
- Sorting data using `ORDER BY`.
- Performing aggregation using `COUNT()` and `GROUP BY`.
- Creating multiple views.
- Removing views using `DROP VIEW`.
- Displaying unique values using `DISTINCT`.

## Outcome
Today I learned how SQL Views simplify complex queries by storing them as reusable virtual tables. I practiced creating views, retrieving and filtering data, performing sorting and aggregation, creating multiple views, and deleting views after use. This helped me understand how views improve query readability and make database operations more organized.