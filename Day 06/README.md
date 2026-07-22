# Day 06 - Foreign Key & Referential Integrity

## Topics Covered
- Parent Table
- Child Table
- FOREIGN KEY Constraint
- REFERENCES
- Referential Integrity
- ALTER TABLE
- UPDATE
- INSERT
- DELETE

## Database
`college_management`

## Table Created
### Employees (Child Table)

| Column | Data Type | Constraints |
|--------|-----------|-------------|
| emp_id | INT | PRIMARY KEY |
| first_name | VARCHAR(30) | NOT NULL |
| last_name | VARCHAR(30) | - |
| email | VARCHAR(50) | UNIQUE |
| department | VARCHAR(30) | DEFAULT 'General' |
| salary | INT | CHECK (salary >= 20000) |

### Departments (Parent Table)

| Column | Data Type | Constraints |
|---------|-----------|-------------|
| dept_id | INT | PRIMARY KEY |
| department_name | VARCHAR(30) | UNIQUE, NOT NULL |

## Queries Practiced
- Created a parent table (`departments`)
- Added a new column (`dept_id`) to the existing `employees` table
- Updated employee records with department IDs
- Created a FOREIGN KEY relationship using `REFERENCES`
- Tested FOREIGN KEY constraint by inserting an invalid department ID
- Tested Referential Integrity by attempting to delete a referenced department

## Key Concepts Learned
- Parent Table
- Child Table
- FOREIGN KEY
- REFERENCES
- Referential Integrity
- Data Integrity

## Outcome
Today I learned how to establish relationships between two tables using the `FOREIGN KEY` constraint. I understood the concepts of parent and child tables, how `REFERENCES` works, and how referential integrity prevents invalid data from being inserted or deleted. This is the foundation for learning SQL JOINs.