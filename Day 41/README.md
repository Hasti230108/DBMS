# Day 41 — JSON Operators & JSON_TABLE()

## Topics Covered

### 1. `->` JSON Operator

Learned that `->` is a shorter way to extract a value from a JSON column using a JSON path.

```sql
SELECT employee_data -> '$.name'
FROM employee_json;
```

It returns the JSON value, including quotes for strings.

### 2. `->>` JSON Operator

Learned that `->>` extracts the value and removes the JSON quotes.

```sql
SELECT employee_data ->> '$.name'
FROM employee_json;
```

Example:

```text
->   → "Rahul"
->>  → Rahul
```

`->` is equivalent to `JSON_EXTRACT()`, while `->>` also performs the unquoting step.

### 3. `JSON_TABLE()`

Learned how `JSON_TABLE()` converts JSON data into a table-like result with normal SQL columns.

```sql
SELECT employee.*
FROM employee_json
JOIN JSON_TABLE(
    employee_json.employee_data, '$'
    COLUMNS(
        name VARCHAR(50) PATH '$.name',
        department VARCHAR(50) PATH '$.department',
        salary INT PATH '$.salary'
    )
) AS employee;
```

Output:

```text
+-------+------------+--------+
| name  | department | salary |
+-------+------------+--------+
| Rahul | IT         |  35000 |
+-------+------------+--------+
```

`JSON_TABLE()` produces a relational result from JSON data; it does **not** create a permanent database table.

### 4. JSON Array Indexing

Practiced extracting individual elements from JSON arrays using zero-based indexing.

```sql
JSON_EXTRACT(
    '["Rahul", "Ananya", "Reshma", "Rohan"]',
    '$[2]'
);
```

Result:

```text
"Reshma"
```

### 5. Extracting Multiple Array Elements

Used multiple JSON paths together:

```sql
JSON_EXTRACT(
    '["Rahul", "Ananya", "Reshma", "Rohan"]',
    '$[1]',
    '$[3]'
);
```

Result:

```text
["Ananya", "Rohan"]
```

### 6. `JSON_TABLE()` with Arrays

Converted every element of a JSON array into a separate SQL row.

```sql
SELECT *
FROM JSON_TABLE(
    '["Rahul", "Ananya", "Reshma", "Rohan"]',
    '$[*]'
    COLUMNS(
        name VARCHAR(50) PATH '$'
    )
) AS employees;
```

Output:

```text
+--------+
| name   |
+--------+
| Rahul  |
| Ananya |
| Reshma |
| Rohan  |
+--------+
```

Here, `$[*]` means every element of the JSON array becomes a row.

## Key Takeaway

Today I learned how to move between **JSON data and normal SQL data**:

```text
JSON_EXTRACT()
      ↓
JSON value

-> / ->>
      ↓
Shorter JSON extraction

JSON_TABLE()
      ↓
JSON → SQL rows & columns
```