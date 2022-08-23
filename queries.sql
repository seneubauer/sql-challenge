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

-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select e.first_name, e.last_name, e.sex
from employees as e
where e.first_name = 'Hercules'
and e.last_name like 'B%';

-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e
inner join dept_emp as de on e.emp_no = de.emp_no
inner join departments as d on de.dept_no = d.dept_no
where d.dept_name = 'Sales'
order by e.emp_no asc;

-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e
inner join dept_emp as de on e.emp_no = de.emp_no
inner join departments as d on de.dept_no = d.dept_no
where d.dept_name = 'Sales'
or d.dept_name = 'Development'
order by e.emp_no asc;

-- 8. List the frequency count of employee last names (i.e., how many employees share each last name) in descending order.
select e.last_name, count(e.emp_no)
from employees as e
group by e.last_name
order by count(e.last_name);