# DAY 2 - SQL Basics

## Topics Covered
- CREATE DATABASE
- USE DATABASE 
- CREATE TABLE
- PRIMARY KEY 
- INSERT INTO
- UPDATE
- SELECT
- WHERE
- SET
- AND
- OR
- BETWEEN
- LIKE
- ORDER BY
- DISTINCT
- LIMIT
- COUNT()
- MAX()
- MIN()
- AVG()
- SUM()
- IS NULL
- IS NOT NULL

## Database 
college_management

## Table created 
### 1. teachers

| Column | Data Type | Constraints |
|--------|-----------|-------------|
| teacher_id | INT | PRIMARY KEY |
| first_name | VARCHAR(50) | NOT NULL |
| last_name | VARCHAR(50) | - |
| subject | VARCHAR(50) | NOT NULL |
| experience | INT | - |
| salary | INT | NOT NULL |
| city | VARCHAR(30) | - |

### 2. students

| Column | Data Type | Constraints |
|--------|-----------|-------------|
| student_id | INT | PRIMARY KEY |
| first_name | VARCHAR(15) | NOT NULL |
| last_name | VARCHAR(15) | NOT NULL |
| age | INT | - |
| gender | VARCHAR(10) | NOT NULL |
| city | VARCHAR(15) | - |
| course | VARCHAR(50) | NOT NULL |
| semester | INT | - |
| marks | INT | - |

## Records Added
- teachers: **5**
- students: **10**

## Queries Practiced
- Create Database
- Create Table
- Insert Records
- Update Records
- Select All Records
- Select Specific Columns
- Filter Records using `WHERE`
- Sort Records using `ORDER BY`
- Remove Duplicates using `DISTINCT`
- Retrieve Limited Records using `LIMIT`
- Pattern Matching using `LIKE`
- Range Search using `BETWEEN`
- Multiple Conditions using `AND` & `OR`
- Aggregate Functions (`COUNT`, `MAX`, `MIN`, `AVG`, `SUM`)
- NULL Value Handling (`IS NULL`, `IS NOT NULL`)
- Working with Multiple Tables
- Sorting Student Records
- Filtering Student Records

## Learning Outcome

In this session, I practiced creating multiple tables, inserting records, updating data, filtering records using WHERE, sorting data with ORDER BY, removing duplicates using DISTINCT, limiting results using LIMIT, applying aggregate functions, and handling NULL values in MySQL.