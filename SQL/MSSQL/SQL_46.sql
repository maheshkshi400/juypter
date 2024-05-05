--The Spending table keeps the logs of the spendings history of users that make purchases from an online 
--shopping website which has a desktop and a mobile application.
--Write an SQL query to find the total number of users and the total amount spent using mobile only, 
--desktop only and both mobile and desktop together for each date.



create table Spending 
(
User_id int,
Spend_date date,
Platform varchar(10),
Amount int
);

Insert into spending values(1,'2019-07-01','Mobile',100);
Insert into spending values(1,'2019-07-01','Desktop',100);
Insert into spending values(2,'2019-07-01','Mobile',100);
Insert into spending values(2,'2019-07-02','Mobile',100);
Insert into spending values(3,'2019-07-01','Desktop',100);
Insert into spending values(3,'2019-07-02','Desktop',100);


SELECT * FROM Spending;


WITH CTE_A1 AS (
    SELECT Spend_date, User_id, MIN(Platform) AS Platform, SUM(Amount) AS Amount 
    FROM Spending 
    GROUP BY Spend_date, User_id
    HAVING COUNT(DISTINCT Platform) = 1 

    UNION ALL

    SELECT Spend_date, User_id, 'BOTH' AS Platform, SUM(Amount) AS Amount 
    FROM Spending 
    GROUP BY Spend_date, User_id
    HAVING COUNT(DISTINCT Platform) = 2 

    UNION ALL

SELECT DISTINCT Spend_date,NULL AS User_id,'BOTH' AS Platform,0 AS Amount FROM Spending
)
SELECT Spend_date,Platform,SUM(Amount) AS TotalAmount,COUNT(DISTINCT User_id) as Total_Userid
FROM CTE_A1
GROUP BY Spend_date,Platform
ORDER BY Spend_date,Platform DESC;