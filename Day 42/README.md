# Day 42 - JSON Modification in MySQL

Today I continued working with **JSON data in MySQL**, focusing on modifying JSON values and understanding the difference between temporary changes and permanent updates.

### Topics Covered

* `JSON_SET()`
* `JSON_REPLACE()`
* `JSON_INSERT()`
* `JSON_REMOVE()`
* Updating JSON data permanently using `UPDATE`

### What I Learned

**1. JSON_SET()**
Used to **add a new key or update an existing key** in a JSON document.

**2. JSON_REPLACE()**
Used to **replace an existing key's value**. If the key does not exist, nothing is changed.

**3. JSON_INSERT()**
Used to **insert a new key**, but it does not overwrite an existing key.

**4. JSON_REMOVE()**
Used to **remove one or more keys** from a JSON document.

### Important Difference

| Function         | Existing Key | New Key   |
| ---------------- | ------------ | --------- |
| `JSON_SET()`     | Updates      | Adds      |
| `JSON_REPLACE()` | Updates      | Ignores   |
| `JSON_INSERT()`  | Ignores      | Adds      |
| `JSON_REMOVE()`  | Removes      | No effect |

I also understood that using these functions with `SELECT` only displays the modified JSON result; it does **not** change the stored value. To permanently modify the JSON column, I need to use `UPDATE`.

### Practical Work

I worked with the `employee_json` table and permanently updated:

* Salary: `35000` → `40000`
* Added city: `"Mumbai"`

Finally, I used `SELECT * FROM employee_json` to verify that the changes were actually stored in the table.

### Key Takeaway

Today I learned how to **read, modify, remove, insert, and permanently update JSON data in MySQL**. The main thing to remember is the difference between `JSON_SET()`, `JSON_REPLACE()`, and `JSON_INSERT()`.