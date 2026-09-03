# Day 49 - MySQL JSON Basics Revision 

This day focused on revising important MySQL JSON functions and operators using the existing `employee_json` table in the `college_management` database.

## Topics Revised

### 1. Extracting JSON Data

* `JSON_EXTRACT()`
* `->`
* `->>`

These methods were used to extract values from JSON data.

```sql
JSON_EXTRACT(employee_data, '$.name')
```

The `->` operator works as shorthand for extracting a JSON value, while `->>` extracts and unquotes the value.

### 2. Getting JSON Information

* `JSON_KEYS()`
* `JSON_LENGTH()`
* `JSON_TYPE()`

These functions were used to:

* Display the keys available in a JSON object.
* Count the number of fields.
* Identify the type of JSON data.

### 3. Checking Specific JSON Value Types

`JSON_TYPE()` was also used with `JSON_EXTRACT()` to check the type of a specific value.

Example:

```sql
JSON_TYPE(
    JSON_EXTRACT(employee_data, '$.salary')
)
```

The salary value was identified as an `INTEGER`.

### 4. Checking JSON Paths

`JSON_CONTAINS_PATH()` was used to check whether specific paths exist in the JSON document.

The following modes were revised:

* `'one'` — Returns `1` if at least one specified path exists.
* `'all'` — Returns `1` only if all specified paths exist.

### 5. Checking Specific JSON Values

`JSON_CONTAINS()` was used to check whether a specific JSON value exists at a given path.

Example:

```sql
JSON_CONTAINS(
    employee_data,
    '"IT"',
    '$.department'
)
```

This returned `1`, confirming that the department value is `IT`.

## Key Learning

A JSON path and a JSON value are different:

* `JSON_CONTAINS_PATH()` checks whether a **path exists**.
* `JSON_CONTAINS()` checks whether a **specific value exists**.

Also, string values passed to `JSON_CONTAINS()` must be valid JSON strings.

For example:

```sql
'"IT"'
```

not:

```sql
'IT'
```

## Database Used

```text
college_management
```

### Table Used

```text
employee_json
```