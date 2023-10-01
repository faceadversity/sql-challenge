-- Module 9 SQL Challenge
-- Data Engineering (Table Schema)

-- Creating departments table
DROP TABLE departments;

CREATE TABLE departments (
	dept_no VARCHAR NOT NULL PRIMARY KEY,
	dept_name VARCHAR NOT NULL
);

-- Imported departments.csv and selected for updated database results
SELECT * FROM departments;

-- Creating titles table
DROP TABLE titles;

CREATE TABLE titles (
	title_id VARCHAR(5) NOT NULL PRIMARY KEY,
	title VARCHAR NOT NULL
);

-- Imported titles.csv and selected for updated database results
SELECT * FROM titles;

-- Creating employees table
DROP TABLE employees;

CREATE TABLE employees (
	emp_no INT NOT NULL PRIMARY KEY,
	emp_title_id VARCHAR(5) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR(1),
	hire_date DATE NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

-- Imported employees.csv and selected for updated database results
SELECT * FROM employees;

-- Creating dept_emp table
DROP TABLE dept_emp;

CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(4) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

-- Imported dept_emp.csv and selected for updated database results
SELECT * FROM dept_emp;

-- Creating dept_manager table
DROP TABLE dept_manager;

CREATE TABLE dept_manager (
	dept_no VARCHAR(4) NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- Imported dept_manager.csv and selected for updated database results
SELECT * FROM dept_manager;

-- Creating salaries table
DROP TABLE salaries;

CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- Imported salaries.csv and selected for updated database results
SELECT * FROM salaries;
