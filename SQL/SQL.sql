-- 1.HIGHEST SALARY


SELECT * FROM dbo.EMP3

SELECT MAX(emp_salary)FROM dbo.EMP3

--2nd highest salary

SELECT MAX(emp_salary) from dbo.EMP3 WHERE emp_salary < (SELECT MAX(emp_salary) FROM EMP3)

--Nth HIGHEST SALARY

SELECT TOP 1 (emp_salary) FROM 
(SELECT DISTINCT TOP 3 emp_salary FROM EMP3
ORDER BY emp_salary DESC) RESULT  ORDER BY emp_salary;

--USING CTE

WITH HIGHSAL_CTE AS
(SELECT emp_salary,ROW_NUMBER() OVER(ORDER BY emp_salary DESC) as ROW_NUMBER FROM dbo.EMP3)

SELECT  TOP 1 emp_salary FROM HIGHSAL_CTE WHERE HIGHSAL_CTE.ROW_NUMBER = 1


--2.ORGANISATION HIEARCHY 

SELECT * FROM Employees;

DECLARE @ID INT;
SET @ID = 10;

WITH EmployeesCTE AS
(
    SELECT EmployeeID,EmployeeName,ManagerID 
    FROM Employees
    WHERE EmployeeID= @ID

    UNION ALL

    SELECT Employees.EmployeeID,Employees.EmployeeName,
    Employees.ManagerID FROM Employees 
    
    JOIN 

    EmployeesCTE
    on Employees.EmployeeID=EmployeesCTE.ManagerID
)

    SELECT E1.EmployeeName,ISNULL(E2.EmployeeName,'NO BOSS') AS MANAGERNAME
    FROM  EmployeesCTE E1 
    LEFT JOIN EmployeesCTE E2
    ON E1.ManagerID=E2.EmployeeID


--3.Delete duplicate rows in sql

Create table Employees_dup
(
 ID int,
 FirstName nvarchar(50),
 LastName nvarchar(50),
 Gender nvarchar(50),
 Salary int
)
GO

Insert into Employees_dup values (1, 'Mark', 'Hastings', 'Male', 60000)
Insert into Employees_dup values (1, 'Mark', 'Hastings', 'Male', 60000)
Insert into Employees_dup values (1, 'Mark', 'Hastings', 'Male', 60000)
Insert into Employees_dup values (2, 'Mary', 'Lambeth', 'Female', 30000)
Insert into Employees_dup values (2, 'Mary', 'Lambeth', 'Female', 30000)
Insert into Employees_dup values (3, 'Ben', 'Hoskins', 'Male', 70000)
Insert into Employees_dup values (3, 'Ben', 'Hoskins', 'Male', 70000)
Insert into Employees_dup values (3, 'Ben', 'Hoskins', 'Male', 70000)

SELECT * from Employees_dup

WITH EMPCTE AS
(SELECT *,ROW_NUMBER() OVER(PARTITION BY ID ORDER BY ID) AS ROW_NUMBER FROM Employees_dup)

DELETE FROM EMPCTE WHERE ROW_NUMBER > 1

DROP TABLE Employees_dup



--4.to find employees hired in last n months

SELECT * FROM dbo.EMP4


SELECT *,DATEDIFF(YY,HIRE_DATE,GETDATE()) AS DIFF FROM dbo.EMP4 
WHERE DATEDIFF(YY,HIRE_DATE,GETDATE()) BETWEEN 35 AND 50
ORDER BY 
HIRE_DATE DESC

--5.Transform rows into columns in sql server

 USE  SALES

Create Table Countries
(
 Country nvarchar(50),
 City nvarchar(50)
)
GO

SELECT * FROM Countries;


Insert into Countries values ('USA','New York')
Insert into Countries values ('USA','Houston')
Insert into Countries values ('USA','Dallas')

Insert into Countries values ('India','Hyderabad')
Insert into Countries values ('India','Bangalore')
Insert into Countries values ('India','New Delhi')
Insert into Countries values ('India','chennai')

Insert into Countries values ('UK','London')
Insert into Countries values ('UK','Birmingham')
Insert into Countries values ('UK','Manchester')


select Country,city1,city2,city3,city4
FROM
(select Country,city,
'city' + CAST(ROW_NUMBER() OVER (PARTITION BY Country ORDER BY Country)AS VARCHAR(10))COLUMNSEQUENCE 
FROM Countries)
 temp

PIVOT
(
MAX(City) for COLUMNSEQUENCE IN (City1,City2,City3,city4)
)
 PIV

--6.Write a SQL query to retrieve rows that contain only numerical data.

--SQL Script to create the TestTable


Create Table TestTable
(
 ID int identity primary key,
 Value nvarchar(50)
)

Insert into TestTable values ('123')
Insert into TestTable values ('ABC')
Insert into TestTable values ('DEF')
Insert into TestTable values ('901')
Insert into TestTable values ('JKL')

SELECT Value FROM TestTable WHERE ISNUMERIC(Value) = 1


--7. SQL Query to find department with highest number of employees

CREATE TABLE EMPLOYEES1 (
    EMPID INT PRIMARY KEY,
    EMPNAME NVARCHAR(50),
    DEPTID INT,
    FOREIGN KEY (DEPTID) REFERENCES DEPARTMENT(DEPTID)
);


CREATE TABLE DEPARTMENT (
    DEPTID INT PRIMARY KEY,
    DEPTNAME NVARCHAR(50)
);

INSERT INTO DEPARTMENT VALUES(1,'IT')
INSERT INTO DEPARTMENT VALUES(2,'HR')
INSERT INTO DEPARTMENT VALUES(3,'PAYROLL')


INSERT INTO EMPLOYEES1 VALUES(1,'MARK',1)
INSERT INTO EMPLOYEES1 VALUES(2,'JOHN',1)
INSERT INTO EMPLOYEES1 VALUES(3,'MIKE',1)
INSERT INTO EMPLOYEES1 VALUES(4,'MARY',2)
INSERT INTO EMPLOYEES1 VALUES(5,'STACY',3)


SELECT TOP 1 DEPTNAME
FROM DBO.EMPLOYEES1 E JOIN DEPARTMENT D
ON E.DEPTID=D.DEPTID
GROUP BY DEPTNAME
ORDER BY COUNT(*) DESC


--8.Join 3 tables in sql server


CREATE TABLE EMPLOYEES2 (
    EMPID INT PRIMARY KEY,
    EMPNAME NVARCHAR(50),
    DEPTID INT,
    GENDERID INT,
    FOREIGN KEY (DEPTID) REFERENCES DEPARTMENT(DEPTID)  
);
DROP TABLE EMPLOYEES2

INSERT INTO EMPLOYEES2 VALUES(1,'MARK',1,1)
INSERT INTO EMPLOYEES2 VALUES(2,'JOHN',1,1)
INSERT INTO EMPLOYEES2 VALUES(3,'MIKE',1,1)
INSERT INTO EMPLOYEES2 VALUES(4,'MARY',2,2)
INSERT INTO EMPLOYEES2 VALUES(5,'STACY',3,2)
INSERT INTO EMPLOYEES2 VALUES(6,'VALARIE',3,2)

SELECT * FROM DEPARTMENT


CREATE TABLE GENDER
(GENDERID INT,
GENDER VARCHAR(20)
)
DROP TABLE GENDER

 INSERT INTO GENDER VALUES(1,'MALE')
  INSERT INTO GENDER VALUES(2,'FEMALE')



SELECT 
    E.EMPNAME,
    D.DEPTNAME,
    G.GENDER
FROM 
    EMPLOYEES2 E
JOIN 
    DEPARTMENT D ON E.DEPTID = D.DEPTID
JOIN
    GENDER G ON E.GENDERID = G.GENDERID




SELECT 
    D.DEPTNAME,
    G.GENDER,
    COUNT(*) AS TOTALEMP
FROM 
    EMPLOYEES2 E
JOIN 
    DEPARTMENT D ON E.DEPTID = D.DEPTID
JOIN
    GENDER G ON E.GENDERID = G.GENDERID

GROUP BY DEPTNAME,GENDER
ORDER BY DEPTNAME,GENDER


--9.Sql query to select all names that start with a given letter without like operator

SELECT * FROM dbo.EMP5


SELECT * FROM dbo.EMP5 WHERE CHARINDEX('M',ENAME)=1
SELECT * FROM dbo.EMP5 WHERE LEFT(ENAME,1)='M'
SELECT * FROM dbo.EMP5 WHERE SUBSTRING(ENAME,1,1)='M'


--10.SQL script to insert into many to many table

CREATE DATABASE STUDENTS

USE STUDENTS

Create table Students
(
 Id int primary key identity,
 StudentName nvarchar(50)
)
Go

Create table Courses
(
 Id int primary key identity,
 CourseName nvarchar(50)
)
Go

Create table StudentCourses
(
 StudentId int not null foreign key references Students(Id),
 CourseId int not null foreign key references Courses(Id)
)
Go

CREATE PROCEDURE STUDENTCOURSESINSERT
@StudentName NVARCHAR(50),
@CourseName NVARCHAR(50)

AS
BEGIN

DECLARE @StudentId INT
DECLARE @CourseId INT


SELECT @StudentId = Id FROM Students WHERE StudentName=@StudentName

IF (@StudentId is null)
BEGIN
INSERT INTO Students VALUES(@StudentName)
SELECT @StudentId = SCOPE_IDENTITY()
END

SELECT @CourseId = Id FROM Courses WHERE CourseName=@CourseName
IF (@CourseId is null)
BEGIN
INSERT INTO Courses VALUES(@CourseName)
SELECT @CourseId = SCOPE_IDENTITY()
END


INSERT INTO StudentCourses VALUES(@StudentId,@CourseId)

END

EXEC STUDENTCOURSESINSERT 'TOM','C#'

SELECT * FROM Students
SELECT * FROM Courses
SELECT * FROM StudentCourses

--CREATE COMPOSITE KEY ON STUDENTCOURSES TABLE TO PREVENT DUPLICAATE RECORDS IN TABLE

DELETE FROM StudentCourses WHERE StudentId=1 AND CourseId = 1

ALTER TABLE StudentCourses ADD CONSTRAINT PK_StudentCourses
PRIMARY KEY CLUSTERED (StudentId,CourseId)




