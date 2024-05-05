
--DATE
-- Retireve Current Date and Time
SELECT GETDATE() 'Today'

-- Retrieve Yesterday Date
SELECT DATEADD(d,-1,GETDATE()) 'Yesterday'

--WEEK

-- Get the First Day of Current Week
SELECT DATEADD(wW,DATEDIFF(WW,0,GETDATE()),0) AS 'Current_Week_First_Day'

-- Get the Last Day of Current Week
SELECT DATEADD(wk,DATEDIFF(wk,0,GETDATE()),6) AS 'Current_Week_Last_Day';

-- Get the First Day of Last Week
SELECT DATEADD(wk,DATEDIFF(wk,7,GETDATE()),0) AS 'Last_Week_First_Day';

-- Get the Last Day of Last Week
SELECT DATEADD(wk,DATEDIFF(wk,7,GETDATE()),6) AS 'Last_Week_Last_Day';


--MONTH

-- Get the First Day of Current Month
SELECT DATEADD(mm,DATEDIFF(mm,0,GETDATE()),0) AS 'Current_Month_First_Day';

-- Get the Last Day of Current Month
SELECT DATEADD(ms,- 3,DATEADD(mm,0,DATEADD(mm,DATEDIFF(mm,0,GETDATE())+1,0))) AS 'Current_Month_Last_Day';

-- Get the First Day of Last Month
SELECT DATEADD(mm,-1,DATEADD(mm,DATEDIFF(mm,0,GETDATE()),0)) AS 'Last_Month_First_Day'

-- Get the Last Day of Last Month
SELECT DATEADD(ms,-3,DATEADD(mm,0,DATEADD(mm,DATEDIFF(mm,0,GETDATE()),0))) AS 'Last_Month_Last_Day'


-- Get the First Day of Current Quarter
SELECT Dateadd(qq, Datediff(qq,0,GetDate()), 0) AS 'Current_Quarter_First_Day'

-- Get the Last Day of Current Quarter
SELECT Dateadd(ms,-3,Dateadd(qq, Datediff(qq,0,GetDate())+1, 0)) AS 'Current_Quarter_Last_Day'

-- Get the First Day of Last Quarter
SELECT Dateadd(qq, Datediff(qq,0,GetDate())-1, 0) AS 'Last_Quarter_First_Day'

-- Get the Last Day of Last Quarter
SELECT Dateadd(ms,-3,Dateadd(qq, Datediff(qq,0,GetDate()), 0)) AS 'Last_Quarter_Last_Day'



-- Year

-- Get the First Day of Current Year
SELECT DATEADD(yy,DATEDIFF(yy,0,GETDATE()),0) AS 'Current_Year_First_Day'

-- Get the Last Day of Current Year
SELECT DATEADD(ms,-3,DATEADD(yy,0,DATEADD(yy,DATEDIFF(yy,0,GETDATE())+1,0))) AS 'Current_Year_Last_Day'

-- Get the First Day of Last Year
SELECT DATEADD(yy,-1,DATEADD(yy,DATEDIFF(yy,0,GETDATE()),0)) AS 'Last_Year_First_Day'

-- Get the Last Day of Last Year
SELECT DATEADD(ms,-3,DATEADD(yy,0,DATEADD(yy,DATEDIFF(yy,0,GETDATE()),0))) AS 'Last_Year_Last_Day'



-NTH HIGHEST LARY
SELECT * /*This is the outer query part */
FROM Employee Emp1
WHERE (N-1) = ( /* Subquery starts here */
SELECT COUNT(DISTINCT(Emp2.Salary))
FROM Employee Emp2
WHERE Emp2.Salary > Emp1.Salary)


--GENERATE 1 TO 10 NUMBERS

DECLARE @RangeStartFrom INT= 1
DECLARE @RangeEndTo INT= 10 ;

; WITH GenerateNumbers AS (
SELECT @RangeStartFrom AS Number
UNION ALL
SELECT Number +1 FROM GenerateNumbers
WHERE Number +1<= @RangeEndTo
)
SELECT * FROM GenerateNumbers
option (MAXRECURSION 0)
