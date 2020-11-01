# sql-challenge
## Meng-Yin Lee
### 11/1/2020
### ** Primary scripts and ERD are saved in folder: MainEmpSQL_ERD
### ** SQL query data result sets are saved in folder: EmployeeSQL
### ** Bonus assignment, jupyter notebook code is saved in folder: EmployeeJPYNB
###################################################################################################
### *Notes on Data Analysis and Preparation*
1. csv data analysis shows some data can be consolidated
  1.1. employees and salaries has 1-to-1 relationship.  Both data sets can be combined by employee number.
  1.2. manager is also an employee. dept_emp and dept_manager can also be combined by adding a is_manager indicator to dept_emp table
2. data integration and update is done in the script: Integrate_table_data.sql

### *ERD diagram is created using QuickDBD*
