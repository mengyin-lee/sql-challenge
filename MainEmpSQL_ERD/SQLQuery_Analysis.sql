-- 1. List employee number, last name, first name, sex, and salary.
-- SELECT emp_no, last_name, first_name, sex, salary
-- FROM employees;
-- Or
SELECT emp.emp_no, last_name, first_name, sex, sal.salarie
FROM employees emp, salaries sal
WHERE emp.emp_no = sal.emp_no;

-- 2. List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE date_part('year', hire_date)= '1986';

-- 3.List the manager: department number, department name, the manager's employee number, last name, first name.
SELECT 
mgr.dept_no as manager_dept_no, dept.dept_name as manager_dept_name,
mgr.emp_no as manager_emp_no, last_name as manager_last_name, first_name as manager_first_name
FROM dept_manager mgr, departments dept, employees emp
WHERE mgr.dept_no = dept.dept_no
AND mgr.emp_no = emp.emp_no;

-- 4.List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT distinct
demp.dept_no as emp_dept_no, dept.dept_name as emp_dept_name,
demp.emp_no as emp_no, last_name as emp_last_name, first_name as emp_first_name
FROM dept_emp demp, departments dept, employees emp
WHERE demp.dept_no = dept.dept_no
AND demp.emp_no = emp.emp_no;

-- 5.List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B"
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules'
AND last_name like 'B%';

-- 6.List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT emp.emp_no as employee_number, last_name, first_name, dept.dept_name as department_name
FROM employees emp, dept_emp demp, departments dept
WHERE emp.emp_no = demp.emp_no
AND dept.dept_no = demp.dept_no
AND dept.dept_name = 'Sales';

-- 7.List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT emp.emp_no as employee_number, last_name, first_name, dept.dept_name as department_name
FROM employees emp, dept_emp demp, departments dept
WHERE emp.emp_no = demp.emp_no
AND dept.dept_no = demp.dept_no
AND dept.dept_name IN ('Sales', 'Development');

-- 8.In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, count(*) as frequency_count
FROM employees
GROUP BY last_name
ORDER BY count(*) desc
