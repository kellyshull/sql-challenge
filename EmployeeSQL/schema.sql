-- Create schemas
-- link to schema model https://app.genmymodel.com/api/projects/_fbtMIOM1EeqgY5yD8SByCQ/diagrams/_fbtMIuM1EeqgY5yD8SByCQ/svg


-- Create tables
CREATE TABLE IF NOT EXISTS departments
(
    dept_no VARCHAR(30) NOT NULL,
    dept_name VARCHAR(255) NOT NULL,
    PRIMARY KEY(dept_no)
);

CREATE TABLE IF NOT EXISTS employees
(
    emp_no INTEGER NOT NULL UNIQUE,
    emp_title_id VARCHAR(30) NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    sex VARCHAR(30) NOT NULL,
    hire_date DATE NOT NULL,
    PRIMARY KEY(emp_no)
);

CREATE TABLE IF NOT EXISTS dept_emp
(
    emp_no INTEGER NOT NULL,
    dept_no VARCHAR(30) NOT NULL    
);

CREATE TABLE IF NOT EXISTS dept_manager
(
    dept_no VARCHAR(30) NOT NULL,
    emp_no INTEGER NOT NULL    
);

CREATE TABLE IF NOT EXISTS salaries
(
    emp_no INTEGER NOT NULL,
    salary INTEGER NOT NULL    
);

CREATE TABLE IF NOT EXISTS titles
(
    title_id VARCHAR(30) NOT NULL,
    title VARCHAR(30) NOT NULL,
    PRIMARY KEY(title_id)
);


-- Create FKs
ALTER TABLE dept_emp
    ADD    FOREIGN KEY (emp_no)
    REFERENCES employees(emp_no)
    MATCH SIMPLE
;
    
ALTER TABLE dept_emp
    ADD    FOREIGN KEY (dept_no)
    REFERENCES departments(dept_no)
    MATCH SIMPLE
;
    
ALTER TABLE dept_manager
    ADD    FOREIGN KEY (dept_no)
    REFERENCES departments(dept_no)
    MATCH SIMPLE
;
    
ALTER TABLE dept_manager
    ADD    FOREIGN KEY (emp_no)
    REFERENCES employees(emp_no)
    MATCH SIMPLE
;
    
ALTER TABLE salaries
    ADD    FOREIGN KEY (emp_no)
    REFERENCES employees(emp_no)
    MATCH SIMPLE
;
    
ALTER TABLE employees
    ADD    FOREIGN KEY (emp_title_id)
    REFERENCES titles(title_id)
    MATCH SIMPLE
;
    

-- Create Indexes


