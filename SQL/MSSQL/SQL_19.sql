Create Table BalanceTbl(
Balance int,
Dates Date
)

Insert into BalanceTbl Values(26000,'2020-01-01')
Insert into BalanceTbl Values(26000,'2020-01-02')
Insert into BalanceTbl Values(26000,'2020-01-03')
Insert into BalanceTbl Values(30000,'2020-01-04')
Insert into BalanceTbl Values(30000,'2020-01-05')
Insert into BalanceTbl Values(26000,'2020-01-06')
Insert into BalanceTbl Values(26000,'2020-01-07')
Insert into BalanceTbl Values(32000,'2020-01-08')
Insert into BalanceTbl Values(31000,'2020-01-09')


SELECT * FROM BalanceTbl;

--WRITE SQL TO DERIVE START_DATE AND END_DATE COLUMN WHEN THERE 
--IS CONTINIOUS AMOUNT IN BALNCE 

--SOLUTON BY USING LAG FUNCTION

WITH BALANCE_CTE AS 
(
        SELECT Balance,Dates,
        CASE WHEN LAG(Balance) OVER (ORDER BY Dates)=Balance THEN 0 ELSE 1 END AS TempSeq
        FROM BalanceTbl
),
SEQUENCE_CTE AS 
(
        SELECT Balance,Dates,
        SUM(TempSeq) OVER (ORDER BY Dates) AS sEQ --RUNNNG TOTAL
        FROM BALANCE_CTE
)
SELECT Balance,
MIN(Dates) AS START_DATE,
MAX(Dates) AS END_DATE 
FROM SEQUENCE_CTE
GROUP BY sEQ,Balance
ORDER BY sEQ;