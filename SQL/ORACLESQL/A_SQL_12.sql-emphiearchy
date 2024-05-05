
SELECT * FROM EMP

-- REPOERTING EACH TO MAGER

SELECT EMPNO, ENAME, EMP.MGR, NAMES_OF_REPORTING, NO_OF_REPORTING
FROM EMP
LEFT OUTER JOIN (
    SELECT MGR, 
           LISTAGG(ENAME, ',') WITHIN GROUP (ORDER BY ENAME) AS NAMES_OF_REPORTING, 
           COUNT(*) AS NO_OF_REPORTING
    FROM EMP
    GROUP BY MGR
) R ON EMP.EMPNO = R.MGR;


--mETHOD 2

select empno,ename,
      (select listagg(ename,',')
      from emp where mgr = e.empno) name_of_rep,
      (select count(1)
      from emp where mgr = e.empno) no_of_rep
from emp e
order by empno;


--METHOD 3

select m.empno,m.ename,
       listagg(e.ename,',') name_of_rep,
       count(e.ename) count_of_rep
from emp m, emp e
where m.empno=e.mgr(+)
group by m.empno,m.ename
order by 1



