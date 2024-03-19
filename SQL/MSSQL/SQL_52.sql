--Problem Statement : Write a SQL query to find the top 3 products that are most frequently bought together 
--(purchased in the same transaction).
--Output the name of product #1, name of product #2 and number of combinations in descending order. 

Create Table Transactions_Walmart (
transaction_id int,
product_id int,
users_id int,
transaction_date datetime
)

Insert into Transactions_Walmart values ('231574', 111, 234, '03/01/2022 12:00:00')
Insert into Transactions_Walmart values ('231574', 444, 234, '03/01/2022 12:00:00')
Insert into Transactions_Walmart values ('231574', 222, 234, '03/01/2022 12:00:00')
Insert into Transactions_Walmart values ('137124', 444, 125, '03/05/2022 12:00:00')
Insert into Transactions_Walmart values ('256234', 222, 311, '03/07/2022 12:00:00')
Insert into Transactions_Walmart values ('523152', 222, 746, '03/06/2022 12:00:00')
Insert into Transactions_Walmart values ('141415', 333, 235, '03/02/2022 12:00:00')
Insert into Transactions_Walmart values ('523152', 444, 746, '03/06/2022 12:00:00')
Insert into Transactions_Walmart values ('137124', 111, 125, '03/05/2022 12:00:00')
Insert into Transactions_Walmart values ('256234', 333, 311, '03/07/2022 12:00:00')

Create Table Products_Walmart(
product_id int,
product_name varchar(50)
)

Insert into Products_Walmart values (111,'apple')
Insert into Products_Walmart values (222,'soya milk')
Insert into Products_Walmart values (333,'instant oatmeal')
Insert into Products_Walmart values (444,'banana')
Insert into Products_Walmart values (555,'chia seed')


SELECT * FROM Transactions_Walmart;
SELECT * FROM Products_Walmart;

WITH CTE_PRODUCT AS(
    SELECT T.transaction_id,T.product_id,T.users_id,P.product_name
    FROM Transactions_Walmart AS T INNER JOIN Products_Walmart AS P 
    ON T.product_id=P.product_id
),
CTE_PRODUCT_COMBO AS (
    SELECT A.product_name AS PRODUCT1,
    B.product_name AS  PRODUCT2,
    COUNT(1) AS COMBO_SUM
    FROM CTE_PRODUCT AS A INNER JOIN CTE_PRODUCT B 
    ON A.transaction_id = B.transaction_id AND A.product_name < B.product_name
    GROUP BY A.product_name,B.product_name
)
SELECT TOP 3 PRODUCT1,PRODUCT2,COMBO_SUM FROM CTE_PRODUCT_COMBO ORDER BY COMBO_SUM DESC;