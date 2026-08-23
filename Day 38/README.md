# Day 38 — Recursive CTEs

## Topic

**Recursive Common Table Expressions (Recursive CTEs)**

## Learned

Today I learned how to use **Recursive CTEs in MySQL** to generate sequences of numbers and dates.

A Recursive CTE is a CTE that refers to itself and repeatedly generates new rows until a specified condition becomes false. MySQL supports recursive CTEs using the `WITH RECURSIVE` syntax.

## Basic Structure

```sql
WITH RECURSIVE cte_name AS (
    -- Anchor / starting query
    SELECT ...

    UNION ALL

    -- Recursive query
    SELECT ...
    FROM cte_name
    WHERE condition
)
SELECT * FROM cte_name;
```

A recursive CTE has two main parts:

1. **Anchor query** — provides the starting value.
2. **Recursive query** — generates the next value from the previous result.

The recursion stops when the `WHERE` condition becomes false.

## Tasks Completed

### Task 1 — Generate numbers from 1 to 10

```sql
WITH RECURSIVE numbers AS (
    SELECT 1 AS number

    UNION ALL

    SELECT number + 1
    FROM numbers
    WHERE number < 10
)
SELECT * FROM numbers;
```

### Task 2 — Generate numbers from 1 to 20

```sql
WITH RECURSIVE numbers AS (
    SELECT 1 AS number

    UNION ALL

    SELECT number + 1
    FROM numbers
    WHERE number < 20
)
SELECT * FROM numbers;
```

### Task 3 — Generate even numbers

```sql
WITH RECURSIVE numbers AS (
    SELECT 2 AS number

    UNION ALL

    SELECT number + 2
    FROM numbers
    WHERE number < 20
)
SELECT * FROM numbers;
```

Output:

```text
2, 4, 6, 8, 10, 12, 14, 16, 18, 20
```

### Task 4 — Generate odd numbers

```sql
WITH RECURSIVE numbers AS (
    SELECT 1 AS number

    UNION ALL

    SELECT number + 2
    FROM numbers
    WHERE number < 19
)
SELECT * FROM numbers;
```

Output:

```text
1, 3, 5, 7, 9, 11, 13, 15, 17, 19
```

### Task 5 — Generate multiples of 5

```sql
WITH RECURSIVE numbers AS (
    SELECT 5 AS number

    UNION ALL

    SELECT number + 5
    FROM numbers
    WHERE number < 50
)
SELECT * FROM numbers;
```

Output:

```text
5, 10, 15, 20, 25, 30, 35, 40, 45, 50
```

### Task 6 — Generate a sequence of dates

I also learned that recursive CTEs can generate dates by adding an interval to the previous date.

```sql
WITH RECURSIVE dates AS (
    SELECT '2026-07-16' AS date

    UNION ALL

    SELECT date + INTERVAL 1 DAY
    FROM dates
    WHERE date < '2026-08-23'
)
SELECT * FROM dates;
```

This generates every date from:

```text
2026-07-16
```

through:

```text
2026-08-23
```

MySQL's documentation also demonstrates recursive CTEs for generating date ranges.

## 🔑 Important Concepts

### `WITH RECURSIVE`

Tells MySQL that the CTE can refer to itself.

### `UNION ALL`

Combines the starting row with rows generated recursively.

### Anchor Query

The starting point:

```sql
SELECT 1 AS number
```

### Recursive Query

Generates the next value:

```sql
SELECT number + 1
FROM numbers
```

### Termination Condition

Controls when recursion stops:

```sql
WHERE number < 10
```

Without a proper termination condition, a recursive CTE can continue until MySQL's recursion limit is reached.

### Date Arithmetic

```sql
date + INTERVAL 1 DAY
```

adds one day to the current date.

## Key Learning

The biggest idea from today:

> **Start with one value → generate the next value → repeat until the condition becomes false.**

This makes Recursive CTEs useful for:

- Number sequences
- Even/odd sequences
- Multiples
- Date ranges
- Hierarchical data
- Fibonacci sequences
- Organizational/managerial hierarchies

Recursive CTEs are particularly useful when the next row depends on the previous row.