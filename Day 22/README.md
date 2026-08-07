# Day 22 - SQL Indexes

## Topics Covered

* Introduction to Indexes
* Purpose of Indexes
* Primary / Clustered Index
* Secondary Indexes
* Creating Indexes
* Displaying Indexes
* Dropping Indexes
* Indexes and Query Performance

## What is an Index?

An Index is a **data structure** used by MySQL to help locate rows more efficiently when searching or filtering data.

Indexes are especially useful when a table contains a large number of rows and queries frequently search using a particular column.

For example, if an `employees` table contains millions of records and we frequently search by `department`, an index on the `department` column can help MySQL find matching rows more efficiently instead of scanning the entire table.

## Why Indexes are Used

* Improve query performance
* Find matching records more efficiently
* Useful for large tables
* Improve searches using frequently queried columns
* Help MySQL optimize data retrieval

Indexes also require storage and can add overhead when inserting, updating, or deleting records, so unnecessary indexes should be avoided.

## Types of Indexes

### Primary / Clustered Index

In InnoDB, the **PRIMARY KEY** normally acts as the clustered index. The table's row data is organized with the primary key index.

For example:

```sql
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    first_name VARCHAR(50)
);
```

The `PRIMARY KEY` creates an associated index on `emp_id`.

### Secondary Index

A **secondary index** is an index other than the clustered/primary index.

It can be created manually on columns that are frequently used for searching.

For example:

```sql
CREATE INDEX idx_employee_department
ON employees(department);
```

Other indexes, such as indexes associated with `UNIQUE` constraints or supporting foreign keys, can also be secondary indexes.

## Syntax

### Create Index

```sql
CREATE INDEX index_name
ON table_name(column_name);
```

### Display Indexes

```sql
SHOW INDEX FROM table_name;
```

### Drop Index

```sql
DROP INDEX index_name
ON table_name;
```

## Practical Performed

### 1. Displayed Existing Indexes

```sql
show index from employees;
```

The existing indexes included:

* `PRIMARY`
* `email`
* `fk_department`

### 2. Created Department Index

```sql
create index idx_employees_departments
on employees(department);
```

### 3. Verified Department Index

```sql
show index from employees;
```

The new `idx_employees_departments` index was displayed.

### 4. Created Salary Index

```sql
create index idx_employee_salary
on employees(salary);
```

### 5. Verified Salary Index

```sql
show index from employees;
```

Both manually created indexes were displayed.

### 6. Searched Employees by Department

```sql
select * from employees where department = 'IT';
```

The query returned employees belonging to the IT department.

### 7. Searched Employees by Salary

```sql
select * from employees where salary > 40000;
```

The query returned employees whose salary was greater than 40000.

### 8. Removed Department Index

```sql
drop index idx_employees_departments on employees;
```

### 9. Removed Salary Index

```sql
drop index idx_employee_salary on employees;
```

### 10. Verified Index Deletion

```sql
show index from employees;
```

The manually created indexes were removed successfully.

## Concepts Learned

* Index as a data structure
* Purpose of indexes
* Primary / clustered index
* Secondary indexes
* `CREATE INDEX`
* `SHOW INDEX`
* `DROP INDEX`
* Searching using indexed columns
* Query performance
* Index storage and maintenance overhead

## Outcome
Today I learned how SQL indexes help MySQL locate matching records more efficiently, especially when working with large tables. I practiced creating, viewing, using, and removing indexes on the `employees` table and understood the difference between the primary/clustered index and secondary indexes.