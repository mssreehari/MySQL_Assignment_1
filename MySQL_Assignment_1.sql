#Part A – DDL Commands
#Question 1: Table Creation (CREATE)
DROP DATABASE IF EXISTS employee;

CREATE DATABASE employee;

USE employee;
CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);
CREATE TABLE Location (
    location_id INT PRIMARY KEY,
    location VARCHAR(30)
);
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    gender ENUM('M', 'F'),
    age INT,
    hire_date DATE,
    designation VARCHAR(100),
    department_id INT,
    location_id INT,
    salary DECIMAL(10,2),

    FOREIGN KEY (department_id)
        REFERENCES Departments(department_id),

    FOREIGN KEY (location_id)
        REFERENCES Location(location_id)
);
SHOW TABLES;
DESC Departments;
DESC Location;
DESC Employees;

#Question 2: Table Alteration (ALTER)

ALTER TABLE Employees
ADD email VARCHAR(100);

ALTER TABLE Employees
MODIFY designation VARCHAR(150);

ALTER TABLE Employees
DROP COLUMN age;

ALTER TABLE Employees
RENAME COLUMN hire_date TO date_of_joining;

desc employees;

#Question 3: Table Renaming (RENAME)

RENAME TABLE Departments TO Departments_Info;
RENAME TABLE Location TO Locations;
SHOW TABLES;

#Question 4: Table Truncation (TRUNCATE)
TRUNCATE TABLE Employees;
SELECT * FROM Employees;

#Question 5: Database and Table Dropping (DROP)

DROP TABLE Employees;
DROP DATABASE employee;
SHOW DATABASES;

#Part B – Constraints

#Question 1: Database Recreation

DROP DATABASE IF EXISTS employee;
CREATE DATABASE employee;
USE employee;

#Question 2: Departments Table Constraints

CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL UNIQUE
);

#Question 3: Location Table Constraints

CREATE TABLE Location (
    location_id INT PRIMARY KEY AUTO_INCREMENT,
    location VARCHAR(30) NOT NULL UNIQUE
);

#testing
INSERT INTO Location (location)
VALUES ('Kochi'), ('Bangalore'), ('Chennai');
select * from location order by location_id asc;


#Question 4: Employees Table Constraints
INSERT INTO Departments
VALUES
(1, 'IT'),
(2, 'HR'),
(3, 'Finance');

CREATE TABLE Employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,

    employee_name VARCHAR(50) NOT NULL,

    gender ENUM('M', 'F'),

    age INT CHECK (age >= 18),

    hire_date DATE DEFAULT (CURRENT_DATE),

    designation VARCHAR(100),

    department_id INT,

    location_id INT,

    salary DECIMAL(10,2),

    FOREIGN KEY (department_id)
        REFERENCES Departments(department_id),

    FOREIGN KEY (location_id)
        REFERENCES Location(location_id)
);

#testing
INSERT INTO Employees
(employee_name, gender, age, designation, department_id, location_id, salary)
VALUES
('Arun', 'M', 25, 'Software Developer', 1, 1, 35000),
('Anjali', 'F', 28, 'HR Manager', 2, 2, 45000),
('Rahul', 'M', 30, 'Accountant', 3, 3, 40000);

SELECT * FROM Employees;