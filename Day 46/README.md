# Day 46 - JSON Aggregation in MySQL

Today I learned how to combine values from multiple rows into JSON arrays and JSON objects using JSON aggregation functions in MySQL.

## Topics Covered

* `JSON_ARRAYAGG()`
* `JSON_OBJECTAGG()`
* Creating JSON arrays from table data
* Creating JSON objects from table data
* Aggregating JSON data from multiple rows

## What I Learned

### 1. JSON_ARRAYAGG()

`JSON_ARRAYAGG()` is used to combine values from multiple rows into a single JSON array.

For example, I created JSON arrays containing:

* Employee names
* Employee cities
* Employee salaries

Since my `employee_json` table currently contains one employee, the results contained one value inside each JSON array.

Example result:

```text
["Rahul"]
```

### 2. JSON_OBJECTAGG()

`JSON_OBJECTAGG()` is used to combine key-value pairs from multiple rows into a single JSON object.

The first argument is used as the **key**, and the second argument is used as the **value**.

For example, I created JSON objects using:

* Employee ID → Employee Name
* Employee ID → Employee Salary

Example result:

```text
{"101": "Rahul"}
```

### Practical Work

I worked with the `employee_json` table and performed the following tasks:

* Created a JSON array of employee names
* Created a JSON array of employee cities
* Created a JSON array of employee salaries
* Created a JSON object containing Employee ID and Name
* Created a JSON object containing Employee ID and Salary

## Key Difference

| Function           | Purpose                                     |
| ------------------ | ------------------------------------------- |
| `JSON_ARRAYAGG()`  | Combines values into a JSON array           |
| `JSON_OBJECTAGG()` | Combines key-value pairs into a JSON object |

## Key Takeaway

Today I learned how MySQL can aggregate data from multiple rows and convert it into JSON format.

`JSON_ARRAYAGG()` is useful when values need to be combined into a JSON array, while `JSON_OBJECTAGG()` is useful when data needs to be represented as key-value pairs in a JSON object.

These functions become especially useful when working with multiple rows of data and creating JSON results directly from SQL queries.