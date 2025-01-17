-- 1.) List the following details of each employee: employee number, last name, first name, sex, and salary.

SELECT 
    employees.emp_no AS "Employee Number",
    employees.last_name AS "Last Name",
    employees.first_name AS "First Name",
    employees.sex AS "Sex",
    salaries.salary AS "Salary"
FROM employees 
INNER JOIN salaries
ON employees.emp_no=salaries.emp_no;

-- 2.) List first name, last name, and hire date for employees who were hired in 1986.

SELECT 
    employees.first_name AS "First Name",
    employees.last_name AS "Last Name", 
    employees.hire_date AS "Hire Date"
FROM employees 
WHERE hire_date >= '1986-01-01' AND hire_date <= '1986-12-31';

-- 3.) List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

SELECT 
    dept_manager.dept_no AS "Department Number",
    departments.dept_name AS "Department Name",
    dept_manager.emp_no AS "Employee Number",
    employees.last_name AS "Last Name",
    employees.first_name AS "First Name"

FROM dept_manager 
INNER JOIN departments ON dept_manager.dept_no=departments.dept_no
INNER JOIN employees ON dept_manager.emp_no=employees.emp_no;

-- 4.) List the department of each employee with the following information: employee number, last name, first name, and department name.

SELECT
    dept_emp.emp_no AS "Employee Number",
    employees.last_name AS "Last Name",
    employees.first_name AS "First Name",
    departments.dept_name AS "Department"

FROM employees
INNER JOIN dept_emp ON employees.emp_no=dept_emp.emp_no
INNER JOIN departments ON departments.dept_no=dept_emp.dept_no;

-- 5.) List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

SELECT
    first_name AS "First Name",
    last_name AS "Last Name",
    sex AS "Sex"
FROM employees WHERE first_name = 'Hercules' 
AND last_name LIKE 'B%';

--6.) List all employees in the Sales department, including their employee number, last name, first name, and department name.

SELECT
    employees.emp_no AS "Employee Number",
    employees.last_name AS "Last Name",
    employees.first_name AS "First Name",
    departments.dept_name AS "Department Name"
FROM employees 
INNER JOIN dept_emp ON dept_emp.emp_no=employees.emp_no
INNER JOIN departments ON dept_emp.dept_no=departments.dept_no
WHERE departments.dept_name = 'Sales';

--7.) List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT
    employees.emp_no AS "Employee Number",
    employees.last_name AS "Last Name",
    employees.first_name AS "First Name",
    departments.dept_name AS "Department Name"
FROM employees 
INNER JOIN dept_emp ON dept_emp.emp_no=employees.emp_no
INNER JOIN departments ON dept_emp.dept_no=departments.dept_no
WHERE departments.dept_name = 'Sales'
OR departments.dept_name = 'Development';

--8.) In descending order, list the frequency count of employee last names, i.e., how many employees share each last name

SELECT 
last_name, 
COUNT(last_name) AS "Frequency"
FROM employees
GROUP BY last_name
ORDER BY "Frequency" DESC;  