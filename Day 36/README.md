# Day 36 – DBMS Window Functions Revision

## Topics Revised
- ROW_NUMBER()
- RANK()
- DENSE_RANK()
- LAG() and LEAD()
- FIRST_VALUE() and LAST_VALUE()
- SUM() and AVG() as window functions
- NTILE()
- PERCENT_RANK()
- CUME_DIST()
- PARTITION BY
- Running totals
- Moving averages
- Window frames using ROWS

## Key Reminder
`LAST_VALUE()` may require:

`ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING`

when the value from the entire window is required.

## Practice
Revised window functions using the `employees` table, including salary ranking, department-wise calculations, salary differences, running totals, moving averages, salary grouping, and distribution calculations.