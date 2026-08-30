# Day 45 - Creating JSON Objects and Arrays in MySQL

Today I learned how to create JSON data directly in MySQL using `JSON_OBJECT()` and `JSON_ARRAY()`. I also practiced creating nested JSON structures and generating JSON data using values from an existing table.

## Topics Covered

* `JSON_OBJECT()`
* `JSON_ARRAY()`
* JSON objects with arrays
* Nested JSON objects
* JSON arrays containing numbers
* Creating JSON dynamically from table data

## What I Learned

### 1. JSON_OBJECT()

`JSON_OBJECT()` is used to create a JSON object using key-value pairs.

Example:

```sql
SELECT JSON_OBJECT(
    'name', 'Hasti',
    'age', 19,
    'city', 'Mumbai'
) AS student_data;
```

This creates a JSON object containing information about a student.

### 2. JSON_ARRAY()

`JSON_ARRAY()` is used to create a JSON array containing multiple values.

Example:

```sql
SELECT JSON_ARRAY(
    'Python',
    'DBMS',
    'Data Structures'
) AS subjects;
```

This creates an array containing multiple subjects.

### 3. JSON Object Containing an Array

A JSON array can also be placed inside a JSON object.

I created a student object containing a list of subjects.

Example structure:

```json
{
    "name": "Hasti",
    "subjects": ["Python", "DBMS", "Data Structures"]
}
```

### 4. Nested JSON Objects

I also created a JSON object containing another JSON object.

Example structure:

```json
{
    "name": "Hasti",
    "age": 19,
    "address": {
        "city": "Mumbai",
        "state": "Maharashtra"
    }
}
```

This helped me understand how JSON data can contain nested objects.

### 5. JSON Array of Numbers

I created a JSON array containing marks.

```sql
SELECT JSON_ARRAY(
    86,
    92,
    75,
    88
) AS marks;
```

The result was:

```json
[86, 92, 75, 88]
```

### 6. Creating JSON from Existing Table Data

I used data from the existing `employee_json` table to dynamically create a new JSON object.

The JSON object included:

* Employee ID
* Employee Name
* Salary

This helped me understand that `JSON_OBJECT()` can combine regular table columns and values extracted from a JSON column.

## Important Observation

I learned that values inside quotes are stored as strings.

For example:

```sql
'age', '19'
```

stores the age as:

```json
"age": "19"
```

However:

```sql
'age', 19
```

stores it as a number:

```json
"age": 19
```

## Practical Work

Today I successfully:

* Created a simple JSON object
* Created a JSON array of subjects
* Created a JSON object containing an array
* Created a nested JSON object
* Created a JSON array containing numerical values
* Created a JSON object dynamically using data from the `employee_json` table

## Key Takeaway

Today I learned that `JSON_OBJECT()` is used to create JSON data using key-value pairs, while `JSON_ARRAY()` is used to create JSON arrays containing multiple values.

I also learned that JSON objects and arrays can be nested inside each other, making it possible to create more complex JSON structures in MySQL.