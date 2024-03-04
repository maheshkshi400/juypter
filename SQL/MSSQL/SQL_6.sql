CREATE Table Employee
(
EmpID INT,
EmpName Varchar(30),
Salary Float,
DeptID INT
)

INSERT INTO Employee VALUES(1001,'Mark',60000,2)
INSERT INTO Employee VALUES(1002,'Antony',40000,2)
INSERT INTO Employee VALUES(1003,'Andrew',15000,1)
INSERT INTO Employee VALUES(1004,'Peter',35000,1)
INSERT INTO Employee VALUES(1005,'John',55000,1)
INSERT INTO Employee VALUES(1006,'Albert',25000,3)
INSERT INTO Employee VALUES(1007,'Donald',35000,3)

--TO FIND ALL EMPLOEES WHOSE SALARY IS MORE THAN THE AVG. SALARY IN THEIR CORESSPONDING DEPT.



SELECT A.EmpID,A.EmpName,A.Salary,B.AvgSalary FROM
(
SELECT EmpID,EmpName,Salary,DeptID FROM Employee
) A

INNER JOIN

(SELECT DeptID,AVG(Salary) AS AvgSalary FROM Employee
GROUP BY DeptID) B

ON A.DeptID=B.DeptID WHERE A.Salary > B.AvgSalary


--BY USING CTE

WITH CTE_Employee AS (
    SELECT EmpID, EmpName, Salary, DeptID 
    FROM Employee
),
CTE_AvgSal AS (
    SELECT DeptID, AVG(Salary) AS AvgSalary 
    FROM Employee
    GROUP BY DeptID
)

SELECT A.EmpID, A.EmpName, A.Salary 
FROM CTE_Employee A 
INNER JOIN CTE_AvgSal B ON A.DeptID = B.DeptID 
WHERE A.Salary > B.AvgSalary;


--USING SUBQUERY

SELECT E1.EmpID, E1.EmpName, E1.Salary 
FROM Employee AS E1 
WHERE Salary > (
    SELECT AVG(Salary) 
    FROM Employee AS E2 
    WHERE E1.DeptID = E2.DeptID
);






