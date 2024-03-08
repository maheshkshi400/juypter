Create Table SalesInfo(
Continents varchar(30),
Country varchar(30),
Sales Bigint
)

Insert into SalesInfo Values('Asia','India',50000)
Insert into SalesInfo Values('Asia','India',70000)
Insert into SalesInfo Values('Asia','India',60000)
Insert into SalesInfo Values('Asia','Japan',10000)
Insert into SalesInfo Values('Asia','Japan',20000)
Insert into SalesInfo Values('Asia','Japan',40000)
Insert into SalesInfo Values('Asia','Thailand',20000)
Insert into SalesInfo Values('Asia','Thailand',30000)
Insert into SalesInfo Values('Asia','Thailand',40000)
Insert into SalesInfo Values('Europe','Denmark',40000)
Insert into SalesInfo Values('Europe','Denmark',60000)
Insert into SalesInfo Values('Europe','Denmark',10000)
Insert into SalesInfo Values('Europe','France',60000)
Insert into SalesInfo Values('Europe','France',30000)
Insert into SalesInfo Values('Europe','France',40000)


SELECT * FROM SalesInfo;

--Problem Statement :- SalesInfo Table has three columns namely Continents, Country and Sales. 
--Write a SQL query to get the aggregate sum  of sales  country wise and display only those which are 
--maximum in each continents as shown in the table.

WITH CTE_SALES AS
(
    SELECT Continents,Country,SUM(Sales) AS TOTALSALE
     FROM SalesInfo
     GROUP BY Continents,Country
),
CTE_RANK AS
(
    SELECT Continents,Country,TOTALSALE,
    DENSE_RANK() OVER (PARTITION BY Continents ORDER BY TOTALSALE DESC) AS RANKING
    FROM CTE_SALES 
)
SELECT Continents,Country,TOTALSALE FROM CTE_RANK WHERE RANKING=1;