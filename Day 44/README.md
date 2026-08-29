# Day 44 - JSON Functions Revision in MySQL

Today I revised the JSON functions I learned in the previous DBMS days. The revision focused on extracting values from JSON data, checking JSON keys and types, finding the number of fields, and checking whether specific paths or values exist.

## Topics Revised

* `JSON_EXTRACT()`
* `->`
* `->>`
* `JSON_KEYS()`
* `JSON_LENGTH()`
* `JSON_TYPE()`
* `JSON_CONTAINS_PATH()`

## What I Practiced

### 1. Extracting JSON Values

I used `JSON_EXTRACT()` to extract the employee's name from the JSON data.

I also revised the `->` operator, which extracts a JSON value, and the `->>` operator, which extracts and returns the value without JSON quotes.

Examples practiced:

* Extracted `name` using `JSON_EXTRACT()`
* Extracted `city` using `->`
* Extracted `department` using `->>`

### 2. Getting JSON Keys

I used `JSON_KEYS()` to display all the keys present in the employee JSON object.

The keys in the employee data were:

* `age`
* `city`
* `name`
* `salary`
* `department`

### 3. Finding the Number of JSON Fields

I used `JSON_LENGTH()` to find the total number of fields in the JSON object.

The employee JSON document contained **5 fields**.

### 4. Checking JSON Data Types

I used `JSON_TYPE()` to check the type of the complete JSON document.

The complete employee data returned:

`OBJECT`

I also extracted the `salary` value and checked its JSON type.

The salary returned:

`INTEGER`

### 5. Checking Whether JSON Paths Exist

I used `JSON_CONTAINS_PATH()` to check whether specific paths exist in the JSON document.

I practiced:

* Checking whether `$.city` exists
* Checking whether at least one of `$.phone` or `$.city` exists using `'one'`
* Checking whether both `$.city` and `$.department` exist using `'all'`

## Important Difference

| Option  | Meaning                                           |
| ------- | ------------------------------------------------- |
| `'one'` | Returns `1` if at least one specified path exists |
| `'all'` | Returns `1` only if all specified paths exist     |

## Key Takeaway

Today was a revision day focused on MySQL JSON functions. I revised different ways of extracting JSON values, checking keys and JSON types, finding the number of fields, and checking whether specific paths exist.

I also understood the difference between:

* `JSON_EXTRACT()` and `->`
* `->` and `->>`
* `'one'` and `'all'` in `JSON_CONTAINS_PATH()`