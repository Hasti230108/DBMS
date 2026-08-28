# Day 43 - JSON Utility and Search Functions in MySQL

Today I continued working with JSON data in MySQL and learned how to examine JSON objects, check JSON data types, verify the existence of JSON paths, and search for specific values.

## Topics Covered

* `JSON_KEYS()`
* `JSON_LENGTH()`
* `JSON_TYPE()`
* `JSON_CONTAINS_PATH()`
* `JSON_CONTAINS()`

## What I Learned

### 1. JSON_KEYS()

Used `JSON_KEYS()` to retrieve all the keys present in a JSON object.

For the employee JSON data, the keys included:

* `age`
* `city`
* `name`
* `salary`
* `department`

### 2. JSON_LENGTH()

Used `JSON_LENGTH()` to count the number of elements or keys present in the JSON document.

The employee JSON object contained **5 fields**.

### 3. JSON_TYPE()

Used `JSON_TYPE()` to identify the type of a JSON value.

I checked:

* The complete `employee_data` JSON document → `OBJECT`
* The `salary` value extracted from the JSON document → `INTEGER`

### 4. JSON_CONTAINS_PATH()

Used `JSON_CONTAINS_PATH()` to check whether specific paths exist inside a JSON document.

I learned the difference between:

* `'one'` → Returns `1` if at least one specified path exists
* `'all'` → Returns `1` only if all specified paths exist

For example, `city` existed while `phone` did not:

* Using `'one'` returned `1`
* Using `'all'` returned `0`

### 5. JSON_CONTAINS()

Used `JSON_CONTAINS()` to check whether a specific JSON value exists at a particular path.

I checked whether the value `"IT"` existed in the `department` field, and the result was `1`, meaning the value exists.

## Errors and Corrections

While practicing, I made a few syntax mistakes and corrected them:

* Corrected the placement of `AS salary_type` outside `JSON_TYPE()`
* Used a comma `,` instead of a dot `.` to separate multiple JSON paths
* Learned that `JSON_CONTAINS_PATH()` checks for the existence of paths and requires `'one'` or `'all'`
* Used `JSON_CONTAINS()` instead to check whether a specific value exists

## Key Takeaway

Today I learned how to inspect and search JSON data in MySQL.

The important difference to remember is:

* `JSON_CONTAINS_PATH()` → Checks whether a JSON path exists
* `JSON_CONTAINS()` → Checks whether a specific JSON value exists

This helped me understand how MySQL can be used to inspect the structure, type, paths, and values stored inside JSON data.