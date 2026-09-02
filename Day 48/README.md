# Day 48 - JSON_TABLE() in MySQL

Today I learned about the `JSON_TABLE()` function in MySQL.

`JSON_TABLE()` is used to convert JSON data into a relational table format. It allows values stored inside a JSON document to be extracted and displayed as normal SQL columns.

## Topics Covered

* `JSON_TABLE()`
* Extracting multiple JSON fields as table columns
* Using `PATH` expressions
* Using `CROSS JOIN` with `JSON_TABLE()`
* Combining regular table columns with JSON data

## What I Learned

### 1. Converting JSON Data into Table Columns

I used `JSON_TABLE()` to extract the following values from the `employee_data` JSON column:

* Name
* Age
* City
* Salary
* Department

The JSON values were converted into normal relational table columns.

### 2. Extracting Selected JSON Fields

I also used `JSON_TABLE()` to extract only selected values from the JSON document, such as:

* Employee Name
* Employee Salary

This showed that I can choose only the JSON fields needed for a query.

### 3. Combining Table Columns and JSON Data

I combined the regular `emp_id` column from the `employee_json` table with values extracted from the `employee_data` JSON column.

This allowed me to display both normal SQL data and JSON data in the same query result.

## Important Concept

The JSON column used inside `JSON_TABLE()` belongs to the `employee_json` table.

Therefore, the table containing the JSON column must be referenced before `JSON_TABLE()` so MySQL knows where `employee_data` comes from.

## Key Takeaway

Today I learned how to convert JSON data stored in MySQL into a relational table format using `JSON_TABLE()`.

I can now:

* Extract JSON values as normal SQL columns.
* Extract multiple fields from a JSON object.
* Select only specific JSON fields.
* Combine normal table columns with JSON-extracted data.