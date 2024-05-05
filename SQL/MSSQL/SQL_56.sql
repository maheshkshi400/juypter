--Problem Statement : Assume you are given the below table on transactions from users. 
--Based on their latest transaction date, write a query to obtain the number of users who 
--made a purchase and the total number of products bought for each transaction date.      
USE EMPLOYEE
Create Table user_transactions(
product_id integer,
users_id integer,
spend decimal,
transaction_date Datetime
)



INSERT INTO user_transactions Values(3673, 123, 68.90 ,'07/08/2022 10:00:00');
INSERT INTO user_transactions Values(9623, 123, 274.10 ,'07/08/2022 10:00:00')
INSERT INTO user_transactions Values(1467, 115, 19.90 ,'07/08/2022 10:00:00')
INSERT INTO user_transactions Values(2513, 159, 25.00 ,'07/08/2022 10:00:00')
INSERT INTO user_transactions Values(1452, 159, 74.50 ,'07/10/2022 10:00:00')
INSERT INTO user_transactions Values(1452, 123, 74.50 ,'07/10/2022 10:00:00')
INSERT INTO user_transactions Values(9765, 123, 100.15 ,'07/11/2022 10:00:00')
INSERT INTO user_transactions Values(6536, 115, 57.00 ,'07/12/2022 10:00:00')
INSERT INTO user_transactions Values(7384, 159, 15.50 ,'07/12/2022 10:00:00')
INSERT INTO user_transactions Values(1247, 159, 23.40 ,'07/12/2022 10:00:00')


SELECT * FROM user_transactions;


WITH CTE_LATEST_DATE AS(
    SELECT
        users_id,
        transaction_date,
        product_id,
        RANK() OVER (PARTITION BY users_id ORDER BY transaction_date DESC) AS DAYS_RANK
    FROM 
        user_transactions
)
SELECT  transaction_date,
        COUNT(DISTINCT users_id) AS NUMBER_OF_USERS,
        COUNT(product_id) AS NO_OF_PRODUCTS
FROM CTE_LATEST_DATE
WHERE DAYS_RANK =1
GROUP BY transaction_date
ORDER BY transaction_date







---







