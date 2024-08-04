SELECT * FROM EMPLOYEES.dbo.EMP2


-- exacly 4 chaaracters in his names
SELECT * FROM EMPLOYEES.dbo.EMP2
WHERE LEN(ENAME) = 4

-- exacly 4 chaaracters in his names
SELECT * FROM EMPLOYEES.dbo.EMP2
WHERE ename LIKE '____'

-- exacly 4 chaaracters in his names
SELECT * FROM EMPLOYEES.dbo.EMP2
WHERE  ename LIKE '_l%'

--no of person joined in month of december

--using like operator
SELECT * FROM EMPLOYEES.dbo.EMP2
WHERE  hiredate LIKE '%-12-%'

-- using between operator
SELECT * FROM EMPLOYEES.dbo.EMP2
WHERE  hiredate BETWEEN '1992-12-01' AND '1992-12-31';

--by using datefunctions
SELECT * FROM EMPLOYEES.dbo.EMP2
WHERE MONTH(hiredate) = 12 ;

--by using datepart function
SELECT * FROM EMPLOYEES.dbo.EMP2
WHERE DATEPART(MM,hiredate) = 12 ;

