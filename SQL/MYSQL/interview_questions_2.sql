--create employee table with birthdate column
use EMPLOYEES;
create table EMP_BIRTHDATE(
ID int,
NAME varchar(50),
BIRTHDATE date
);
insert into EMP_BIRTHDATE values(1, 'mahesh', '1990-01-01');
insert into EMP_BIRTHDATE values(2, 'Gahesh', '1995-06-15');
select * from EMP_BIRTHDATE;

--Calculate employees age
use EMPLOYEES;

SELECT 
    ID,
    NAME,
    BIRTHDATE,
    DATEDIFF(YEAR, birthdate, GETDATE()) AS age
FROM 
    EMP_BIRTHDATE;

--Calculate employees experience

SELECT 
     EMPNO,
    ENAME,
    HIREDATE,
    DATEDIFF(YEAR,HIREDATE, GETDATE()) AS EXPERIENCE
FROM 
    EMP2;

SELECT * FROM EMP2;

use SALES;
SELECT TOP (1000) [Year]
      ,[QuarterName]
      ,[Sales]
  FROM [SALES].[dbo].[Quaterly_sales]

--Write to display sum of order amount for the quarter of all the orders.
SELECT SUM(Sales) AS TotalSales
FROM SALES.dbo.Quaterly_sales;

--lead quaterly sales
SELECT
    [Year],
    [QuarterName],
    [Sales],
    LEAD([Sales]) OVER (ORDER BY [Year], [QuarterName]) AS NextQuarterSales
FROM
    SALES.dbo.Quaterly_sales;


--WRITE to display last day of the month
SELECT EOMONTH(GETDATE()) AS LastDayOfMonth;
SELECT EOMONTH(GETDATE(), -1) AS LastDayOfPreviousMonth;



--Write to display first day of the month
SELECT DATEADD(MM, DATEDIFF(MONTH, 0, GETDATE()), 0) AS FirstDayOfMonth;

--WRITE to display months between two dates
SELECT DATEDIFF(MM, '2019-01-01',GETDATE()) AS MonthsBetween;

--WRITE to display the date in the format of 09/Aug/2017.

SELECT FORMAT(GETDATE(),'dd/MMM/yyyy') AS formatted_date;

--Write to display the date in the format of 09/Aug/2017 10:15:11


SELECT FORMAT(GETDATE(),'dd/MMM/yyyy HH:mm:ss') AS formatted_date;








