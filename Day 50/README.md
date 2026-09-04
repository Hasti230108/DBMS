# Day 50 – MySQL JSON_SEARCH()

## Topic Covered

Today, I learned how to search for string values inside JSON data using MySQL's `JSON_SEARCH()` function.

## Concepts Learned

### 1. JSON_SEARCH()

Used to search for a string value inside a JSON document and return the JSON path where the value is found.

### 2. Search Mode: `one`

The `'one'` mode returns one matching JSON path.

Example searches performed:

* `Rahul` → `$.name`
* `Mumbai` → `$.city`
* `IT` → `$.department`

### 3. Search Mode: `all`

The `'all'` mode searches for all matching paths.

Since `Rahul` appeared only once in the JSON data, the result returned only:

`$.name`

### 4. `%` Wildcard

The `%` wildcard matches any number of characters.

Example:

`M%`

This successfully matched `Mumbai` and returned:

`$.city`

### 5. `_` Wildcard

The `_` wildcard matches exactly one character.

Example:

`I_`

This successfully matched `IT` and returned:

`$.department`

### 6. Searching for a Nonexistent Value

When searching for a value that does not exist in the JSON data:

`Python`

The result returned:

`NULL`

### 7. Searching Within a Specific JSON Path

I also learned how to restrict `JSON_SEARCH()` to a specific JSON path.

Example:

Searching for `Rahul` only inside:

`$.name`

Result:

`$.name`

## Functions and Concepts Used

* `JSON_SEARCH()`
* `'one'`
* `'all'`
* JSON paths
* `%` wildcard
* `_` wildcard
* `NULL`
* Path-restricted JSON searching

## Summary

Today, I learned how to locate string values inside JSON documents using MySQL's `JSON_SEARCH()` function. I practiced exact searches, searching with `'one'` and `'all'` modes, wildcard searches using `%` and `_`, handling values that do not exist, and restricting searches to specific JSON paths.