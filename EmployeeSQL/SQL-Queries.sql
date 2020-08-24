-- 1.) List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT 
    employees.emp_no AS "employee number",
    employees.last_name AS "last name",
    employees.first_name AS "first name",
    employees.sex AS "sex",
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


-- 5.) List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."


--6.) List all employees in the Sales department, including their employee number, last name, first name, and department name.


--7.) List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.


--8.) In descending order, list the frequency count of employee last names, i.e., how many employees share each last name