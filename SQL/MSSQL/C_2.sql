-- Highest salary from each depatement

SELECT * FROM EMPLOYEES.dbo.EMP2

SELECT MAX(SAL),deptno FROM EMPLOYEES.dbo.EMP2 GROUP BY deptno;


--BY USING DENSE_RANK

SELECT * FROM (SELECT EMP2.*, ROW_NUMBER() OVER(PARTITION BY DEPTNO ORDER BY SAL DESC) AS SAL_RANK 
FROM EMPLOYEES.dbo.EMP2) RANKED_SALARY WHERE SAL_RANK=1;

--BY USING CTE

WITH SALARY_CTE AS
(
SELECT EMP2.*, ROW_NUMBER() OVER(PARTITION BY DEPTNO ORDER BY SAL DESC) AS SAL_RANK
FROM EMPLOYEES.dbo.EMP2
)
SELECT * FROM SALARY_CTE WHERE SAL_RANK=1;