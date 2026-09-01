# Day 47 - JSON Utility Functions in MySQL

Today I learned about JSON utility functions in MySQL. These functions help format JSON data, validate JSON values, check the structure of JSON documents, and work with quoted and unquoted JSON values.

## Topics Covered

* `JSON_PRETTY()`
* `JSON_VALID()`
* `JSON_DEPTH()`
* `JSON_QUOTE()`
* `JSON_UNQUOTE()`

## What I Learned

### 1. JSON_PRETTY()

I used `JSON_PRETTY()` to display JSON data in a more readable and properly formatted structure.

```sql
SELECT JSON_PRETTY(employee_data) AS formatted_employee
FROM employee_json;
```

This displayed each JSON key and value on separate lines with proper indentation.

### 2. JSON_VALID()

I used `JSON_VALID()` to check whether a value contains valid JSON.

```sql
SELECT JSON_VALID(employee_data) AS is_valid_json
FROM employee_json;
```

The function returned:

* `1` → Valid JSON
* `0` → Invalid JSON

I also tested both a valid and an invalid JSON string.

### 3. JSON_DEPTH()

I used `JSON_DEPTH()` to find the depth of the JSON document.

```sql
SELECT JSON_DEPTH(employee_data) AS json_depth
FROM employee_json;
```

The employee JSON document had a depth of `2`.

### 4. JSON_QUOTE()

I used `JSON_QUOTE()` to convert a normal string into a quoted JSON string.

```sql
SELECT JSON_QUOTE('Hasti Karaniya') AS quoted_name;
```

The result was:

```text
"Hasti Karaniya"
```

### 5. JSON_UNQUOTE()

I used `JSON_UNQUOTE()` to work with an unquoted JSON value.

```sql
SELECT JSON_UNQUOTE('Hasti Karaniya') AS unquoted_name;
```

The result was displayed as:

```text
Hasti Karaniya
```

### 6. JSON_UNQUOTE() with JSON_EXTRACT()

I combined `JSON_UNQUOTE()` with `JSON_EXTRACT()` to extract the employee name without JSON quotation marks.

```sql
SELECT JSON_UNQUOTE(
    JSON_EXTRACT(employee_data, '$.name')
) AS employee_name
FROM employee_json;
```

This returned:

```text
Rahul
```

## Practical Work

Today I performed the following operations:

* Formatted employee JSON data using `JSON_PRETTY()`
* Checked whether stored JSON data was valid
* Tested valid and invalid JSON strings
* Found the depth of a JSON document
* Converted a normal string into a quoted JSON value
* Worked with an unquoted value using `JSON_UNQUOTE()`
* Extracted and unquoted an employee name from JSON data

## Key Takeaway

Today I learned how MySQL provides utility functions for working with JSON data.

I can:

* Make JSON easier to read using `JSON_PRETTY()`
* Check JSON validity using `JSON_VALID()`
* Check the structure depth using `JSON_DEPTH()`
* Add JSON-style quotes using `JSON_QUOTE()`
* Remove or work with unquoted JSON values using `JSON_UNQUOTE()`

These functions are useful when validating, formatting, and processing JSON data stored in MySQL.