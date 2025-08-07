use students


create table std1(id int,studentname nvarchar(15),marks int,schoolid int);


INSERT INTO std1 VALUES(1,'shankar',78,2)
INSERT INTO std1 VALUES(2,'sarika',65,4)
INSERT INTO std1 VALUES(3,'mahadev',46,3)

INSERT INTO std1 VALUES(4,'karuna',64,1)
INSERT INTO std1 VALUES(5,'amrapali',72,3)
INSERT INTO std1 VALUES(6,'amita',32,4)

INSERT INTO std1 VALUES(7,'shivani',67,2)
INSERT INTO std1 VALUES(8,'kamini',85,3)
INSERT INTO std1 VALUES(9,'parul',95,2)



create table school(schoolid int,schoolname varchar(20),loc varchar(20))

insert into school values(1,'annant','pune')
insert into school values(2,'new english era','banglore')
insert into school values(3,'savitribai phule','delhi')
insert into school values(4,'lokmanya tilak','kolkatta')
insert into school values(5, 'sarojini naidu', 'banglore')

select * from std1

SELECT * FROM school

SELECT s.id, s.studentname, d.schoolname,s.marks
FROM std1 s 
INNER JOIN school d ON s.schoolid = d.schoolid 
WHERE d.loc = 'banglore' 
AND marks = (SELECT MAX(marks) FROM std1);




--TOP FIVE SALARIES FROM EACH DEPARTEMENT

USE EMPLOYEES

SELECT * FROM EMP2

SELECT *
FROM (
    SELECT EMP2 .*, DENSE_RANK() OVER (PARTITION BY DEPTNO ORDER BY SAL DESC) AS RANK
    FROM EMP2
) AS T
WHERE RANK =1;


--SELECT TOP NTH SALARIES

-- BY USING TOP

SELECT TOP 1 SAL FROM(
SELECT DISTINCT TOP 1 SAL
FROM EMP2 
ORDER BY SAL DESC
)AS RASULT
ORDER BY SAL;


--BY USING COUNT

SELECT ENAME,SAL from EMP2 e1 where 

3-1 = (SELECT COUNT(DISTINCT SAL)from EMP2 e2 where e2.SAL > e1.SAL);

--BY USING CTE
 
WITH RESULT AS (
    SELECT SAL, DENSE_RANK() OVER (PARTITION BY NULL ORDER BY SAL DESC) AS DENSE_RANK 
    FROM EMP2
)
SELECT SAL 
FROM RESULT 
WHERE DENSE_RANK = 4;


 -- FETCH FIRST AND LAST ROW FROM EMP5 TABLE

 --BY USING ROWID


SELECT MAX(ROW_NUMBER()) FROM EMP2
UNION
SELECT MIN(ROW_NUMBER()) FROM EMP2;





-- PIVOT AND UNPIVOT
USE OTHERS

Create Table COURSES1 
( 
CourseName nvarchar(50), 
CourseCategory nvarchar(50),
Price int  
) 

Insert into COURSES1  values('C', 'PROGRAMMING', 5000) 
Insert into COURSES1  values('JAVA', 'PROGRAMMING', 6000) 
Insert into COURSES1  values('PYTHON', 'PROGRAMMING', 8000) 
Insert into COURSES1  values('PLACEMENT 100', 'INTERVIEWPREPARATION', 5000) 

SELECT * FROM COURSES1  

--PVOT
SELECT CourseName, PROGRAMMING, INTERVIEWPREPARATION
FROM COURSES1
PIVOT 
( 
SUM(Price) FOR CourseCategory IN (PROGRAMMING, INTERVIEWPREPARATION ) 
) AS PivotTable 


--UNPIVOT

SELECT CourseName, CourseCategory, Price 
FROM 
(
SELECT CourseName, PROGRAMMING, INTERVIEWPREPARATION FROM COURSES1
PIVOT 
( 
SUM(Price) FOR CourseCategory IN (PROGRAMMING, INTERVIEWPREPARATION) 
) AS PivotTable
) P 
UNPIVOT 
( 
Price FOR CourseCategory IN (PROGRAMMING, INTERVIEWPREPARATION)
) 
AS UnpivotTable


--Write an Oracle SQL query to find the average salary of employees within each department.
USE EMPLOYEES;

SELECT DEPTNO,AVG(SAL) FROM EMP2 GROUP BY DEPTNO ;

--Write an Oracle SQL query to find employees who earn more than their managers.

SELECT E.EMPNO,E.SAL AS EMPLOYEE_SAL,E.JOB,M.SAL AS MANAGER_SAL FROM EMP2 E INNER JOIN 
EMP2 M ON E.EMPNO=M.MGR WHERE E.SAL>M.SAL;


--Write the SQL query to get the third maximum salary of an employee from a table named employees.

SELECT * FROM (SELECT EMP2 .*,DENSE_RANK() OVER(ORDER BY SAL DESC) AS RANK FROM EMP2) AS T WHERE RANK=1;




























