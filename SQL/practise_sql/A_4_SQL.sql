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