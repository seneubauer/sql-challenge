-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees as e
inner join salaries as s on e.emp_no = s.emp_no
order by e.emp_no asc;

-- 2. List first name, last name, and hire date for employees who were hired in 1986.
select e.last_name, e.first_name, e.sex, e.hire_date
from employees as e
where extract(year from e.hire_date) = 1986
order by e.hire_date asc;

-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
select d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
from employees as e
inner join dept_manager as dm on e.emp_no = dm.emp_no
inner join departments as d on dm.dept_no = d.dept_no
order by e.emp_no asc;

-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e
inner join dept_emp as de on e.emp_no = de.emp_no
inner join departments as d on de.dept_no = d.dept_no
order by e.emp_no asc;