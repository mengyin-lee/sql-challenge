-- Consolidate Employees and Salaries by adding salarie column to employees table 
-- It is a one-to-one relationship between Employees and Salaries

WITH sal AS (
	SELECT emp_no, salarie
	FROM salaries
)
UPDATE employees
SET salarie = sal.salarie
FROM sal
WHERE employees.emp_no = sal.emp_no;

-- Validate if salarie is populated correctly
-- select emp.emp_no, emp.salarie, sal.salarie
-- from employees emp, salaries sal
-- where emp.emp_no= sal.emp_no
-- and emp.salarie <> sal.salarie


-- Consolidate Dept_Emp and Dept_Manager by adding is_manager indicator column to Dept_Emp table.  
-- Manager is also an employee
-- Mark the employee is_manager = 'Y' if the employee is dept manager

WITH mgr AS (
	SELECT dept_no, emp_no
	FROM dept_manager
)
UPDATE dept_emp
SET is_manager = 'Y'
FROM mgr
WHERE dept_emp.emp_no = mgr.emp_no
AND dept_emp.dept_no = mgr.dept_no;

-- Validate if Is_Manager indicator set correctly
-- select mgr.dept_no, mgr.emp_no, emp.dept_no, emp.emp_no
-- from dept_manager mgr, (select emp_no, dept_no from dept_emp where is_manager = 'Y') emp
-- where mgr.dept_no = emp.dept_no
-- and mgr.emp_no = emp.emp_no;

