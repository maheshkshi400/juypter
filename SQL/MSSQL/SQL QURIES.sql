SELECT * FROM EMPLOYEES.dbo.EMP2;
SELECT * from EMPLOYEES.dbo.DEPT
SELECT * FROM EMPLOYEES.dbo.SALGRADE


--1.Display the details of all employees

SELECT * FROM EMPLOYEES.dbo.EMP2;

--2. Display the depart information from department table

SELECT * FROM EMPLOYEES.dbo.EMP2;

--3. Display the name and job for all the employee.

SELECT ENAME,JOB FROM EMPLOYEES.dbo.EMP2;

-- 4. Display the name and salary for all the employees

SELECT ENAME,SAL FROM EMPLOYEES.dbo.EMP2;

--5. Display the employee no and total salary for all the employees

SELECT EMPNO,(SAL+ ISNULL(COMM,0) AS TOTAL_SAL FROM EMPLOYEES.dbo.EMP2;

--6. Display the employee name and annual salary for all employees.

SELECT ENAME, 12 * (SAL + ISNULL(COMM, 0)) AS ANNUAL_SAL FROM EMPLOYEES.dbo.EMP2;

--7. Display the names of all the employees who are working in depart number 10.

SELECT ENAME FROM EMPLOYEES.dbo.EMP2 WHERE DEPTNO=10;

--8. Display the names of all the employees who are working as clerks and drawing a salary more than 3000.

SELECT ENAME FROM EMPLOYEES.dbo.EMP2 WHERE JOB='CLERK' AND SAL>3000;

-- 9. Display the employee number and name who are earning comm.

SELECT EMPNO, ENAME FROM EMPLOYEES.dbo.EMP2 WHERE COMM IS NOT NULL

--10. Display the employee number and name who do not earn any comm.

SELECT EMPNO, ENAME FROM EMPLOYEES.dbo.EMP2 WHERE COMM IS NULL;

--11. Display the names of employees who are working as clerks, salesman or analyst and drawing a salary more than 3000.

SELECT ENAME FROM EMPLOYEES.dbo.EMP2 WHERE JOB IN ('CLERK','SALESMAN','ANALYST') AND SAL>3000;

--12. Display the names of the employees who are working in the company for the past 5 years.

SELECT ENAME FROM EMPLOYEES.dbo.EMP2 WHERE  HIREDATE < DATEADD(YY, -5, GETDATE())

--13. Display the list of employees who have joined the company before 30-JUN-90 or after 31-DEC-90.

SELECT ENAME FROM MK_DB.dbo.EMP5 WHERE HIREDATE <'30-JUN-90' AND HIREDATE>'1-DEC-90';

-- 14. Display current Date.

SELECT GETDATE()

--15. Display the names of employees working in depart number 10 or 20 or 40 or employees working as CLERKS, SALESMAN or ANALYST.

SELECT * FROM EMPLOYEES.dbo.EMP2 WHERE JOB IN ('CLERK', 'SALESMAN', 'ANALYST') OR DEPTNO IN (10, 20, 40)

--16. Display the names of employees whose name starts with alphabet S.

SELECT * FROM EMPLOYEES.dbo.EMP2 WHERE ENAME LIKE('S%')

--17. Display the names of employees whose name ENDSs with alphabet S.

SELECT * FROM EMPLOYEES.dbo.EMP2 WHERE ENAME LIKE('%S')

--18. Display the names of employees whose names have second alphabet A in their names.

SELECT ENAME FROM EMPLOYEES.dbo.EMP2 WHERE ENAME LIKE ('_A%');

-- 19. Select the names of the employee whose names is exactly five characters in length.

SELECT ENAME FROM EMPLOYEES.dbo.EMP2 WHERE ENAME LIKE ('_____');

SELECT ENAME FROM EMPLOYEES.dbo.EMP2 WHERE LEN(ENAME)=5;

--20. Display the names of the employee who are not working as MANAGERS.

SELECT ENAME FROM EMPLOYEES.dbo.EMP2 WHERE JOB  != 'MANAGER';

--21. Display the names of the employee who are not working as SALESMAN OR CLERK OR ANALYST.

SELECT ENAME FROM EMPLOYEES.dbo.EMP2 WHERE JOB NOT IN('SALESMAN','CLERK','ANALYST');

--22. Display the total number of employee working in the company.

SELECT COUNT (EMPNO) AS TOTAL_EMP FROM EMPLOYEES.dbo.EMP2;

--23. Display the total salary beiging paid to all employees.

SELECT SUM (SAL) AS TOTAL_SALARY FROM EMPLOYEES.dbo.EMP2;

--24. Display the maximum salary from emp table.

SELECT MAX (SAL) AS MAX_SAL FROM EMPLOYEES.dbo.EMP2;

--25. Display the minimum salary from emp table.

SELECT MIN (SAL) AS MIN_SAL FROM EMPLOYEES.dbo.EMP2;

--26. Display the average salary from emp table.

SELECT AVG (SAL) AS AVG_SAL FROM EMPLOYEES.dbo.EMP2;

--27. Display the maximum salary being paid to CLERK.

SELECT MAX (SAL) AS MAX_SAL FROM EMPLOYEES.dbo.EMP2 WHERE JOB='CLERK';

--28. Display the maximum salary being paid to department number 20.

SELECT MAX (SAL) AS MAX_SAL FROM EMPLOYEES.dbo.EMP2 WHERE deptno=20;

--29. Display the minimum salary being paid to any SALESMAN.

SELECT MIN (SAL) AS MIN_SAL FROM EMPLOYEES.dbo.EMP2 WHERE JOB='SALESMAN';

--30. Display the average salary drawn by MANAGERS.

SELECT AVG(SAL) AS AVG_SAL_MGR FROM EMPLOYEES.dbo.EMP2 WHERE JOB='MANAGER';

--31. Display the total salary drawn by ANALYST working in depart number 40.

SELECT SUM (SAL) AS TOTAL_SAL_ANALYST FROM EMPLOYEES.dbo.EMP2 WHERE JOB='ANALYST' 

--32. Display the names of the employee in order of salary i.e the name of the employee earning lowest salary should appear first.

SELECT ENAME,SAL FROM MK_DB.dbo.EMP5 ORDER BY SAL ASC;

--33. Display the names of the employee in descending order of salary.

SELECT ENAME FROM MK_DB.dbo.EMP5 ORDER BY SAL DESC;

--34. Display the names of the employee in order of employee name.

SELECT ENAME FROM MK_DB.dbo.EMP5 ORDER BY ENAME;

--35. Display empno, ename, deptno, sal sort the output first base on name and within name by deptno and within deptno by sal.

SELECT EMPNO, ENAME, DEPTNO, SAL FROM MK_DB.dbo.EMP5 ORDER BY ENAME, DEPTNO, SAL;

--36. Display the name of the employee along with their annual salary (sal*12).The name of the employee earning highest annual salary should apper first.

SELECT EMPNO, ENAME, DEPTNO, (SAL*12) AS ANNUAL_SALARY FROM MK_DB.dbo.EMP5 ORDER BY ANNUAL_SALARY DESC;

--37. Display name, salary, hra, pf, da, total salary for each employee. The output should be in the order of total salary, hra 15% of salary, da 10% of salary, pf 5% salary, total salary will be(salary+hra+da)-pf.

SELECT EMPNO, ENAME, SAL AS SALARY, ((SAL*15)/100) AS HRA, ((SAL*10)/100)

AS DA , ((SAL*5)/100) AS PF, ( ((SAL*15)/100) + ((SAL*10)/100) + SAL - ((SAL*5)/100) )

AS TOTAL_SALARY FROM MK_DB.dbo.EMP5

--38. Display depart numbers and total number of employees working in each department.

SELECT DEPTNO,COUNT(EMPNO) FROM MK_DB.dbo.EMP5 GROUP BY DEPTNO;

--39. Display the various jobs and total number of employees within each job group.

SELECT JOB, COUNT (EMPNO) FROM MK_DB.dbo.EMP5 GROUP BY JOB;

--40. Display the depart numbers and total salary for each department.

SELECT DEPTNO,SUM (SAL) FROM MK_DB.dbo.EMP5 GROUP BY DEPTNO;

--41. Display the depart numbers and max salary for each department.

SELECT DEPTNO, MAX (SAL) FROM MK_DB.dbo.EMP5 GROUP BY DEPTNO;

--42. Display the various jobs and total salary for each job

SELECT JOB, SUM (SAL) FROM MK_DB.dbo.EMP5 GROUP BY JOB;

--43. Display the depart numbers with more than three employees in each dept.

SELECT DEPTNO,COUNT(EMPNO) FROM MK_DB.dbo.EMP5 GROUP BY DEPTNO HAVING COUNT (EMPNO)>3;

--44. Display the various jobs along with total salary for each of the jobs where total salary is greater than 40000.

SELECT JOB, SUM (SAL) FROM MK_DB.dbo.EMP5 GROUP BY JOB HAVING SUM (SAL)>4000;

--45. Display the various jobs along with total number of employees in each job. 
--The output should contain only those jobs with more than three employees.

SELECT JOB, COUNT (EMPNO) FROM MK_DB.dbo.EMP5 GROUP BY JOB HAVING COUNT (EMPNO)>3;

--46. Display the name of the employee who earns highest salary.

SELECT ENAME FROM MK_DB.dbo.EMP5 WHERE SAL = (SELECT MAX (SAL) FROM EMP);

SELECT * FROM (SELECT EMP5 .*,DENSE_RANK() OVER (ORDER BY SAL DESC) AS RANK FROM MK_DB.dbo.EMP5) AS EMP5_RANK WHERE RANK=1

--47. Display the employee number and name for employee working as clerk and earning highest salary among clerks.

SELECT EMPNO, ENAME,JOB FROM MK_DB.dbo.EMP5 WHERE SAL=(SELECT MAX(SAL) FROM MK_DB.dbo.EMP5 WHERE JOB='CLERK')

--48. Display the names of salesman who earns a salary more than the highest salary of any clerk.

SELECT EMPNO, ENAME, JOB, SAL FROM MK_DB.dbo.EMP5

 WHERE JOB='SALESMAN' AND SAL> ANY(SELECT MAX (SAL) FROM EMP WHERE JOB='CLERK');

 SELECT EMPNO, ENAME, JOB, SAL 
FROM MK_DB.dbo.EMP5 
WHERE JOB = 'SALESMAN' 
AND SAL > (SELECT MAX(SAL) FROM EMP WHERE JOB = 'CLERK');

--49. Display the names of clerks who earn a salary more than the lowest salary of any salesman.

SELECT EMPNO, ENAME, JOB, SAL FROM MK_DB.dbo.EMP5 WHERE JOB='CLERK' AND SAL > (SELECT MIN (SAL) FROM MK_DB.dbo.EMP5 WHERE JOB='SALESMAN');

--50. Display the names of employees who earn a salary more than that of Jones or that of salary greater than that of scott.

SELECT ENAME FROM MK_DB.dbo.EMP5 WHERE SAL > (SELECT SAL FROM MK_DB.dbo.EMP5 WHERE ENAME= 'JONES' ) AND 

SAL > (SELECT SAL FROM MK_DB.dbo.EMP5 WHERE ENAME='SCOTT');

--51. Display the names of the employees who earn highest salary in their respective departments.

SELECT DEPTNO, ENAME, SAL FROM MK_DB.dbo.EMP5 WHERE SAL IN (SELECT MAX(SAL) FROM MK_DB.dbo.EMP5 GROUP BY DEPTNO);

--52. Display the names of the employees who earn highest salaries in their respective job groups.

SELECT JOB, ENAME, SAL FROM MK_DB.dbo.EMP5 WHERE SAL IN (SELECT MAX (SAL) FROM MK_DB.dbo.EMP5 GROUP BY JOB);

--53. Display the employee names who are working in accounting department.

SELECT E.EMPNO, E.ENAME, D.DNAME FROM MK_DB.dbo.EMP5 E, DEPT D WHERE E.DEPTNO = D.DEPTNO AND DNAME = 'ACCOUNTING';

OR

SELECT ENAME FROM MK_DB.dbo.EMP5 WHERE DEPTNO = (SELECT DEPTNO FROM MK_DB.dbo.DEPT WHERE DNAME='ACCOUNTING');

--54. Display the employee names who are working in Chicago.

SELECT E.EMPNO, E.ENAME, D.DNAME FROM MK_DB.dbo.EMP5 E, MK_DB.dbo.DEPT D WHERE E.DEPTNO = D.DEPTNO AND D.LOC='CHICAGO';

SELECT ENAME FROM MK_DB.dbo.EMP5 WHERE DEPTNO = (SELECT DEPTNO FROM MK_DB.dbo.DEPT WHERE LOC = 'CHICAGO');

--55. Display the Job groups having total salary greater than the maximum salary for managers.

SELECT JOB, SUM (SAL) FROM MK_DB.dbo.EMP5 GROUP BY JOB HAVING SUM (SAL) > (SELECT MAX (SAL) FROM MK_DB.dbo.EMP5 WHERE JOB= 'MANAGER');

--56. Display the names of employees from department number 10 with salary greater than that of any employee working in other department.

SELECT * FROM MK_DB.dbo.EMP5 WHERE DEPTNO=10 AND SAL>ANY(SELECT SAL FROM MK_DB.dbo.EMP5 WHERE DEPTNO <> 10);

SELECT * FROM MK_DB.dbo.EMP5 WHERE DEPTNO=10 AND SAL>ANY(SELECT SAL FROM MK_DB.dbo.EMP5 WHERE DEPTNO NOT IN(10));

--57. Display the names of the employees from department number 10 with salary greater than that of all employee working in other departments.

SELECT * FROM MK_DB.dbo.EMP5 WHERE DEPTNO=10 AND SAL>ALL(SELECT SAL FROM MK_DB.dbo.EMP5 WHERE DEPTNO <> 10);

SELECT * FROM MK_DB.dbo.EMP5 WHERE DEPTNO=10 AND SAL>ALL(SELECT SAL FROM MK_DB.dbo.EMP5 WHERE DEPTNO NOT IN(10));

--58. Display the names of the employees in Uppercase.

SELECT UPPER (ENAME) FROM MK_DB.dbo.EMP5;

--59. Display the names of the employees in Lowecase.

SELECT LOWER (ENAME) FROM MK_DB.dbo.EMP5;

--60. Display the names of the employees in Propercase.

SELECT INITCAP(ENAME) FROM MK_DB.dbo.EMP5;

--61. Display the length of Your name using appropriate function.

SELECT ENAME,LEN(ENAME) AS MYNAME FROM MK_DB.dbo.EMP5;

--62. Display the length of all the employee names.

SELECT ENAME, LEN(ENAME) AS LENGTH_OF_NAME FROM MK_DB.dbo.EMP5;

--63. Select name of the employee concatenate with employee number.

SELECT EMPNO +' '+ ENAME FROM MK_DB.dbo.EMP5;

--64. Display the informaction from emp table.Where job manager is found it should be displayed as boos (Use replace function).

SELECT ENAME, REPLACE (JOB,'MANAGER','BOSS') FROM MK_DB.dbo.EMP5;

--65. Display empno, ename, deptno from emp table. Instead of display department numbers display the related department name (Use decode function).

SELECT E.EMPNO, E.ENAME, D.DNAME AS DEPTNO FROM MK_DB.dbo.EMP5 E, MK_DB.dbo.DEPT D WHERE E.DEPTNO = D.DEPTNO;

--66. Display your age in days.

SELECT DATEDIFF(YY,GETDATE(),'1984-10-15') AS AGE

--67. Display your age in months.

SELECT DATEDIFF(MM,GETDATE(),'1984-10-15') AS AGE

--68. Display the current date as 15th August Friday Nineteen Ninety Seven.

SELECT GETDATE()

--69. Find the date for nearest saturday after current date.

SELECT DATEADD(WW,1,GETDATE())

--70. Display current time.

SELECT DATEPART()

SELECT CONVERT(TIME, GETDATE()) AS CurrentTime;

EMPLOYEE.dbo.
--71.Display the date three months before the current date.

SELECT DATEADD(MM,-3,GETDATE())

--72. Display the common jobs from department number 10 and 20.

SELECT * FROM EMPLOYEE.dbo.EMP5 WHERE DEPTNO=10 AND JOB IN (SELECT JOB FROM EMPLOYEE.dbo.EMP5 WHERE DEPTNO=20);

--73. Display the jobs found in department 10 and 20 Eliminate duplicate jobs.

SELECT DISTINCT JOB FROM MK_DB.dbo.EMP5 WHERE DEPTNO IN (10, 20);

--74.Display the jobs which are unique to department 10.

SELECT DISTINCT JOB FROM MK_DB.dbo.EMP5 WHERE DEPTNO = 10

AND JOB NOT IN (SELECT JOB FROM MK_DB.dbo.EMP5 WHERE DEPTNO <> 10);

--75. Display the details of those employees who are in sales department and grade is 3.

SELECT * FROM MK_DB.dbo.EMP5 E, MK_DB.dbo.DEPT D, SALGRADE WHERE SAL BETWEEN LOSAL AND HISAL AND DNAME='SALES' AND GRADE=3 AND E.DEPTNO=D.DEPTNO;

--77. Display those who are not managers and who are managers any one.

   i) display the managers names

SELECT DISTINCT (M.ENAME) AS MANAGER FROM MK_DB.dbo.EMP5 E, MK_DB.dbo.EMP5 M WHERE E.MGR = M.EMPNO;

  ii) display the who are not managers

SELECT * FROM MK_DB.dbo.EMP5 WHERE ENAME NOT IN (SELECT DISTINCT (M.ENAME) AS MANAGER FROM MK_DB.dbo.EMP5 E, MK_DB.dbo.EMP5 M WHERE E.MGR=M.EMPNO);

--78. Display that employee whose name contains not less than 4 characters.

SELECT ENAME FROM MK_DB.dbo.EMP5 WHERE LEN(ENAME)>4;

--79. Display those department whose name start with "S" while the location name ends with "C".

SELECT DNAME FROM MK_DB.dbo.DEPT WHERE DNAME LIKE ('S%') AND LOC LIKE ('C%');

--80. Display those employees whose manager name is JONES.

SELECT E.ENAME AS EMPLOYEE, M.ENAME AS MANAGER FROM MK_DB.dbo.EMP5 E, MK_DB.dbo.EMP5 M WHERE E.MGR=M.EMPNO AND M.ENAME='JONES';

--81. Display those employees whose salary is more than 3000 after giving 20% increment.

SELECT EMPNO, ENAME, SAL FROM MK_DB.dbo.EMP5 WHERE((SAL*0.2) + SAL)>=3000

--82. Display all employees with their dept names;

SELECT E.EMPNO, E.ENAME, D.DNAME FROM MK_DB.dbo.EMP5 E, MK_DB.dbo.DEPT D WHERE E.DEPTNO = D.DEPTNO;

--83. Display ename who are working in sales dept.

SELECT E.EMPNO, E.ENAME, D.DNAME FROM MK_DB.dbo.EMP5 E, MK_DB.dbo.DEPT D WHERE E.DEPTNO = D.DEPTNO AND D.DNAME = 'SALES';

OR

SELECT ENAME FROM MK_DB.dbo.EMP5 WHERE DEPTNO = (SELECT DEPTNO FROM MK_DB.dbo.DEPT WHERE DNAME='SALES');

--84. Display employee name, deptname, salary and comm for those sal in between 2000 to 5000 while location is chicago.

SELECT E.EMPNO, E.ENAME, E.SAL, E.COMM, D.DNAME FROM MK_DB.dbo.EMP5 E, MK_DB.dbo.DEPT D

WHERE E.SAL BETWEEN 2000 AND 3000 AND

E.DEPTNO=D.DEPTNO AND D.LOC = 'CHICAGO';

--85. Display those employees whose salary greater than his manager salary.

SELECT E.EMPNO,E.ENAME FROM MK_DB.dbo.EMP5 E, MK_DB.dbo.EMP5 M WHERE E.MGR=M.EMPNO AND E.SAL > M.SAL;

--86. Display those employees who are working in the same dept where his manager is work.

SELECT E.EMPNO, E.ENAME, M.ENAME AS MANAGER, E.DEPTNO FROM MK_DB.dbo.EMP5 E, MK_DB.dbo.EMP5 M WHERE E.MGR=M.EMPNO AND E.DEPTNO=M.DEPTNO;

--87. Display those employees who are not working under any manager.

SELECT ENAME FROM MK_DB.dbo.EMP5 WHERE MGR IS NULL;

--88. Display grade and employees name for the dept no 10 or 30 but grade is not 4 while joined the company before 31-dec-82.

SELECT ENAME, GRADE FROM MK_DB.dbo.EMP5, MK_DB.dbo.SALGRADE

WHERE SAL BETWEEN LOSAL AND HISAL AND DEPTNO IN (10,20)

AND GRADE<>4 AND HIREDATE<'31-DEC-1982';

--89. Update the salary of each employee by 10% increment who are not eligiblw for commission.

UPDATE MK_DB.dbo.EMP5 SET SAL=SAL+(SAL*0.1) WHERE COMM IS NULL;

--90. SELECT those employees who joined the company before 31-dec-82 while their dept location is newyork or Chicago.

SELECT E.EMPNO, E.ENAME FROM MK_DB.dbo.EMP5 E, MK_DB.dbo.DEPT D WHERE E.DEPTNO=D.DEPTNO AND

HIREDATE<'31-DEC-82' AND D.LOC IN ('NEWYORK','CHICAGO');

--91. DISPLAY EMPLOYEE NAME, JOB, DEPARTMENT, LOCATION FOR ALL WHO ARE WORKING AS MANAGER?

SELECT E.EMPNO, E.ENAME, E.JOB, E.SAL, E.DEPTNO, D.DNAME, D.LOC FROM MK_DB.dbo.EMP5 E , MK_DB.dbo.DEPT D WHERE E.DEPTNO=D.DEPTNO AND E.JOB='MANAGER';

--92. DISPLAY THOSE EMPLOYEES WHOSE MANAGER NAME IS JONES AND ALSO DISPLAY THEIR MANAGER NAME]?

SELECT E.EMPNO, E.ENAME AS EMPLOYEE, M.ENAME AS MANAGER FROM MK_DB.dbo.EMP5 E, MK_DB.dbo.EMP5 M WHERE E.MGR=M.EMPNO AND M.ENAME='JONES';

--93. Display name and salary of ford if his salary is equal to hisal of his grade

SELECT ENAME, SAL, GRADE FROM MK_DB.dbo.EMP5, MK_DB.dbo.SALGRADE WHERE ENAME='FORD' AND SAL BETWEEN LOSAL AND HISAL AND SAL=HISAL;

--94. Display employee name, job, depart name, manager name, his grade and make out an under department wise?

SELECT E.ENAME,E.JOB,D.DNAME,M.ENAME AS MANAGER_NAME,S.GRADE FROM MK_DB.dbo.EMP5 E, MK_DB.dbo.EMP5 M, MK_DB.dbo.SALGRADE S, DEPT D WHERE E.MGR = M.EMPNO 

AND D.DEPTNO = E.DEPTNO AND E.SAL BETWEEN S.LOSAL AND S.HISAL ORDER BY D.DNAME;

--95. List out all employees name, job, salary, grade and depart name for everyone in the company except 'CLERK'. Sort on salary display the highest salary?

SELECT E.ENAME, E.JOB, E.SAL, S.GRADE, D.DNAME FROM MK_DB.dbo.EMP5 E, MK_DB.dbo.SALGRADE S, MK_DB.dbo.DEPT D WHERE E.JOB<>'CLERK' AND 

D.DEPTNO=E.DEPTNO AND E.SAL BETWEEN S.LOSAL AND S.HISAL ORDER BY SAL DESC;

--96. Display the employee name, job and his manager. Display also employee who are without manager?

SELECT E.ENAME, E.JOB, M.ENAME FROM MK_DB.dbo.EMP5 E LEFT OUTER JOIN MK_DB.dbo.EMP5 M ON E.MGR= M.EMPNO;

OR

SELECT E.ENAME, E.JOB, ISNULL(M.ENAME,'NO MANAGER') AS MANAGER FROM MK_DB.dbo.EMP5 E 

LEFT OUTER JOIN  MK_DB.dbo.EMP5 M ON E.MGR = M.EMPNO;


--97 Fetch the employees who are having same salary from each department 

WITH DepartmentSalaries AS (
    SELECT 
        DepartmentID,
        Salary,
        COUNT(DISTINCT Salary) AS DistinctSalaryCount
    FROM 
        Employees
    GROUP BY 
        DepartmentID
)

SELECT 
    E.EmployeeID,
    E.EmployeeName,
    E.Salary,
    E.DepartmentID
FROM 
    Employees E
JOIN 
    DepartmentSalaries DS ON E.DepartmentID = DS.DepartmentID
WHERE 
    DS.DistinctSalaryCount > 1;

--98 
2022,5,5-4
2021,4,4-7
2020,7,7
Write the code to get the difference current year revenue- minus 
previous year revenue  

WITH RevenueComparison AS (
    SELECT 
        t1.Year AS CurrentYear, 
        t1.Revenue AS CurrentRevenue,
        ISNULL(t2.Revenue, 0) AS PreviousRevenue,
        t1.Revenue - ISNULL(t2.Revenue, 0) AS RevenueDiff
    FROM 
        YourTableName t1
    LEFT JOIN 
        YourTableName t2 ON t1.Year = t2.Year + 1
)

SELECT 
    CurrentYear,
    CurrentRevenue,
    PreviousRevenue,
    RevenueDiff
FROM 
    RevenueComparison;


    --99.Fetch the employees who are having same salary from each department


    SELECT 
    c.Ename,
    c.sal,
    c.deptno
FROM 
    dbo.EMP5 c
JOIN 
    dbo.EMP5 d ON c.deptno = d.deptno
WHERE 
    c.sal = d.sal
    AND c.empno <> d.empno -- Ensures that we're not comparing the same employee with themselves
ORDER BY 
    c.deptno, c.sal;


-- 99.SECOND HIGHEST SALARY FROM EMP TABLE
--Method1
select max(eMP_salary) from EMPLOYEE.dbo.EMP4
where emp_salary not in (select max(emp_salary) 
from EMPLOYEE.dbo.EMP4)

--Method2 by using cte

WITH RankedEmployees AS (
    SELECT EMP4.*, DENSE_RANK() OVER (ORDER BY emp_salary DESC) AS RANK 
    FROM EMPLOYEE.dbo.EMP4
)
SELECT * 
FROM RankedEmployees 
WHERE RANK = 2;

--Method3 by using dense rank

SELECT * FROM (SELECT EMP4.*,DENSE_RANK() OVER
(ORDER BY emp_salary DESC) AS RANK FROM EMPLOYEE.dbo.EMP4) AS EMPRANK WHERE RANK =2

--100.Display the names of salesman who earns a salary more than the highest salary of any clerk.

SELECT ENAME FROM EMPLOYEE.dbo.EMP5 WHERE JOB='SALESMAN'
AND SAL > ANY(SELECT MAX(SAL) FROM EMPLOYEE.dbo.EMP5 WHERE JOB='CLERK')

-- 101. 2ND HIGHEST SALARY 

--1st method

SELECT MAX(sal) from dbo.EMP2 WHERE sal < (SELECT MAX(sal) from dbo.EMP2)
--2nd method

SELECT MAX(sal) from dbo.EMP2 WHERE sal NOT IN (SELECT MAX(sal) from dbo.EMP2)

--3rd method

SELECT * FROM (SELECT EMP2.*,DENSE_RANK() OVER (ORDER BY sal DESC)AS RANK FROM dbo.EMP2)AS EMP2_RANK
WHERE RANK=2;

--4th method

WITH SECONDSAL AS (
    SELECT EMP2 .*,DENSE_RANK() OVER(ORDER BY sal DESC) AS RANK2 FROM EMPLOYEE.dbo.EMP2
)

SELECT * FROM SECONDSAL WHERE RANK2=2


-- 102. 2ND HIGHEST SALARY FROM EACH DEPARTEMENT

SELECT * FROM (SELECT EMP2.*,DENSE_RANK() OVER (PARTITION BY deptno ORDER BY sal DESC)AS RANK FROM dbo.EMP2)AS EMP2_RANK
WHERE RANK=1;

SELECT MAX(sal) as max_sal FROM dbo.EMP2  GROUP BY deptno ORDER BY max_sal DESC

SELECT deptno,MAX(sal) FROM dbo.EMP2 GROUP BY deptno


--103.FETCH EVEN AND ODD RECORDS FROM EMP TABLE

WITH EVEN AS(
    SELECT *,ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) AS ROWNUM FROM dbo.EMP2
)

SELECT * FROM EVEN WHERE ROWNUM %2=0



WITH ODD AS(
    SELECT *,ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) AS ROWNUM FROM dbo.EMP2
)

SELECT * FROM ODD WHERE ROWNUM %2=1


--105.FIND OUT THE DUPLICATES FROM EMP TABLE AND DELETE IT FROM EMP TABLE


SELECT empno,COUNT(empno) FROM dbo.EMP2 GROUP BY empno HAVING (COUNT(empno))>1


WITH DUPLICATE AS(
    SELECT *,ROW_NUMBER() OVER (PARTITION BY ename,empno,sal ORDER BY (SELECT NULL)) AS ROWNUMBER 
    FROM dbo.EMP2

)
SELECT * FROM DUPLICATE WHERE ROWNUMBER >1
    --dELTE DUPLICATE RECORDS

DELETE FROM DUPLICATE WHERE ROWNUMBER >1

   --FINDING OUT DUPLICATE RECORDS

SELECT * FROM DUPLICATE WHERE ROWNUMBER >1

--106.Pattern matching in SQL

--with like operator

SELECT * FROM EMP2 WHERE ename LIKE'S%'
SELECT * FROM EMP2 WHERE ename LIKE'S____'
SELECT * FROM EMP2 WHERE ename LIKE'%M%'
SELECT * FROM EMP2 WHERE ename NOT LIKE'%M%'

--WITHOUT LIKE OPERATOR

SELECT * FROM dbo.EMP5 WHERE CHARINDEX('M',ENAME)=1
SELECT * FROM dbo.EMP5 WHERE LEFT(ENAME,1)='M'
SELECT * FROM dbo.EMP5 WHERE SUBSTRING(ENAME,1,1)='M'


--107. NTH ROW  FROM TABLE

SELECT TOP 2  * FROM EMP2 ORDER BY SAL DESC


--108.FIND OUT MIDDLE RECORDS FROM EMP TABLE 

DECLARE @TotalRows INT, @MiddleRows INT, @StartRow INT;

-- Count the total number of rows in the EMP table
SELECT @TotalRows = COUNT(*) FROM dbo.EMP2;

-- Calculate the number of middle rows to retrieve
SET @MiddleRows = (@TotalRows - 1) / 2; -- Exclude the top and bottom rows if the total number is odd
SET @StartRow = @MiddleRows + 1; -- Start from the middle row

-- Retrieve the middle rows
SELECT *
FROM dbo.EMP2
ORDER BY ename,sal -- Specify the column to determine the order
OFFSET @StartRow ROWS
FETCH NEXT @MiddleRows ROWS ONLY;




SELECT *
FROM EMP2
ORDER BY ROWID DESC
FETCH FIRST 1 ROW ONLY;













104









SELECT * FROM EMP5
SELECT * FROM DEPT1

