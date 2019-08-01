

-- List the following details of each employee: 
-- employee number, last name, first name, gender, and salary.

SELECT employees.emp_no, 
employees.first_name, 
employees.last_name, 
employees.gender,
salaries.salary
FROM employees 
INNER JOIN salaries 
ON employees.emp_no = salaries.emp_no;

-- List employees who were hired in 1986.

SELECT emp_no, hire_date
FROM employees
WHERE 
hire_date >= '1986-01-01'
AND hire_date <= '1986-12-31';

-- List the manager of each department with the following information: 
-- department number, department name, the manager's employee number, 
-- last name, first name, and start and end employment dates.

SELECT dm.dept_no, dm.emp_no,
d.dept_name, 
e.first_name, e.last_name,
s.from_date, s.to_date
FROM dept_manager dm
INNER JOIN departments d
ON dm.dept_no = d.dept_no
INNER JOIN employees e
ON e.emp_no = dm.emp_no
INNER JOIN salaries s
ON s.emp_no = e.emp_no;

-- List the department of each employee with the following information: 
-- employee number, last name, first name, and department name.

SELECT  d.dept_name,
e.emp_no, e.first_name, e.last_name
FROM employees e
INNER JOIN dept_emp de
ON e.emp_no = de.emp_no
INNER JOIN departments d
ON d.dept_no = de.dept_no;

-- List all employees whose first name is "Hercules" and last names begin with "B."

SELECT first_name, last_name
FROM employees
WHERE first_name='Hercules' AND
last_name LIKE 'B%';

-- List all employees in the Sales department, including their 
-- employee number, last name, first name, and department name.

SELECT  d.dept_name,
e.emp_no, e.first_name, e.last_name
FROM employees e
INNER JOIN dept_emp de
ON e.emp_no = de.emp_no
INNER JOIN departments d
ON d.dept_no = de.dept_no
WHERE d.dept_name='Sales';

-- List all employees in the Sales and Development departments, 
-- including their employee number, last name, first name, and department name.

SELECT  d.dept_name,
e.emp_no, e.first_name, e.last_name
FROM employees e
INNER JOIN dept_emp de
ON e.emp_no = de.emp_no
INNER JOIN departments d
ON d.dept_no = de.dept_no
WHERE d.dept_name='Sales' OR
d.dept_name='Development';

-- In descending order, list the frequency count of employee last names, 
-- i.e., how many employees share each last name.

SELECT last_name, COUNT(*) 
FROM employees 
GROUP BY last_name
ORDER BY last_name DESC;
