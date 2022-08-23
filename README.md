## Problem
We were presented with an assortment of CSV files and asked to construct an ERD based off the CSVs then create a database from the ERD. Once the database was created, we then had to perform a variety of SQL queries on the data.

## Goal (copied from)
* List the following details of each employee: employee number, last name, first name, sex, and salary.
* List first name, last name, and hire date for employees who were hired in 1986.
* List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
* List the department of each employee with the following information: employee number, last name, first name, and department name.
* List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
* List all employees in the Sales department, including their employee number, last name, first name, and department name.
* List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
* List the frequency count of employee last names (i.e., how many employees share each last name) in descending order.

## Setup
I used QuickDBD to generate the ERD and its corresponding SQL code. For the bonus questions I used 'automap_base()' to reflect the existing database schema. Once reflected, I was able to generate a SQL query using 'query.statement.compile' and plug the query into a Pandas 'read_sql' method.

## Execution Notes
Creating the ERD in QuickDBD was straightforward. I was able to look through the CSV structures and recreate them using the QuickDBD syntax. Once exported, I was able to run the generated SQL without issue. Importing the CSVs required some thought as to the order of importing but otherwise went without issue.

Performing the SQL queries was straightforward as well. I found using aliases was useful when multiple JOINs were involved.

The bonus questions required some more thought to get the proper ORM set up but once set up it was intuitive to operate. I can see how ORMs are popular. Arranging the data into a histogram and bar plot framed the data in a useful manner.

## Limitations
I believe there is some inefficiency in my solution for the bonus questions. Particularly when assembling the SQL query then plugging it into Pandas. It would have been better to simply execute the SQL query instead of exporting it to Pandas. 