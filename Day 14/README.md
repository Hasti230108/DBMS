# Day 14 - SQL Index

## Topics Covered
- INDEX
- CREATE INDEX
- UNIQUE INDEX
- SHOW INDEX
- DROP INDEX
- Searching using Indexed Columns

## Database
`college_management`

## Table Used
- employees

## Queries Practiced
### 1. Create an Index on Employee Name
- Created an index on the `first_name` column to improve search performance.

### 2. Create an Index on Salary
- Created an index on the `salary` column for faster salary-based searches.

### 3. Display All Indexes
- Used `SHOW INDEX` to display all indexes created on the `employees` table.

### 4. Search Employee by First Name
- Retrieved employee details using the indexed `first_name` column.

### 5. Search Employees by Salary
- Retrieved employees having salary greater than `33000`.

### 6. Create a UNIQUE INDEX
- Created a unique index on the `email` column to prevent duplicate email addresses.

### 7. Search Employee by Email
- Retrieved employee details using the indexed `email` column.

### 8. Drop UNIQUE INDEX
- Removed the unique index created on the `email` column.

### 9. Drop Salary INDEX
- Removed the index created on the `salary` column.

### 10. Drop First Name INDEX
- Removed the index created on the `first_name` column.

## Concepts Learned

- What an INDEX is.
- Importance of INDEX in improving search performance.
- Difference between INDEX and UNIQUE INDEX.
- How to create an INDEX.
- How to create a UNIQUE INDEX.
- Displaying existing indexes using `SHOW INDEX`.
- Removing indexes using `DROP INDEX`.
- Understanding that indexes improve `SELECT` queries but may slightly slow down `INSERT`, `UPDATE`, and `DELETE` operations.

## Outcome
Today I learned how indexes improve database performance by reducing the time required to search records. I practiced creating normal and unique indexes, searching records using indexed columns, viewing existing indexes, and removing indexes when they were no longer required. I also understood that indexes are mainly used to optimize search operations in large databases and are commonly applied to columns used in `WHERE`, `JOIN`, `ORDER BY`, and `GROUP BY` clauses.