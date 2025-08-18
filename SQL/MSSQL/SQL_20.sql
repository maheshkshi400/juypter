USE JOINS

Create Table Sales_Table(
Sales_Date Date,
Sales_Amount Bigint,
Currency Varchar(10)
)

INSERT INTO Sales_Table Values ('2020-01-01',500,'INR');
INSERT INTO Sales_Table Values ('2020-01-01',100,'GBP');
INSERT INTO Sales_Table Values ('2020-01-02',1000,'INR');
INSERT INTO Sales_Table Values ('2020-01-02',500,'GBP');
INSERT INTO Sales_Table Values ('2020-01-03',500,'INR');
INSERT INTO Sales_Table Values ('2020-01-17',200,'GBP');

CREATE TABLE [dbo].[ExchangeRate_Table](
 [Source_Currency] [varchar](10) ,
 [Target_Currency] [varchar](10),
 [Exchange_Rate] [float] ,
 [Effective_Start_Date] [date] 
) 

INSERT [dbo].[ExchangeRate_Table] VALUES ('INR','USD', 0.014,'2019-12-31')
INSERT [dbo].[ExchangeRate_Table] VALUES ('INR','USD', 0.015,'2020-01-02')
INSERT [dbo].[ExchangeRate_Table] VALUES ('GBP','USD', 1.32, '2019-12-20')
INSERT [dbo].[ExchangeRate_Table] VALUES ('GBP','USD', 1.3, '2020-01-01' )
INSERT [dbo].[ExchangeRate_Table] VALUES ('GBP','USD', 1.35, '2020-01-16')


SELECT * FROM Sales_Table;
SELECT * FROM ExchangeRate_Table;


--WRITE SQL TO GET TOTAL SALES AMOUNT  IN USD FOR EACH SALES DATE.

SELECT Sales_Date,SUM(Sales_Amount * Exchange_Rate) AS [TOTAL_SALES_AMTIN_USD]
FROM
(
(SELECT * FROM Sales_Table) A
INNER JOIN
(SELECT Source_Currency,Exchange_Rate,Effective_Start_Date,

ISNULL(LEAD(DATEADD(DAY,-1,Effective_Start_Date)) OVER 
(PARTITION BY Source_Currency ORDER BY Source_Currency),'9999-12-31') AS EFFECTIVE_END_DATE
FROM ExchangeRate_Table) B
ON A.Currency = B.Source_Currency AND A.Sales_Date BETWEEN B.Effective_Start_Date AND B.EFFECTIVE_END_DATE
) GROUP BY Sales_Date;

