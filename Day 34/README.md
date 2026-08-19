# Day 34 - DBMS Window Frames

## Topics Covered

* Running Total
* Running Average
* `partition by`
* Window Frames
* `rows`
* `unbounded preceding`
* `current row`
* Moving Average
* Department-wise Running Total

## Key Concepts

```sql
sum(salary) over(order by salary asc)
```
Creates a running total.

```sql
rows between unbounded preceding and current row
```

Means the calculation includes rows from the beginning up to the current row. This is the explicit form commonly used for running totals.

```sql
rows between 2 preceding and current row
```
Creates a 3-row moving window: the current row plus the previous two rows. 

## Practice Covered

- Overall running total
- Running average
- Department-wise running total
- Explicit window frame
- 3-row moving average
- Department-wise running total with explicit frame

## Outcome
Revised and practiced MySQL window frames for running totals and moving averages, including the use of `partition by`, `rows`, `unbounded preceding`, and `current row`.