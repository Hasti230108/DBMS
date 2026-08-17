# Day 32 - FIRST_VALUE, LAST_VALUE and NTH_VALUE

## Topics Covered

- `FIRST_VALUE()`
- `LAST_VALUE()`
- `NTH_VALUE()`
- Window Frames
- `ROWS BETWEEN`
- `UNBOUNDED PRECEDING`
- `UNBOUNDED FOLLOWING`

## FIRST_VALUE()

`FIRST_VALUE()` returns the value from the first row of the window frame. 

```sql
first_value(salary) over(order by salary desc)
```

Example:
```sql
select first_name, salary,
first_value(salary) over(order by salary desc) as highest_salary
from employees;
```

## LAST_VALUE()

`LAST_VALUE()` returns the value from the last row of the window frame.
```sql
last_value(salary) over(
    order by salary desc
    rows between unbounded preceding and unbounded following
)
```
The full frame is used so the function can access the last row of the complete window.

## NTH_VALUE()

`NTH_VALUE()` returns the value from the Nth row of the window frame.
```sql
nth_value(salary, 2) over(
    order by salary desc
    rows between unbounded preceding and unbounded following
)
```
Here `2` means the second value in the window.

## Window Frame
```sql
rows between unbounded preceding and unbounded following
```
- `unbounded preceding` → start of the window
- `unbounded following` → end of the window

## Quick Revision
| Function | Meaning |
|----------|---------|
| `first_value()` | First value |
| `last_value()` | Last value |
| `nth_value()` | Nth value |
| `lag()` | Previous value |
| `lead()` | Next value |

## Skills Gained
- First and last value functions
- Nth value selection
- Window frames
- Using ROWS BETWEEN
- Understanding UNBOUNDED PRECEDING
- Understanding UNBOUNDED FOLLOWING
- Combining multiple window functions

## Outcome
Today I learned how to use FIRST_VALUE(), LAST_VALUE() and NTH_VALUE() with window functions. I also learned how window frames control which rows are available for these functions.