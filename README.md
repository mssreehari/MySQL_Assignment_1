# MySQL Assignment 1 – DDL Commands & Constraints

## Project Overview

This project demonstrates the implementation of SQL Data Definition Language (DDL) commands and database constraints using MySQL Workbench.

The assignment focuses on creating and managing an Employee Database, modifying database structures, and implementing constraints to maintain data integrity and consistency.

## Database Schema

**Database Name:** `employee`

The database consists of three relational tables:

### 1. Departments
| Column | Data Type | Description |
|---|---|---|
| department_id | INT | Primary Key |
| department_name | VARCHAR(100) | Department Name |

### 2. Location
| Column | Data Type | Description |
|---|---|---|
| location_id | INT | Primary Key |
| location | VARCHAR(30) | Location Name |

### 3. Employees
| Column | Data Type | Description |
|---|---|---|
| employee_id | INT | Primary Key |
| employee_name | VARCHAR(50) | Employee Name |
| gender | ENUM('M','F') | Gender |
| age | INT | Employee Age |
| hire_date | DATE | Date of Joining |
| designation | VARCHAR(100) | Employee Designation |
| department_id | INT | Foreign Key |
| location_id | INT | Foreign Key |
| salary | DECIMAL(10,2) | Employee Salary |

## Part 1 – DDL Commands

The following SQL commands were implemented:

### 1. CREATE
- Created the `employee` database.
- Created Departments, Location and Employees tables.
- Established relationships between the tables using foreign keys.

### 2. ALTER
Performed structural modifications to the Employees table:
- Added a new column named `email`.
- Modified the designation column from VARCHAR(100) to VARCHAR(150).
- Dropped the age column.
- Renamed hire_date to date_of_joining.

### 3. RENAME
- Renamed Departments to Departments_Info.
- Renamed Location to Locations.

### 4. TRUNCATE
- Truncated the Employees table to remove all records while retaining its structure.

### 5. DROP
- Dropped the Employees table.
- Dropped the employee database.

## Part 2 – Database Constraints

The database was recreated with appropriate constraints to ensure data integrity.

### 1. Departments Table
- **PRIMARY KEY:** Ensures each department has a unique identifier.
- **NOT NULL:** Prevents department names from being NULL.
- **UNIQUE:** Prevents duplicate department names.

### 2. Location Table
- **PRIMARY KEY:** Ensures unique location identifiers.
- **AUTO_INCREMENT:** Automatically generates sequential location IDs.
- **NOT NULL:** Prevents NULL location values.
- **UNIQUE:** Prevents duplicate locations.

### 3. Employees Table
- **PRIMARY KEY:** Ensures each employee has a unique identifier.
- **AUTO_INCREMENT:** Automatically generates employee IDs.
- **NOT NULL:** Ensures employee names are provided.
- **ENUM:** Restricts gender values to 'M' or 'F'.
- **CHECK:** Ensures employee age is 18 or above.
- **DEFAULT:** Automatically assigns the current date to hire_date when no date is specified.
- **FOREIGN KEY:** Establishes relationships with the Departments and Location tables.

## Data Insertion and Verification

Sample records were inserted into the database to verify the table relationships and constraints.

The insertion process followed the correct order:

1. Inserted records into Departments.
2. Inserted records into Location.
3. Inserted records into Employees.

SQL SELECT statements were used to retrieve and verify the inserted records.

## Constraint Testing

The following test cases were used to verify database constraints:

- Attempted to insert duplicate department names.
- Attempted to insert NULL employee names.
- Tested invalid gender values.
- Tested employee ages below 18.
- Tested invalid department IDs to verify foreign-key restrictions.

Invalid records were rejected by the corresponding database constraints.

## Tools and Technologies

- **MySQL** – Relational Database Management System.
- **MySQL Workbench** – SQL development and database management environment.
- **SQL** – Database creation, modification and constraint implementation.
- **GitHub** – Project version control and submission.

## Key Concepts Learned

- Database and table creation.
- Modifying existing table structures.
- Renaming and deleting database objects.
- Understanding primary and foreign keys.
- Implementing database constraints.
- Maintaining referential integrity.
- Inserting and validating relational data.
- Executing SQL scripts using MySQL Workbench.

## Conclusion

This assignment provided practical experience in database management using MySQL. It demonstrated how DDL commands can be used to create and modify database structures and how constraints maintain data accuracy, consistency and referential integrity in relational databases.

---

**Assignment:** MySQL Assignment 1  
**Topic:** DDL Commands & Constraints  
**Database:** Employee Database  
**Tool:** MySQL Workbench
