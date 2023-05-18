-- Create a new table
CREATE TABLE employees(
	employees_number INT PRIMARY KEY,
	employees_title_id VARCHAR,
	employees_birth_date DATE,
	employees_first_name VARCHAR,
	employees_last_name VARCHAR,
	employees_sex VARCHAR,
	employees_hire_date DATE

);
 SELECT * 
 from employees; 
 
 
 -- Create a new table
CREATE TABLE Department(
	department_number VARCHAR PRIMARY KEY,
	department_name VARCHAR
	
);
 SELECT * 
 from department;

 -- Create a new table
CREATE TABLE Department_Employee(
	employee_number INT,
	department_number VARCHAR
	
);

 SELECT * 
 from department_employee;
 
 -- Create a new table
CREATE TABLE Department_manager(
	department_number VARCHAR,
	employee_number INT
);

 SELECT * 
 from Department_manager;

 
  -- Create a new table
CREATE TABLE Titles(
	title_id VARCHAR,
	title VARCHAR
);

  SELECT * 
 from Titles;
 
 
   -- Create a new table
CREATE TABLE Salaries(
	employee_number INT,
	salary INT
);

  SELECT * 
 from Salaries;
 
 --CREATE a new table
 CREATE TABLE employee(
 	employee_number INT,
	employees_first_name VARCHAR,
	employees_last_name VARCHAR,
	employees_sex VARCHAR,
	 salary INT
);

SELECT *
from employee;

1. List the employee number, last name, sex, and salary of each employee.
Select employees_number, employees_last_name, employees_sex, salary
From employees, salaries
Group by employees_number, employees_last_name, employees_sex, salary;
       


2. List the first name, last name and hire date for the employee who were hired in 1986.
 
 
3. List the manager of each department along with their department number, department name, employee number, last name, and first name.

--Insert data into the table
	INSERT INTO Department(department_number, department_name, department_manager, employee_number, employee_last_name,
	employee_first_name)
	
4. List the department number for each employee along with that employee's employee number, last name, first name, and department name.


 
 
 