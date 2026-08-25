# Day 40 – JSON Basics

## Overview

Today I started **JSON in MySQL**. I learned how to create JSON objects and arrays, store JSON data inside a table, and extract values from JSON documents using JSON paths.

MySQL provides a native `JSON` data type for storing and working with JSON documents.

## Topics Covered

### 1. JSON Object

`JSON_OBJECT()` creates a JSON object using key-value pairs.

```sql
SELECT JSON_OBJECT(
    'name', 'Rahul',
    'age', 20,
    'city', 'Mumbai'
);
```

### 2. JSON Array

`JSON_ARRAY()` creates a JSON array containing multiple values.

```sql
SELECT JSON_ARRAY('Rahul', 'Ananya', 'Reshma', 'Rohan');
```

### 3. JSON Data Type

Created a table with a `JSON` column:

```sql
CREATE TABLE employee_json (
    emp_id INT PRIMARY KEY,
    employee_data JSON
);
```

Stored employee information as a JSON document inside `employee_data`.

### 4. JSON_EXTRACT()

Used `JSON_EXTRACT()` to retrieve specific values from the JSON document.

```sql
SELECT JSON_EXTRACT(employee_data, '$.name')
FROM employee_json;
```

Important JSON path:

```text
$          → complete JSON document
$.name     → name key
$.salary   → salary key
```

### 5. Extracting Multiple Values

Multiple paths can be supplied to `JSON_EXTRACT()`:

```sql
SELECT JSON_EXTRACT(
    employee_data,
    '$.name',
    '$.department',
    '$.salary'
)
FROM employee_json;
```

This returns the matched values together as a JSON array.

## Key Learning

Today I learned that JSON allows related information to be stored in a structured **key-value format**, and MySQL provides built-in functions to create, store, and extract JSON data.

### Important Functions

* `JSON_OBJECT()` → Create JSON object
* `JSON_ARRAY()` → Create JSON array
* `JSON_EXTRACT()` → Extract JSON values
* `$.key` → Access a value using a JSON path