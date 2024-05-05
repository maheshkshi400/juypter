--Problem Statement :  Stocks Table consists of DateKey, StockName and Price.
--Write a SQL query to derive another column MarketPrice where it is going to 
--forward fill NULL values with the last Non NULL value


create table Stocks 
(DateKey Date,
StocksName varchar(20),
Price int
);

insert into Stocks values('20230101','Infosys',1400)
insert into Stocks values('20230102','Infosys',null)
insert into Stocks values('20230103','Infosys',1450)
insert into Stocks values('20230104','Infosys',null)
insert into Stocks values('20230105','Infosys',null)
insert into Stocks values('20230105','Infosys',null)
insert into Stocks values('20230101','Reliance',2300)
insert into Stocks values('20230102','Reliance',NULL)
insert into Stocks values('20230103','Reliance',null)
insert into Stocks values('20230104','Reliance',2375)
insert into Stocks values('20230105','Reliance',2400)
insert into Stocks values('20230106','Reliance',null)


SELECT * FROM Stocks;



WITH CTE_RANK AS(
SELECT DateKey,
       StocksName,
       Price,
       COUNT(Price) OVER (PARTITION BY StocksName ORDER BY DateKey) AS RANK
FROM Stocks
)
SELECT DateKey,
       StocksName,
       Price,
       RANK,
       FIRST_VALUE(Price) OVER (PARTITION BY StocksName,RANK ORDER BY DateKey) AS MARKET_PRICE
FROM CTE_RANK