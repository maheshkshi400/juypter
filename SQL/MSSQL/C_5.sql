-- patteren matching

SELECT * FROM EMPLOYEES.dbo.EMP2


-- LIKE START WITH M
SELECT * FROM EMPLOYEES.dbo.EMP2 WHERE ENAME LIKE 'M'

-- LIKE END WITH N
SELECT * FROM EMPLOYEES.dbo.EMP2 WHERE ENAME LIKE '%N'

-- LIKE START WITH M AND END WITH A

SELECT * FROM EMPLOYEES.dbo.EMP2 WHERE ENAME LIKE '%M%'

--

SELECT * FROM EMPLOYEES.dbo.EMP2 WHERE ENAME NOT LIKE '%M%'

