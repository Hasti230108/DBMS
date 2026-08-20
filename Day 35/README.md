# Day 35 - DBMS Advanced Window Functions

## Topics Covered

* `NTILE()`
* `PERCENT_RANK()`
* `CUME_DIST()`
* `PARTITION BY` with `NTILE()`
* Window-function ranking and distribution

## Key Concepts

```sql
ntile(2) over(order by salary desc)
```

Divides rows into 2 approximately equal buckets. `NTILE(N)` assigns each row a bucket number from `1` to `N`. 

```sql
percent_rank() over(order by salary desc)
```

Returns relative rank from `0` to `1`, calculated as `(rank - 1) / (rows - 1)`. 

```sql
cume_dist() over(order by salary desc)
```

Returns the cumulative distribution of the current row, from `0` to `1`.

## Practice

* Salary groups using `NTILE(2)`
* Salary quartiles using `NTILE(4)`
* Relative salary ranking using `PERCENT_RANK()`
* Cumulative distribution using `CUME_DIST()`
* Department-wise salary groups using `PARTITION BY`

## Outcome
Practiced advanced window functions for **grouping, relative ranking, and distribution analysis** in MySQL.