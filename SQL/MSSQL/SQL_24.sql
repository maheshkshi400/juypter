USE OTHERS

Create Table Phone_Log(
Source_Phone_Nbr Bigint,
Destination_Phone_Nbr Bigint,
Call_Start_DateTime Datetime) ;

Insert into Phone_Log Values (2345,6789,'2012-07-01 10:00')
Insert into Phone_Log Values (2345,1234,'2012-07-01 11:00')
Insert into Phone_Log Values (2345,4567,'2012-07-01 12:00')
Insert into Phone_Log Values (2345,4567,'2012-07-01 13:00')
Insert into Phone_Log Values (2345,6789,'2012-07-01 15:00')
Insert into Phone_Log Values (3311,7890,'2012-07-01 10:00')
Insert into Phone_Log Values (3311,6543,'2012-07-01 12:00')
Insert into Phone_Log Values (3311,1234,'2012-07-01 13:00')


SELECT * FROM Phone_Log;

--WRITE A SQL TO DISPLAY THE Source_Phone_Nbr AND A FLAG WHERE THE FLAG NEEDS TO BE SET 
--TO 'Y'.IF FIRST CALLED NUMBER AND LAST CALLED NUMBER ARE THE SAME AND 'N'.IF FIRST CALLED NUMBER 
--AND LAST CALLED NUMBER ARE DIFFERENT
  


  WITH FirstLastCalled AS (
    SELECT 
        Source_Phone_Nbr,
        MIN(Call_Start_DateTime) AS FirstCall,
        MAX(Call_Start_DateTime) AS LastCall
    FROM 
        Phone_Log
    GROUP BY 
        Source_Phone_Nbr
)

SELECT 
    Phone_Log.Source_Phone_Nbr,
    CASE 
        WHEN FirstLastCalled.FirstCall = FirstLastCalled.LastCall THEN 'Y'
        ELSE 'N'
    END AS Flag
FROM 
    Phone_Log
JOIN 
    FirstLastCalled ON Phone_Log.Source_Phone_Nbr = FirstLastCalled.Source_Phone_Nbr;




SELECT Source_Phone_Nbr,
CASE WHEN FirstCall = LastCall THEN 'Y'
    WHEN FirstCall != LastCall THEN 'N' END AS Is_Match
FROM
(
SELECT Source_Phone_Nbr,
MAX(CASE WHEN RankFirst=1 THEN Destination_Phone_Nbr END) AS FirstCall,
MAX(CASE WHEN RankLast=1 THEN Destination_Phone_Nbr END) AS LastCall
FROM
(SELECT Source_Phone_Nbr,Destination_Phone_Nbr,Call_Start_DateTime,
ROW_NUMBER() OVER (PARTITION BY Source_Phone_Nbr ORDER BY Call_Start_DateTime) AS RankFirst,
ROW_NUMBER() OVER (PARTITION BY Source_Phone_Nbr ORDER BY Call_Start_DateTime DESC) AS RankLast
FROM Phone_Log) AS A GROUP BY Source_Phone_Nbr 
) as B


--BY USING FIRST_VALUE AND LAST_VALUE FUNCTION




SELECT Source_Phone_Nbr,
CASE WHEN FirstCall = LastCall THEN 'Y'
    WHEN FirstCall != LastCall THEN 'N' END AS Is_Match
FROM
(
SELECT DISTINCT Source_Phone_Nbr,
FIRST_VALUE(Destination_Phone_Nbr) OVER (PARTITION BY Source_Phone_Nbr ORDER BY Call_Start_DateTime) AS FirstCall,
LAST_VALUE(Destination_Phone_Nbr) OVER (PARTITION BY Source_Phone_Nbr ORDER BY Call_Start_DateTime
ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS LastCall
FROM Phone_Log
) AS A;

