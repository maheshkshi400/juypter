use EMPLOYEES

CREATE TABLE employee_1 (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    salary INT,
    department VARCHAR(50)
);


INSERT INTO employee_1 (id, name, salary, department)
VALUES
    (1, 'Alice', 60000, 'IT'),
    (2, 'Bob', 70000, 'IT'),
    (3, 'Charlie', 80000, 'IT'),
    (4, 'David', 55000, 'HR'),
    (5, 'Eve', 65000, 'HR'),
    (6, 'Frank', 75000, 'HR'),
    (7, 'George', 85000, 'Finance'),
    (8, 'Hannah', 90000, 'Finance');


-- Add more rows as needed

select * from employee_1;

CREATE TABLE employee_manager (
    employee_name VARCHAR(50),
    employee_salary INT,
    manager_name VARCHAR(50),
    manager_salary INT
);

INSERT INTO employee_manager (employee_name, employee_salary, manager_name, manager_salary)
VALUES
    ('Bob', 80000, 'Charlie', 75000),
    ('Frank', 78000, 'Bob', 75000);

SELECT * FROM employee_manager;