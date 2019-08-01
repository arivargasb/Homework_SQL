
-- CREATE TABLE "departments" (
--     "dept_no" varchar   NOT NULL,
--     "dept_name" varchar   NOT NULL,
--     CONSTRAINT "pk_departments" PRIMARY KEY (
--         "dept_no"
--      )
-- );

-- CREATE TABLE "employees" (
--     "emp_no" int   NOT NULL,
--     "birth_date" date   NOT NULL,
--     "first_name" varchar   NOT NULL,
--     "last_name" varchar   NOT NULL,
--     "gender" varchar   NOT NULL,
--     "hire_date" date   NOT NULL,
--     CONSTRAINT "pk_employees" PRIMARY KEY (
--         "emp_no"
--      )
-- );

-- CREATE TABLE "dept_manager" (
--     "dept_no" varchar   NOT NULL,
--     "emp_no" integer   NOT NULL,
--     "from_date" date   NOT NULL,
--     "to_date" date   NOT NULL
-- );

-- CREATE TABLE "salaries" (
--     "emp_no" integer   NOT NULL,
--     "salary" integer   NOT NULL,
--     "from_date" date   NOT NULL,
--     "to_date" date   NOT NULL
-- );

-- CREATE TABLE "titles" (
--     "emp_no" integer   NOT NULL,
--     "title" varchar   NOT NULL,
--     "from_date" date   NOT NULL,
--     "to_date" date   NOT NULL
-- );

-- CREATE TABLE "dept_emp" (
--     "emp_no" integer   NOT NULL,
--     "dept_no" varchar   NOT NULL,
--     "from_date" date   NOT NULL,
--     "to_date" date   NOT NULL
-- );

-- ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_dept_no" FOREIGN KEY("dept_no")
-- REFERENCES "departments" ("dept_no");

-- ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_emp_no" FOREIGN KEY("emp_no")
-- REFERENCES "employees" ("emp_no");

-- ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_emp_no" FOREIGN KEY("emp_no")
-- REFERENCES "employees" ("emp_no");

-- ALTER TABLE "titles" ADD CONSTRAINT "fk_titles_emp_no" FOREIGN KEY("emp_no")
-- REFERENCES "employees" ("emp_no");

-- ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_emp_no" FOREIGN KEY("emp_no")
-- REFERENCES "employees" ("emp_no");

-- ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_dept_no" FOREIGN KEY("dept_no")
-- REFERENCES "departments" ("dept_no");


-- List the following details of each employee: employee number, last name, first name, gender, and salary.

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

-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.


-- List the department of each employee with the following information: employee number, last name, first name, and department name.


-- List all employees whose first name is "Hercules" and last names begin with "B."


-- List all employees in the Sales department, including their employee number, last name, first name, and department name.


-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.


-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
