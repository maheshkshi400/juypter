select * from EMPLOYEE.dbo.EMP4


select max(eMP_salary) from EMPLOYEE.dbo.EMP4
where emp_salary not in (select max(emp_salary) 
from EMPLOYEE.dbo.EMP4)

select MAX(emp_salary) from EMPLOYEE.dbo.EMP4



SELECT ENAME
FROM EMPLOYEE.dbo.EMP5
WHERE JOB = 'salesman'
AND SAL > (
    SELECT MAX(emp_salary)
    FROM EMPLOYEE.dbo.EMP4
    WHERE JOB = 'clerk'
);


SELECT * FROM EMP5


SELECT ENAME FROM EMPLOYEE.dbo.EMP5 WHERE JOB='SALESMAN'
AND SAL > (SELECT MAX(SAL) FROM EMPLOYEE.dbo.EMP5 WHERE JOB='CLERK')