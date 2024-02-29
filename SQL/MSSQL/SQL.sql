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


--11.

CREATE TABLE EMP7(EMPID INT, EMPNAME VARCHAR(20), GENDER VARCHAR(6), BIRTHDATE DATE, SALARY MONEY, DEPARTMENT CHAR(10))



INSERT INTO EMP7 VALUES(1, 'John Doe', 'Male', '1980-01-05', 60000, 'IT');
INSERT INTO EMP7 VALUES(2, 'Jane Smith', 'Female', '1985-03-15', 55000, 'HR');
INSERT INTO EMP7 VALUES(3, 'Michael Johnson', 'Male', '1978-07-20', 65000, 'Finance');
INSERT INTO EMP7 VALUES(4, 'Emily Brown', 'Female', '1990-11-10', 50000, 'Marketing');
INSERT INTO EMP7 VALUES(5, 'William Wilson', 'Male', '1982-04-25', 70000, 'IT');
INSERT INTO EMP7 VALUES(6, 'Elizabeth Taylor', 'Female', '1987-09-30', 75000, 'HR');
INSERT INTO EMP7 VALUES(7, 'Christopher Lee', 'Male', '1975-12-12', 80000, 'Finance');
INSERT INTO EMP7 VALUES(8, 'Mary White', 'Female', '1984-06-08', 62000, 'Marketing');
INSERT INTO EMP7 VALUES(9, 'James Green', 'Male', '1989-10-18', 67000, 'IT');
INSERT INTO EMP7 VALUES(10, 'Jennifer Martinez', 'Female', '1983-02-28', 58000, 'HR');
INSERT INTO EMP7 VALUES(11, 'Robert Anderson', 'Male', '1977-05-22', 72000, 'Finance');
INSERT INTO EMP7 VALUES(12, 'Susan Clark', 'Female', '1986-08-14', 69000, 'Marketing');
INSERT INTO EMP7 VALUES(13, 'David Baker', 'Male', '1981-09-09', 63000, 'IT');
INSERT INTO EMP7 VALUES(14, 'Patricia Carter', 'Female', '1979-04-03', 71000, 'HR');
INSERT INTO EMP7 VALUES(15, 'Richard Garcia', 'Male', '1988-11-29', 68000, 'Finance');
INSERT INTO EMP7 VALUES(16, 'Linda Perez', 'Female', '1982-07-17', 59000, 'Marketing');
INSERT INTO EMP7 VALUES(17, 'Thomas Evans', 'Male', '1983-03-12', 64000, 'IT');
INSERT INTO EMP7 VALUES(18, 'Karen Hernandez', 'Female', '1976-06-26', 66000, 'HR');
INSERT INTO EMP7 VALUES(19, 'Daniel Murphy', 'Male', '1984-08-09', 70000, 'Finance');
INSERT INTO EMP7 VALUES(20, 'Linda Collins', 'Female', '1991-01-01', 56000, 'Marketing');
INSERT INTO EMP7 VALUES(21, 'Mark Johnson', 'Male', '1980-01-05', 58000, 'IT');
INSERT INTO EMP7 VALUES(22, 'Jessica Williams', 'Female', '1980-01-05', 59000, 'Marketing');

SELECT * FROM EMP7

--12. Sql function to get number from string

use OTHER

Create table TestTable
(
	IDName nvarchar(25)
)
Go
DROP TABLE dbo.TestTable
Insert into TestTable values('Nir10ma0la1')
Insert into TestTable values('1A0ru0na2')
Insert into TestTable values('S1h00ashi3')
Insert into TestTable values('N100aga4raj')
Insert into TestTable values('Sruj100a5n')
Insert into TestTable values('Sr1u0s0h6ti')
Insert into TestTable values('Ha1n0u0man7th')
Insert into TestTable values('Sh10iva08mma')
Insert into TestTable values('10Sonu09')
Insert into TestTable values('Nim10m1u0')
Go



