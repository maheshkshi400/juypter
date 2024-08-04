-- Dispaly alternate records

SELECT * FROM EMPLOYEES.dbo.EMP2

SELECT * FROM
(
    SELECT
        ROW_NUMBER() OVER (ORDER BY empno) AS row_num,
        empno,
        ename,
        sal
    FROM
        EMPLOYEES.dbo.EMP2 
) AS subquery
WHERE
    row_num % 2 = 1;
    