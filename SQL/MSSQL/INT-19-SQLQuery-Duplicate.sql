



--TO FIND OUT DUPLICATE RECORDS IN THE TABLE

SELECT empno,COUNT(empno) FROM dbo.EMP2 GROUP BY EMPNO HAVING (COUNT(empno))>1


-- DELETE THE DUPLICATE RECORDS FROM THE TABLE

DELETE FROM dbo.EMP2 A WHERE ROWID NOT IN (SELECT MAX(ROWID) FROM dbo.EMP2 B WHERE A.empno=B.empno)