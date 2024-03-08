USE OTHER

Create Table Trade_tbl(
TRADE_ID varchar(20),
Trade_Timestamp time,
Trade_Stock varchar(20),
Quantity int,
Price Float
)

Insert into Trade_tbl Values('TRADE1','10:01:05','ITJunction4All',100,20)
Insert into Trade_tbl Values('TRADE2','10:01:06','ITJunction4All',20,15)
Insert into Trade_tbl Values('TRADE3','10:01:08','ITJunction4All',150,30)
Insert into Trade_tbl Values('TRADE4','10:01:09','ITJunction4All',300,32)
Insert into Trade_tbl Values('TRADE5','10:10:00','ITJunction4All',-100,19)
Insert into Trade_tbl Values('TRADE6','10:10:01','ITJunction4All',-300,19)


SELECT * FROM Trade_tbl;


--WRITE SQL TO FIND ALL COUPLES OF TRADE FOR SAME STOCK THAT HAPPENED IN
--THE RANGGE OF 10 SECONDS AND HAVING PRICE DIFFERENCE BY MORE THAN 10%  OUTPUT RESULT 
--SHOULD ALSO LIST THE PERCENTAGE OF PRICE DIFFERENCE BETWEEN TWO TRADES

WITH TRADE_CTE AS(
    SELECT TRADE_ID,Trade_Timestamp,Price FROM dbo.Trade_tbl
)

SELECT A.TRADE_ID AS First_Trade,
B.TRADE_ID AS Second_Trade,
FLOOR(ABS(((B.PRICE-A.PRICE)/A.PRICE)*100)) AS PRICE_DIFF FROM TRADE_CTE AS A
INNER JOIN
TRADE_CTE AS B
ON A.TRADE_ID < B.TRADE_ID
WHERE DATEDIFF(SECOND,A.Trade_Timestamp,B.Trade_Timestamp) <=10
AND (((B.Price - A.Price)/A.Price)*100) >=10 
ORDER BY 1;

