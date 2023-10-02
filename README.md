# SQL Challenge 
## Background
It’s been two weeks since I got hired as a new data engineer at Pewlett Hackard. My first major task was to do a research project about people employed by the company during the 1980s and 1990s. All that remains of the employee database from that period were six CSV files.

I have been assigned for this project to design tables holding data from the CSV files, import the CSV files into a SQL database, and then answer questions about the data. I will be solely in charge of performing data modeling, data engineering, and data analysis, respectively.

## Key Instructions
This project will be divided into three parts: data modeling, data engineering, and data analysis. I was instructed by boss heads to do the following:
#### Data Modeling
Inspect the CSV files, and then sketch an Entity Relationship Diagram of the tables. To create the sketch, feel free to use a tool like QuickDBD (https://www.quickdatabasediagrams.com/)
#### Data Engineering
1. Use the provided information to create a table schema for each of the six CSV files. Be sure to do the following:
     * Remember to specify the data types, primary keys, foreign keys, and other constraints.
     * For the primary keys, verify that the column is unique. Otherwise, create a composite key, which takes two primary keys to uniquely identify a row.
     * Be sure to create the tables in the correct order to handle the foreign keys.
2. Import each CSV file into its corresponding SQL table.
> **Hint:** To avoid errors, be sure to import the data in the same order that the tables were created. Also remember to account for the headers when importing.
#### Data Analysis
1. List the employee number, last name, first name, sex, and salary of each employee.
2. List the first name, last name, and hire date for the employees who were hired in 1986.
3. List the manager of each department along with their department number, department name, employee number, last name, and first name.
4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
6. List each employee in the Sales department, including their employee number, last name, and first name.
7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
## Project Submission Criterias
  * Create an image file of your ERD.
  * Create a `.sql` file of your table schemata.
  * Create a `.sql` file of your queries.
  * Ensure that your repository has regular commits and a thorough `README.md` file.

All coding materials and references are already included in the repository. Program analysis ran expediently using pgAdmin 4 with zero bugs or issues. 
