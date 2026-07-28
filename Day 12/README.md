# Day 12 - SELF JOIN and UNION 

## Topics Covered
- SELF JOIN
- UNION
- UNION ALL
- Table Aliases
- Self Referencing Relationships
- Comparing Rows Within Same Table
- Combining Multiple SELECT Results
- LIKE Operator
- ALTER TABLE
- UPDATE Query

## Database
`college_management`

## Table Used
- employees
- departments

## Database Changes
### Added Manager Relationship
Added `manager_id` column in the employees table to create a self-referencing relationship.

## Queries Practiced
### 1. Display Employees with Their Managers

- Used SELF JOIN to compare employees table with itself.
- Learned how the same table can be used with different aliases.

### 2. Find Employees Working in the Same Department

- Compared employees with other employees using SELF JOIN.
- Used aliases `e1` and `e2`.

### 3. Compare Employee Salaries

- Used SELF JOIN to find employees earning higher salary than others.

### 4. Combine Employee Names and Department Names

- Used UNION to combine results from different tables.

### 5. Display Departments Using UNION

- Combined employee department values and department table values.

### 6. Understand UNION ALL

- Used UNION ALL to display duplicate values.
- Compared the difference between UNION and UNION ALL.

### 7. Filter Combined Results

- Used LIKE operator with UNION.
- Retrieved names starting with a specific character.

## Concepts Learned

- SELF JOIN allows a table to join with itself.
- Table aliases help differentiate multiple copies of the same table.
- UNION combines results from multiple SELECT statements.
- UNION removes duplicate records.
- UNION ALL keeps duplicate records.
- Self joins are useful for hierarchical data like employee-manager relationships.

## Outcome
Today I learned how to compare records within the same table using SELF JOIN. I practiced creating self-referencing relationships, using aliases, and comparing rows. I also learned how UNION and UNION ALL combine query results and understood the difference between removing and keeping duplicate records.