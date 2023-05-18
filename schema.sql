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

Select employees_number, employees_last_name, employees_sex, salaries
From employees
Group by employees_number, employees_last_name, employees_sex, salary;
       


2. List the first name, last name and hire date for the employee who were hired in 1986.

Select employees_first_name, employees_last_name, employees_hire_date
From employees
Where (created as Date) = '1986',
Group by employees_first_name, employees_last_name, employees_hire_date;
 
 
3. List the manager of each department along with their department number, department name, employee number, last name, and first name.

Select department_number, department_name, employees_number, employee_last_name, employee_first_name
From department_manager
Group by department_number, department_name, employee_number, employee_last_name, employee_first_name;

	
4. List the department number for each employee along with that employee's employee number, last name, first name, and department name.

Select department_number, employee_number, employee_last_name, employee_first_name, department_name
From Employees
Group by department_number, employee_number, employee_last_name, employee_first_name, department_name;


5. List first name, last name, and sex of each employment whose first name is Hercules and whose last name begins with the letter B

Select employees_first_name 'Hercules', employees_last_name 'B', employees_sex
from Employees
Group by employees_first_name (Hercules), employees_last_name ('B'), employe_es_sex;


6. List each employee in the Sales department, including their employee number, last name, and first name

SELECT employees_number, employees_last_name, employees_first_name
FROM Employee;
WHERE Department_name(Sales_deaprtment);


7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name

Select employee_number, employee_last_name, employee_first_name, department_name
From employees
Group by employee_number, employee_last_name, employee_first_name, department_name;



8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name) 

Select employees_last_name, Count(employees_last_name) as TotalRepetitions
From Employees
Group BY employees_last_name
Order by TotalRepetitions DESC;


