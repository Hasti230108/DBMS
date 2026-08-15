# Day 30 - Window Functions Revision

## Topics Revised

- `over()`
- `partition by`
- `avg() over()`
- `avg() over(partition by)`
- `row_number()`
- `rank()`
- `dense_rank()`
- Department-wise ranking
- CTE with window functions

## Key Concepts

### Overall Average

```sql
avg(salary) over()
```
Calculates the overall average while keeping every employee row.

### Department Average
```sql
avg(salary) over(partition by department)
```
Calculates the average separately for each department.

### Ranking Functions
```sql
row_number() over(order by salary desc)
rank() over(order by salary desc)
dense_rank() over(order by salary desc)
```
- `row_number()` → unique number for every row
- `rank()` → same rank for ties, with gaps
- `dense_rank()` → same rank for ties, without gaps

### Department-wise Ranking
```sql
rank() over(partition by department order by salary desc)
```
Ranks employees separately within each department.

### CTE + Window Function
Revised using a CTE with `row_number()` to find the highest-paid employee from each department.

### File
`window_functions_revision.sql`

## Revision Outcome
Revised MySQL window functions and practiced `over()`,` partition by`, ranking functions, and CTE-based ranking queries.