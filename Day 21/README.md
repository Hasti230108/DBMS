# Day 21 - SQL Views

## Topics Covered

- Introduction to Views
- Creating Views
- Displaying Views
- Replacing Views
- Dropping Views
- Advantages of Views

## What is a View?

A View is a **virtual table** in SQL that stores a query instead of actual data. Whenever a view is accessed, MySQL executes the stored query and displays the latest data from the original table.

## Why Views are Used

- Improve Security
- Hide Sensitive Data
- Simplify Complex Queries
- Improve Readability
- Reuse Frequently Used Queries

## Syntax

### Create View

```sql
CREATE VIEW view_name AS
SELECT column_name
FROM table_name
WHERE condition;
```

### Display View

```sql
SELECT * FROM view_name;
```

### Replace View

```sql
CREATE OR REPLACE VIEW view_name AS
SELECT ...
FROM table_name;
```

### Drop View

```sql
DROP VIEW view_name;
```

## Practical Performed

### 1. Created Employee Public View

```sql
create view employee_public as  
select emp_id, first_name, last_name, department
from employees;
```

### 2. Displayed Employee Public View

```sql
select * from employee_public;
```

### 3. Created IT Employees View

```sql
create view it_employees as select *
from employees where department = "IT";
```

### 4. Displayed IT Employees View

```sql
select * from it_employees;
```

### 5. Created Employee Contact View

```sql
create view employee_contact as 
select emp_id, first_name, last_name, email 
from employees;
```

### 6. Displayed Employee Contact View

```sql
select * from employee_contact;
```

### 7. Replaced IT Employees View

```sql
create or replace view it_employees as
select first_name, last_name, salary
from employees where department = "IT";
```

### 8. Displayed Updated View

```sql
select * from it_employees;
```

---

### 9. Displayed All Views

```sql
show full tables where Table_type = 'view';
```

### 10. Deleted Views

```sql
drop view employee_public;
drop view it_employees;
drop view employee_contact;
```

### 11. Verified Deletion

```sql
show full tables where Table_type = 'view';
```

## Concepts Learned
- Virtual Table
- CREATE VIEW
- SELECT FROM VIEW
- CREATE OR REPLACE VIEW
- DROP VIEW
- Security using Views
- Simplifying SQL Queries

## Outcome
Today I learned how SQL Views work and how they act as virtual tables by storing SQL queries instead of actual data. I practiced creating, displaying, replacing, and deleting views while understanding how they simplify complex queries and improve data security by exposing only the required information.