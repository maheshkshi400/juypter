Create Table Employee_2(
EmpName Varchar(30),
DeptName Varchar(25),
DeptNo Bigint,
Salary Bigint);

Insert into Employee_2 Values('Mark','HR',101,30000);
Insert into Employee_2 Values('John','Accountant',101,20000);
Insert into Employee_2 Values('Smith','Analyst',101,25000);
Insert into Employee_2 Values('Donald','HR',201,40000);
Insert into Employee_2 Values('James','Analyst',201,22000);
Insert into Employee_2 Values('Maria','Analyst',201,38000);
Insert into Employee_2 Values('David','Manager',201,33000);
Insert into Employee_2 Values('Martin','Analyst',301,22000);
Insert into Employee_2 Values('Robert','Analyst',301,56000);
Insert into Employee_2 Values('Michael','Manager',301,34000);
Insert into Employee_2 Values('Robert','Accountant',301,37000);
Insert into Employee_2 Values('Michael','Analyst',301,28000);


SELECT * FROM Employee_2;

--solution 1  by using cte

WITH CTE_EMP AS(
SELECT EmpName,DeptName,DeptNo,Salary,
DENSE_RANK() OVER (PARTITION BY DeptNo ORDER BY Salary DESC) AS RANK_TOP,
DENSE_RANK() OVER (PARTITION BY DeptNo ORDER BY Salary ASC) AS RANK_BOTTOM
FROM Employee_2
)
SELECT EmpName,DeptName,DeptNo,Salary FROM CTE_EMP
WHERE RANK_TOP = 1 OR RANK_BOTTOM =1
ORDER BY DeptNo,Salary



--solution 2 

WITH CTE_EMP AS(
SELECT EmpName,DeptName,DeptNo,Salary,
MAX(Salary) OVER (PARTITION BY DeptNo ORDER BY Salary DESC) AS MAX_Salary,
MIN(Salary) OVER (PARTITION BY DeptNo ORDER BY Salary ASC) AS MIN_Salary
FROM Employee_2
)
SELECT EmpName,DeptName,DeptNo,Salary FROM CTE_EMP
WHERE Salary IN (MAX_Salary,MIN_Salary)
ORDER BY DeptNo,Salary;