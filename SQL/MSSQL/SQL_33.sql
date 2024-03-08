Create Table Employees3
(
Employee_no BigInt,
Birth_date Date,
First_name Varchar(50),
Last_name Varchar(50),
Joining_date Date
)

INSERT INTO Employees3 Values(1001,CAST('1988-08-15' AS Date),'ADAM','WAUGH', CAST('2013-04-12' AS Date))
INSERT INTO Employees3 Values(1002,CAST('1990-05-10' AS Date),'Mark','Jennifer', CAST('2010-06-25' AS Date))
INSERT INTO Employees3 Values(1003,CAST('1992-02-07' AS Date),'JOHN','Waugh', CAST('2016-02-07' AS Date))
INSERT INTO Employees3 Values(1004,CAST('1985-06-12' AS Date),'SOPHIA TRUMP','', CAST('2016-02-15' AS Date))
INSERT INTO Employees3 Values(1005,CAST('1995-03-25' AS Date),'Maria','Gracia', CAST('2011-04-09' AS Date))
INSERT INTO Employees3 Values(1006,CAST('1994-06-23' AS Date),'ROBERT','PATRICA', CAST('2015-06-23' AS Date))
INSERT INTO Employees3 Values(1007,CAST('1993-04-05' AS Date),'MIKE JOHNSON','', CAST('2014-03-09' AS Date))
INSERT INTO Employees3 Values(1008,CAST('1989-04-05' AS Date),'JAMES','OLIVER', CAST('2017-01-15' AS Date))


SELECT * FROM Employees3


--(1.)As a convention the values in first_name and last_name should always be in uppercase. 
--But due to data entry issues some records may not adhere to this convention. Write a query to find all such records 
--where first_name is not in upper case.

SELECT * FROM Employees3 WHERE UPPER(First_name) != First_name COLLATE SQL_Latin1_General_CP1_CS_AS;


--(2.) For some records the first_name column has full name and last_name is blank.  Write a SQL query to update it correctly,

SELECT First_name,
LEFT(First_name,CHARINDEX(' ',First_name)-1) AS FNAME,
RIGHT(First_name,LEN(First_name)-CHARINDEX(' ',First_name)+1) AS LNAME
FROM Employees3 WHERE Last_name IS NULL OR Last_name=''


UPDATE Employees3
SET First_name = LEFT(First_name,CHARINDEX(' ',First_name)-1),
Last_name = RIGHT(First_name,LEN(First_name)-CHARINDEX(' ',First_name)+1)
FROM Employees3 WHERE Last_name IS NULL OR Last_name=''


--(3.) Calculate tenure of employees as of 30th Jun 2017. Prepare following above sample report :

WITH CTE_TENURE AS
(
        SELECT Employee_no,CAST(DATEDIFF(Month,Joining_date,'2017-06-30') AS FLOAT)/12 AS TENURE FROM Employees3
),
CTE_TEMP AS
(
    SELECT Employee_no,
    CASE WHEN TENURE < 1 THEN '< 1 YEARS'
        WHEN TENURE >= 1 AND TENURE < 3 THEN '1-3 YEARS'
        WHEN TENURE >= 3 AND TENURE < 5 THEN '3-5 YEARS'
        WHEN TENURE >= 5 THEN '5+ YEARS' END AS TEMP_TENURE
        FROM CTE_TENURE
)
SELECT TEMP_TENURE AS 'TENURE IN YEARS',COUNT(*) FROM CTE_TEMP
GROUP BY TEMP_TENURE;


--(4.) List all the employees whose work anniversary is same as their birthday date.

SELECT * FROM Employees3 WHERE 
DATEPART(DD,Birth_date)=DATEPART(DD,Joining_date) AND
DATEPART(MM,Birth_date)=DATEPART(MM,Joining_date)


--(5.) Find the Youngest (minimum age) employee with tenure more than 5 years as of 30th June 2017.



SELECT DATEDIFF(YY,Birth_date,'2017-06-30') AS MIN_AGE 
FROM
(
SELECT MAX(Birth_date) AS BIRTH_DATE FROM Employees3 
WHERE CAST(DATEDIFF(Month,Joining_date,'2017-06-30') AS FLOAT)/12 >5
) A;
