--USE DATABASE
USE EMPLOYEES

--CREATE TABLE 

Create table Employees
(
 EmployeeID int primary key identity,
 EmployeeName nvarchar(50),
 ManagerID int foreign key references Employees(EmployeeID)
)
GO

--INSERT RECORDS IN THE CREATED TABLE Employees

Insert into Employees values ('John', NULL)
Insert into Employees values ('Mark', NULL)
Insert into Employees values ('Steve', NULL)
Insert into Employees values ('Tom', NULL)
Insert into Employees values ('Lara', NULL)
Insert into Employees values ('Simon', NULL)
Insert into Employees values ('David', NULL)
Insert into Employees values ('Ben', NULL)
Insert into Employees values ('Stacy', NULL)
Insert into Employees values ('Sam', NULL)

-- UPDATE MGRIDS IN THE TABLE

Update Employees Set ManagerID = 8 Where EmployeeName IN ('Mark', 'Steve', 'Lara')
Update Employees Set ManagerID = 2 Where EmployeeName IN ('Stacy', 'Simon')
Update Employees Set ManagerID = 3 Where EmployeeName IN ('Tom')
Update Employees Set ManagerID = 5 Where EmployeeName IN ('John', 'Sam')
Update Employees Set ManagerID = 4 Where EmployeeName IN ('David')
GO

--VERIFING THE RECORDS  IN THE TABLE

SELECT * FROM Employees;



DECLARE @ID INT;
SET @ID = 7;

WITH EmployeesCTE AS
(
    SELECT EmployeeID, EmployeeName, ManagerID 
    FROM Employees
    WHERE EmployeeID = @ID

    UNION ALL

    SELECT Employees.EmployeeID, Employees.EmployeeName,
    Employees.ManagerID 
    FROM Employees 
    JOIN EmployeesCTE
    ON EmployeesCTE.ManagerID = Employees.EmployeeID
)

SELECT E1.EmployeeName, E2.EmployeeName AS MANAGERNAME
FROM EmployeesCTE E1 
JOIN EmployeesCTE E2
ON E1.ManagerID = E2.EmployeeID;

--write an sql query to see employee name and his manager

SELECT emp.EmployeeID, emp.EmployeeName,emp.EmployeeName AS ManagerName 
FROM Employees emp
LEFT OUTER JOIN Employees mgr
ON emp.ManagerID = mgr.EmployeeID


--SECOND METHOD FIND OUT HIEARCHY

WITH CTE_EMP AS (
    SELECT EmployeeID,EmployeeName,ManagerID,0 AS Employee_level FROM dbo.Employee_Table WHERE ManagerID IS NULL 
    UNION ALL
    SELECT EMP.EmployeeID,EMP.EmployeeName,EMP.ManagerID,Employee_level+1 FROM dbo.Employee_Table AS EMP
    INNER JOIN CTE_EMP AS MGR ON EMP.ManagerID=MGR.EmployeeID
)
SELECT * FROM CTE_EMP ORDER BY Employee_level;




--write sql query for employee and his manager with employee level

WITH EmployeeHierarchy AS (
    SELECT EmployeeID, EmployeeName, ManagerID, 0 AS EmployeeLevel
    FROM Employees
    WHERE ManagerID IS NULL -- Assuming top-level managers have NULL ManagerID

    UNION ALL

    SELECT emp.EmployeeID, emp.EmployeeName, emp.ManagerID, eh.EmployeeLevel + 1 AS EmployeeLevel
    FROM Employees emp
    INNER JOIN EmployeeHierarchy eh ON emp.ManagerID = eh.EmployeeID
)

SELECT eh.EmployeeID, eh.EmployeeName, eh.EmployeeLevel, mgr.EmployeeName AS ManagerName
FROM EmployeeHierarchy eh
LEFT JOIN Employees mgr ON eh.ManagerID = mgr.EmployeeID;





