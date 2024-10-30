Create Table Transaction_Table
(
AccountNumber int,
TransactionTime DateTime,
TransactionID int,
Balance int
)


Insert into Transaction_Table Values (550,'2020-05-12 05:29:44.120' ,1001,2000)
Insert into Transaction_Table Values (550,'2020-05-15 10:29:25.630' ,1002,8000)
Insert into Transaction_Table Values (460,'2020-03-15 11:29:23.620' ,1003,9000)
Insert into Transaction_Table Values (460,'2020-04-30 11:29:57.320' ,1004,7000)
Insert into Transaction_Table Values (460,'2020-04-30 12:32:44.233' ,1005,5000)
Insert into Transaction_Table Values (640,'2020-02-18 06:29:34.420' ,1006,5000)
Insert into Transaction_Table Values (640,'2020-02-18 06:29:37.120' ,1007,9000)



--write an sql query to get most recent/latest balance  and transactionID for each Account number

--USING JOINS

SELECT A.AccountNumber, A.TransactionID, A.Balance, B.TransactionTime 
FROM Transaction_Table A
INNER JOIN (
    SELECT AccountNumber, MAX(TransactionTime) AS TransactionTime 
    FROM Transaction_Table 
    GROUP BY AccountNumber
) B
ON A.AccountNumber = B.AccountNumber AND A.TransactionTime = B.TransactionTime;


--BY USING CTE

WITH
    CTE_Tran AS
    (
        SELECT AccountNumber, TransactionID, Balance, TransactionTime
        FROM Transaction_Table
    ),
    CTE_MaxTran
    AS
    (
        SELECT AccountNumber, MAX(TransactionTime) AS MaxTransactionTime
        FROM Transaction_Table
        GROUP BY AccountNumber
    )
SELECT A.AccountNumber, A.TransactionID, A.Balance, B.MaxTransactionTime AS TransactionTime
FROM CTE_Tran A
    INNER JOIN CTE_MaxTran B ON A.AccountNumber = B.AccountNumber AND A.TransactionTime = B.MaxTransactionTime;


--by using subquery and IN operator

SELECT
    A.AccountNumber,
    A.TransactionID,
    A.Balance,
    A.TransactionTime
FROM
    Transaction_Table  A
WHERE 
    TransactionTime IN (
        SELECT
    MAX(TransactionTime) AS MaxTran
FROM
    Transaction_Table B
GROUP BY 
            AccountNumber
    );
