CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(20),
    sal INT,
    joining_date DATE,
    dept_id INT FOREIGN KEY_ REFERENCES Department(dept_id)
);

Department - dept_id(PK), dept_name


emp_id(PK),
dpet_id(FK)
 dept_id(PK)


 CREATE TABLE Department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(20)
);