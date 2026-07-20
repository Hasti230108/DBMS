# Day 04 - Transaction Control Language (TCL)

## Topics Covered
- START TRANSACTION
- COMMIT
- ROLLBACK
- SAVEPOINT
- ROLLBACK TO SAVEPOINT

## Database
`college_management`

## Tables Used
- teachers
- students

## Operations Performed

### Transaction 1 - Rollback
- Started a transaction
- Updated a student's percentage
- Rolled back the transaction
- Verified that the original data was restored

### Transaction 2 - Commit
- Started a transaction
- Updated the semester of all AI & ML students
- Verified the changes
- Committed the transaction permanently

### Transaction 3 - Savepoint
- Started a transaction
- Created a savepoint
- Deleted a student record
- Rolled back to the savepoint
- Verified that the deleted record was restored
- Committed the transaction

### Transaction 4 - Rollback on Teachers Table
- Started a transaction
- Increased the salary of teachers from Mumbai
- Verified the updated salaries
- Rolled back the transaction

## Concepts Learned
- Difference between temporary and permanent database changes
- How transactions ensure data consistency
- Using COMMIT to permanently save changes
- Using ROLLBACK to undo changes
- Using SAVEPOINT for partial rollback within a transaction

## Outcome
Today I learned Transaction Control Language (TCL) commands in MySQL. I practiced starting transactions, committing changes, rolling back unwanted changes, creating savepoints, and restoring data using rollback to savepoint. These commands help maintain data integrity and allow safe execution of database operations.