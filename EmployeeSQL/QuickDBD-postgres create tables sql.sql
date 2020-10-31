-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/QViBmT
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE Departments (
    Dept_No Varchar(5)   NOT NULL,
    Dept_Name Varchar(25)   NOT NULL,
    CONSTRAINT pk_Departments PRIMARY KEY (
        Dept_No
     )
);

CREATE TABLE Employees (
    Emp_No Int   NOT NULL,
    Emp_Title_Id Varchar(5)   NOT NULL,
    Birth_Data Date   NOT NULL,
    First_Name Varchar(25)   NOT NULL,
    Last_Name Varchar(25)   NOT NULL,
    Sex Varchar(1)   NOT NULL,
    Hire_Date Date   NOT NULL,
    Salarie Float   NOT NULL,
    CONSTRAINT pk_Employees PRIMARY KEY (
        Emp_No
     )
);

CREATE TABLE Titles (
    Title_Id Varchar(5)   NOT NULL,
    Title Varchar(25)   NOT NULL,
    CONSTRAINT pk_Titles PRIMARY KEY (
        Title_Id
     )
);

CREATE TABLE Dept_Emp (
    Emp_No Int   NOT NULL,
    Dept_No Varchar(5)   NOT NULL,
    Is_Manager Varchar(1)   NOT NULL,
    CONSTRAINT pk_Dept_Emp PRIMARY KEY (
        Emp_No,Dept_No
     )
);

CREATE TABLE Dept_Manager (
    Dept_No Varchar(5)   NOT NULL,
    Emp_No Int   NOT NULL,
    CONSTRAINT pk_Dept_Manager PRIMARY KEY (
        Dept_No,Emp_No
     )
);

CREATE TABLE Salaries (
    Emp_No Int   NOT NULL,
    Salarie Float   NOT NULL,
    CONSTRAINT pk_Salaries PRIMARY KEY (
        Emp_No
     )
);

ALTER TABLE Employees ADD CONSTRAINT fk_Employees_Emp_Title_Id FOREIGN KEY(Emp_Title_Id)
REFERENCES Titles (Title_Id);

ALTER TABLE Dept_Emp ADD CONSTRAINT fk_Dept_Emp_Emp_No FOREIGN KEY(Emp_No)
REFERENCES Employees (Emp_No);

ALTER TABLE Dept_Emp ADD CONSTRAINT fk_Dept_Emp_Dept_No FOREIGN KEY(Dept_No)
REFERENCES Departments (Dept_No);

