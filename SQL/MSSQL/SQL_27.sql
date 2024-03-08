Create Table Employee_1(
EmployeeID Varchar(20),
EmployeeName Varchar(20),
ManagerID varchar(20))

Insert Into Employee_1 Values(100,'Mark',103)
Insert Into Employee_1 Values(101,'John',104)
Insert Into Employee_1 Values(102,'Maria',103)
Insert Into Employee_1 Values(103,'Tom',NULL)
Insert Into Employee_1 Values(104, 'David',103)


SELECT * FROM Employee_1;
----

SELECT E1.EmployeeName AS EMPLOYEE, E2.EmployeeName AS MANAGER 
FROM Employee_1 E1, Employee_1 E2 
WHERE E1.ManagerID = E2.EmployeeID;


---

SELECT E1.EmployeeName AS EMPLOYEE, ISNULL(E2.EmployeeName,'BOSS') AS MANAGER 
FROM Employee_1 E1 LEFT OUTER JOIN Employee_1 E2 
ON E1.ManagerID = E2.EmployeeID;









