create table OrderStatus
(
Quote_Id varchar(5),
Order_Id varchar(5),
Order_Status Varchar(20)
)

Insert into OrderStatus Values ('A','A1','Delivered') 
Insert into OrderStatus Values ('A','A2','Delivered') 
Insert into OrderStatus Values ('A','A3','Delivered') 
Insert into OrderStatus Values ('B','B1','Submitted') 
Insert into OrderStatus Values ('B','B2','Delivered') 
Insert into OrderStatus Values ('B','B3','Created') 
Insert into OrderStatus Values ('C','C1','Submitted') 
Insert into OrderStatus Values ('C','C2','Created') 
Insert into OrderStatus Values ('C','C3','Submitted') 
Insert into OrderStatus Values ('D','D1','Created') 


SELECT * FROM OrderStatus;


-- BY USING CTE

WITH CTE_ORDER AS 
(
SELECT DISTINCT Quote_Id,Order_Status FROM OrderStatus
),
CTE_LIST AS
(
SELECT Quote_Id,STRING_AGG(Order_Status,',') AS LIST_STATUS FROM CTE_ORDER
GROUP BY Quote_Id
)
SELECT Quote_Id,CASE WHEN CHARINDEX('Delivered',LIST_STATUS)= 1 AND CHARINDEX(',',LIST_STATUS)=0 THEN 'COMPLETE'
                    WHEN CHARINDEX('Delivered',LIST_STATUS) > 1 AND CHARINDEX(',',LIST_STATUS) > 0 THEN 'IN DELIVERY'
                    WHEN CHARINDEX('Submitted',LIST_STATUS) > 1 AND CHARINDEX(',',LIST_STATUS) > 0 AND CHARINDEX('Delivered',LIST_STATUS)=0 THEN 'AWAITING FOR SUBMISSION'
ELSE 'AWATING FOR ENTRY' END AS QUOTE_STATUS
FROM CTE_LIST





