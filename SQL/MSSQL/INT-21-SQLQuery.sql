--How to find employees hired in last n years

SELECT ename,hiredate FROM dbo.EMP2

SELECT *,DATEDIFF(YY,hiredate,GETDATE()) FROM dbo.EMP2

SELECT * FROM dbo.EMP2 WHERE 
DATEDIFF(YY,hiredate,GETDATE()) >= 42



