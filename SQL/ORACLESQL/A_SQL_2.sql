select * from emp;

 
--Method 1

select * from emp A,(select DEPTNO,trunc(AVG(SAL)) as av_sal from emp GROUP BY DEPTNO) B
where A.DEPTNO=b.DEPTNO AND A.SAL > B.av_sal;

--Method 2
SELECT * FROM EMP A where A.SAL > (SELECT AVG(B.SAL) FROM EMP B WHERE A.DEPTNO = B.DEPTNO);


--Method 3

SELECT * FROM (SELECT EMP.*,AVG(SAL) OVER (PARTITION BY DEPTNO) AS AVG_SAL FROM EMP)
WHERE SAL > AVG_SAL;


--Method 4

with 
    FUNCTION AVG_SAL(p_deptno number) return number as
    v_avg_sal number;
    BEGIN
        SELECT avg(SAL) into v_avg_sal from EMP where deptno = p_deptno;
    
    RETURN v_avg_sal;

    end AVG_SAL;

select EMPNO,ENAME,SAL,DEPTNO,JOB,MGR FROM EMP WHERE EMP.SAL > AVG_SAL(deptno);
