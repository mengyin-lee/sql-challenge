select count(*) from employees; -- 300024
select count(*) from salaries;--300024
select count(distinct emp_no) from dept_emp;--300024
select count(distinct dept_no)from dept_emp; -- 9
select count(distinct emp_no) from dept_manager;--24
select count(distinct dept_no)from dept_manager;-- 9