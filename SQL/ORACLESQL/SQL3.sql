SELECT ename, job, sal, deptno
FROM emp a
WHERE (deptno, sal) IN (SELECT deptno, MAX(sal)
                        FROM emp
                        GROUP BY deptno)


Correlated sub query uses the values from the outer query 

SELECT ename, job, sal, deptno
FROM emp a
WHERE sal=(SELECT MAX(sal)
           FROM emp b
           WHERE b.deptno=a.deptno);
           
Correlated sub query : approach 2 

SELECT ename, job, sal, deptno
FROM emp a
WHERE 0=(SELECT MAX(b.sal)-a.sal
         FROM emp b
         WHERE b.deptno=a.deptno)
         
using the having clause 

SELECT a.ename, a.job, a.sal, a.deptno
FROM emp a, emp b
WHERE a.deptno=b.deptno
GROUP BY a.ename, a.job, a.sal, a.deptno
HAVING a.sal=MAX(b.sal)
           
 using left outer join

SELECT a.ename, a.job, a.sal, a.deptno, b.sal,b.empno
FROM emp a LEFT JOIN emp b ON a.deptno=b.deptno
WHERE b.empno IS NULL AND a.sal < b.sal;

