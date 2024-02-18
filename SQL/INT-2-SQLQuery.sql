--USE DATABASE
USE EMPLOYEE

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
SET @ID =7;

WITH EmployeesCTE AS
(
    SELECT EmployeeID,EmployeeName,ManagerID 
    FROM Employees
    WHERE EmployeeID= @ID

    union ALL

    SELECT Employees.EmployeeID,Employees.EmployeeName,
    Employees.ManagerID FROM Employees 
    
    JOIN 
    EmployeesCTE
    on Employees.EmployeeID=Employees.ManagerID
)

    SELECT E1.EmployeeName,E2.EmployeeName AS MANAGERNAME
    FROM  EmployeesCTE E1 
    JOIN EmployeesCTE E2
    ON E1.ManagerID=E2.EmployeeID



