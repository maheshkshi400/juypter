

-- ODD AND EVEN ROWS

SELECT * FROM
(SELECT EMPNO,ENAME,SAL,ROWNUM RN FROM EMP ORDER BY RN)
WHERE MOD(RN,2) <> 0;

SELECT * FROM
(SELECT EMPNO,ENAME,SAL,ROWNUM RN FROM EMP ORDER BY RN)
WHERE MOD(RN,2) <> 1;



--DUPLICATE QUERY
SELECT EMPNO,COUNT(EMPNO) FROM EMP GROUP BY EMPNO HAVING (COUNT(EMPNO)>1);

WITH DuplicateCTE AS (
    SELECT EMPNO,
           ROW_NUMBER() OVER (PARTITION BY EMPNO ORDER BY EMPNO) AS RowNumber
    FROM EMP5
)
SELECT EMPNO
FROM DuplicateCTE
WHERE RowNumber > 1;


--DELETE DUPLICATE 
DELETE FROM EMP A WHERE ROWID NOT IN (SELECT MAX(ROWID) FROM EMP B WHERE A.EMPNO=B.EMPNO);

--RANK

SELECT * FROM (
    SELECT EMP.*, RANK() OVER (PARTITION BY DEPTNO ORDER BY SAL DESC) AS RANK
    FROM EMP
) 
WHERE RANK = 1;


--DENSE RANK

SELECT * FROM (
    SELECT EMP.*,DENSE_RANK() OVER (PARTITION BY DEPTNO ORDER BY SAL DESC) AS RANK
    FROM EMP
) 
WHERE RANK = 1;

--ROW_NUM

SELECT * FROM (
    SELECT EMP.*, ROW_NUMBER() OVER (PARTITION BY DEPTNO ORDER BY SAL DESC) AS RANK
    FROM EMP
) 
WHERE RANK = 1;

--HIGEST SALARY

SELECT * FROM EMP WHERE SAL = (SELECT MAX(SAL) FROM EMP);

--AVG SALARY

SELECT AVG(SAL) FROM EMP;


--LIKE OPRATOR QURIES

SELECT * FROM EMP WHERE ENAME LIKE 'M%';
SELECT * FROM EMP WHERE ENAME LIKE '%N';
SELECT * FROM EMP WHERE ENAME LIKE '%M%';
SELECT * FROM EMP WHERE ENAME  NOT LIKE '%M%';
SELECT * FROM EMP WHERE LENGTH(ENAME)=5;
SELECT * FROM EMP WHERE ENAME LIKE '_L%';
SELECT * FROM EMP WHERE ENAME LIKE '___M%';
SELECT HIREDATE,ENAME FROM EMP WHERE HIREDATE LIKE '%DEC%';
SELECT * FROM EMP WHERE ENAME LIKE '%LL%';
SELECT * FROM EMP WHERE ENAME LIKE 'J%S';

--FETCH 4TH RECORD FROM THE TABLE
SELECT * FROM EMP WHERE ROWNUM < 4
MINUS
SELECT * FROM EMP WHERE ROWNUM <3;


SELECT * FROM
(SELECT EMP .*,ROWNUM RN FROM EMP) WHERE RN=4;


SELECT * FROM
(SELECT EMP .*,ROWNUM RN FROM EMP) WHERE RN IN(2,3,7);

--INNER JOIN

SELECT ENAME,SAL,D.DEPTNO,DNAME,LOC FROM EMP E,DEPT1 D WHERE E.DEPTNO=D.DEPTNO;
SELECT ENAME,SAL,D.DEPTNO,DNAME,LOC FROM EMP E,DEPT1 D WHERE E.DEPTNO=D.DEPTNO AND LOC='CHICAGO';
SELECT DNAME,SUM(SAL) FROM EMP E,DEPT1 D WHERE E.DEPTNO=D.DEPTNO GROUP BY DNAME;

--SELF JOIN
SELECT E1.ENAME AS EMPLOYEE, E2.ENAME AS MANAGER 
FROM EMP E1, EMP E2 
WHERE E1.MGR = E2.EMPNO AND E1.SAL > E2.SAL;


SELECT E1.ENAME AS EMPLOYEE, E2.ENAME AS MANAGER 
FROM EMP E1, EMP E2 
WHERE E1.MGR = E2.EMPNO AND E1.HIREDATE < E2.HIREDATE;


SELECT E1.ENAME AS EMPLOYEE, E2.ENAME AS MANAGER 
FROM EMP E1, EMP E2 
WHERE E1.MGR = E2.EMPNO;  --dISPLAY EMPLOYEE AND HIS MANAGER

--LEFT JOIN

--FIRST AND LAST  RECORD FROM THE TABLE
SELECT * FROM (SELECT ENAME,SAL,ROWNUM RN FROM EMP) 
WHERE RN=1 OR RN=(SELECT COUNT(*) FROM EMP);

--LAST TWO ROWS 
SELECT * FROM EMP
MINUS
SELECT * 
FROM EMP 
WHERE ROWNUM <= (SELECT COUNT(*) - 2 FROM EMP);

SELECT * FROM (SELECT ROWNUM RN,EMP.* FROM EMP)
WHERE RN >(SELECT COUNT(*)-2 FROM EMP) OR RN IN (1,2);

--THIRD HIGHEST SALARY 

SELECT * FROM (SELECT DISTINCT SAL FROM EMP ORDER BY SAL DESC)
WHERE ROWNUM <= 3;



