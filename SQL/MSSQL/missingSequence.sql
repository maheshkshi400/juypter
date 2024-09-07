
USE SALES;
CREATE TABLE ORDER2 (ORDERID INT);


INSERT INTO ORDER2 VALUES (11);
INSERT INTO ORDER2 VALUES (2);
INSERT INTO ORDER2 VALUES (3);
INSERT INTO ORDER2 VALUES (4);
INSERT INTO ORDER2 VALUES (5);
INSERT INTO ORDER2 VALUES (7);
INSERT INTO ORDER2 VALUES (9);
INSERT INTO ORDER2 VALUES (10);
INSERT INTO ORDER2 VALUES (15);


-- Use a recursive common table expression (CTE) to find missing values in the sequence
WITH RecursiveSequence
AS (SELECT MIN(OrderID) AS OrderID,
           MIN(OrderID) AS StartRange,
           MAX(OrderID) AS EndRange
    FROM ORDER2
    UNION ALL
    SELECT ORDERID + 1,
           StartRange,
           EndRange
    FROM RecursiveSequence
    WHERE OrderID < EndRange)
    
-- Select the missing values
SELECT rs.OrderID AS MissingOrderID
FROM RecursiveSequence rs
    LEFT JOIN ORDER2 o
        ON rs.ORDERID = o.ORDERID
WHERE o.ORDERID IS NULL
-- Set MAXRECURSION to 0 to avoid recursion limit
OPTION (MAXRECURSION 0);
