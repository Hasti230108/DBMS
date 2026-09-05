# Day 51 – SQL CASE Expressions & Conditional Grouping

## Topic

**CASE Expression in MySQL**

Today I learned how to use `CASE` expressions to classify data based on conditions and how to combine `CASE` with `COUNT()` and `GROUP BY` for summary reports.

## Concepts Learned

* `CASE WHEN ... THEN ... ELSE ... END`
* Creating performance categories
* Creating grades using percentage ranges
* Using multiple `CASE` expressions in one query
* Using `COUNT()` with `CASE` results
* Grouping data using `GROUP BY`
* Creating summary reports from categorized data

## Examples

### 1. Student Performance

```sql
SELECT first_name, percentage,
CASE
    WHEN percentage >= 90 THEN "Excellent"
    WHEN percentage >= 75 THEN "Good"
    WHEN percentage >= 50 THEN "Average"
    ELSE "Needs Improvement"
END AS performance
FROM students;
```

### 2. Student Grades

```sql
SELECT first_name, percentage,
CASE
    WHEN percentage >= 90 THEN "O"
    WHEN percentage >= 80 THEN "A"
    WHEN percentage >= 70 THEN "B"
    WHEN percentage >= 60 THEN "C"
    WHEN percentage >= 50 THEN "D"
    ELSE "F"
END AS grade
FROM students;
```

### 3. Performance + Grade Together

```sql
SELECT first_name, percentage,

CASE
    WHEN percentage >= 90 THEN "Excellent"
    WHEN percentage >= 75 THEN "Good"
    WHEN percentage >= 50 THEN "Average"
    ELSE "Needs Improvement"
END AS performance,

CASE
    WHEN percentage >= 90 THEN "O"
    WHEN percentage >= 80 THEN "A"
    WHEN percentage >= 70 THEN "B"
    WHEN percentage >= 60 THEN "C"
    WHEN percentage >= 50 THEN "D"
    ELSE "F"
END AS grade

FROM students;
```

### 4. Count Students by Performance

```sql
SELECT
CASE
    WHEN percentage >= 90 THEN "Excellent"
    WHEN percentage >= 75 THEN "Good"
    WHEN percentage >= 50 THEN "Average"
    ELSE "Needs Improvement"
END AS performance,
COUNT(*) AS total_students
FROM students
GROUP BY performance;
```

## Key Takeaway

`CASE` allows SQL queries to make decisions and categorize rows based on conditions. It can also be combined with aggregate functions such as `COUNT()` and `GROUP BY` to create useful summary reports.