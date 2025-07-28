 USE OTHERS
CREATE TABLE [dbo].[Transaction_Tbl](
 [CustID] [int] ,
 [TranID] [int] ,
 [TranAmt] [float] ,
 [TranDate] [date] 
) 

INSERT [dbo].[Transaction_Tbl] ([CustID], [TranID], [TranAmt], [TranDate]) VALUES (1001, 20001, 10000, CAST('2020-04-25' AS Date))
INSERT [dbo].[Transaction_Tbl] ([CustID], [TranID], [TranAmt], [TranDate]) VALUES (1001, 20002, 15000, CAST('2020-04-25' AS Date))
INSERT [dbo].[Transaction_Tbl] ([CustID], [TranID], [TranAmt], [TranDate]) VALUES (1001, 20003, 80000, CAST('2020-04-25' AS Date))
INSERT [dbo].[Transaction_Tbl] ([CustID], [TranID], [TranAmt], [TranDate]) VALUES (1001, 20004, 20000, CAST('2020-04-25' AS Date))
INSERT [dbo].[Transaction_Tbl] ([CustID], [TranID], [TranAmt], [TranDate]) VALUES (1002, 30001, 7000, CAST('2020-04-25' AS Date))
INSERT [dbo].[Transaction_Tbl] ([CustID], [TranID], [TranAmt], [TranDate]) VALUES (1002, 30002, 15000, CAST('2020-04-25' AS Date))
INSERT [dbo].[Transaction_Tbl] ([CustID], [TranID], [TranAmt], [TranDate]) VALUES (1002, 30003, 22000, CAST('2020-04-25' AS Date))

--USING SUBQUERY

SELECT A.CustID,TranID,TranAmt,MaxTranAmt,(TranAmt/MaxTranAmt) as Ratio,TranDate FROM Transaction_Tbl A
INNER JOIN
(SELECT CustID,MAX(TranAmt) AS MaxTranAmt FROM Transaction_Tbl GROUP BY CustID) B ON A.CustID=B.CustID

--BY USING CTE

WITH CTE AS (
    SELECT CustID, TranID, TranAmt 
    FROM Transaction_Tbl
),
CTE_MaxTran AS (
    SELECT CustID, MAX(TranAmt) AS MaxTranAmt 
    FROM Transaction_Tbl 
    GROUP BY CustID
)
SELECT 
    A.CustID,
    A.TranID,
    A.TranAmt,
    B.MaxTranAmt,
    (A.TranAmt / B.MaxTranAmt) AS Ratio 
FROM 
    CTE A 
INNER JOIN 
    CTE_MaxTran B ON A.CustID = B.CustID;

