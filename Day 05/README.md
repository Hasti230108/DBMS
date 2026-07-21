# Day 05 - SQL Constraints

## Topics Covered
- PRIMARY KEY
- NOT NULL
- UNIQUE
- DEFAULT
- CHECK
- DESC

## Database
`college_management`

## Table Created
`employees`

| Column | Data Type | Constraints |
|--------|-----------|-------------|
| emp_id | INT | PRIMARY KEY |
| first_name | VARCHAR(30) | NOT NULL |
| last_name | VARCHAR(30) | - |
| email | VARCHAR(50) | UNIQUE |
| department | VARCHAR(30) | DEFAULT 'General' |
| salary | INT | CHECK (salary >= 20000) |

## Records Added
- Inserted valid employee records.
- Used DEFAULT value for department.

## Constraint Testing
- Tested `UNIQUE` by inserting a duplicate email.
- Tested `CHECK` by inserting an invalid salary.
- Tested `PRIMARY KEY` by inserting a duplicate employee ID.
- Tested `NOT NULL` by inserting a NULL value.

## Queries Practiced
- CREATE TABLE
- INSERT INTO
- SELECT
- WHERE
- ORDER BY
- COUNT()
- MAX()
- DISTINCT
- DESC

## Outcome
Today I learned how SQL constraints help maintain data integrity by preventing duplicate, NULL, and invalid data. I practiced using PRIMARY KEY, NOT NULL, UNIQUE, DEFAULT, and CHECK constraints while creating and testing an employees table in MySQL.