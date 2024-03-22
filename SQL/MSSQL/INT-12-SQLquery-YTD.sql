

CREATE DATABASE SALES

USE SALES;

-- Create the SalesOrders table

CREATE TABLE SalesOrders (
    salesordernumber INT,
    order_date DATE,
    total_due DECIMAL(10, 4)
);



   -- Step 2: Insert 25 rows into the table

INSERT INTO SalesOrders  VALUES(1001,'2023-01-01', 250.2700)
INSERT INTO SalesOrders  VALUES(1002, '2023-01-02', 350.0000)
INSERT INTO SalesOrders  VALUES(1003, '2023-01-03', 450.0000)

INSERT INTO SalesOrders  VALUES(1004, '2023-01-04', 550.0000) 
INSERT INTO SalesOrders  VALUES(1005, '2023-01-05', 650.0000)
INSERT INTO SalesOrders  VALUES(1006, '2023-01-06', 750.0000)

INSERT INTO SalesOrders  VALUES(1007, '2023-01-07', 850.3000)
INSERT INTO SalesOrders  VALUES(1008, '2023-01-08', 950.0000)
INSERT INTO SalesOrders  VALUES(1009, '2023-01-09', 1050.0000)

INSERT INTO SalesOrders  VALUES(1010, '2023-01-10', 1150.0000)  
INSERT INTO SalesOrders  VALUES(1011, '2023-01-11', 1250.1450)
INSERT INTO SalesOrders  VALUES(1012, '2023-01-12', 1350.1560)

INSERT INTO SalesOrders  VALUES(1013, '2023-01-13', 1450.9000) 
INSERT INTO SalesOrders  VALUES(1014, '2023-01-14', 1550.0000)
INSERT INTO SalesOrders  VALUES(1015, '2023-01-15', 1650.0000)

INSERT INTO SalesOrders  VALUES (1016, '2023-01-16', 1750.0000)
INSERT INTO SalesOrders  VALUES(1017, '2023-01-17', 1850.0000)
INSERT INTO SalesOrders  VALUES(1018, '2023-01-18', 1950.0000)

INSERT INTO SalesOrders  VALUES (1019, '2023-01-19', 2050.7777)  
INSERT INTO SalesOrders  VALUES (1020, '2023-01-20', 2150.0000)
INSERT INTO SalesOrders  VALUES(1021, '2023-01-21', 2250.0000)

INSERT INTO SalesOrders  VALUES (1022, '2023-01-22', 2350.0000)  
INSERT INTO SalesOrders  VALUES(1023, '2023-01-23', 2450.3570)
INSERT INTO SalesOrders  VALUES(1024, '2023-01-24', 2550.9000)

INSERT INTO SalesOrders  VALUES(1025, '2023-01-25', 2650.0000)    
INSERT INTO SalesOrders  VALUES(1026, '2024-02-01', 270.2700)  -- Year 2024
INSERT INTO SalesOrders  VALUES(1027, '2024-02-02', 370.0000)

INSERT INTO SalesOrders  VALUES(1028, '2024-02-03', 470.0000)  
INSERT INTO SalesOrders  VALUES(1029, '2024-02-04', 570.0000)
INSERT INTO SalesOrders  VALUES(1030, '2024-02-05', 670.0000) -- Duplicate records
    




--cumulative sum of total_due

SELECT
    salesordernumber,
    order_date,
    total_due,
    SUM(total_due) OVER (PARTITION BY YEAR(order_date) ORDER BY order_date) AS YTD,
    SUM(total_due) OVER (PARTITION BY YEAR(order_date) ORDER BY order_date ROWS BETWEEN UNBOUNDED PRECEDING AND 
    CURRENT ROW) AS YTD_FRAME
FROM
    SalesOrders;




SELECT  salesordernumber,order_date,total_due,
SUM(total_due) OVER (PARTITION BY YEAR(order_date) ORDER BY order_date) AS YTD,
SUM(total_due) OVER (PARTITION BY YEAR(order_date) ORDER BY order_date ROWS 
BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS YTD_FRAME,
SUM(total_due) OVER (PARTITION BY YEAR(order_date),MONTH(order_date) ORDER BY order_date) AS YTD,
SUM(total_due) OVER (PARTITION BY YEAR(order_date) ORDER BY order_date ROWS 
BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS MTD_FRAME
FROM SalesOrders;



SELECT  salesordernumber,order_date,total_due,
SUM(total_due) OVER (PARTITION BY YEAR(order_date) ORDER BY order_date ROWS 
BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS YTD_FRAME,
SUM(total_due) OVER (PARTITION BY YEAR(order_date) ORDER BY order_date ROWS 
BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS MTD_FRAME,
SUM(total_due) OVER (PARTITION BY YEAR(order_date) ORDER BY order_date ROWS 
BETWEEN 2 PRECEDING AND CURRENT ROW) AS MTD_3
FROM SalesOrders;


-- METHOD 2 bY USINGG FIRST VALUE AND LAST VALUE

SELECT  
    salesordernumber,
    order_date,
    total_due,
    FIRST_VALUE(salesordernumber) OVER (PARTITION BY YEAR(order_date) ORDER BY order_date) AS 
    FIRST_ORDER,
    FIRST_VALUE(salesordernumber) OVER (PARTITION BY YEAR(order_date) ORDER BY order_date ROWS 
    BETWEEN 2 PRECEDING AND CURRENT ROW) AS FIRST_ORDER
FROM 
    SalesOrders;



-- BY USING LAST VALUE 

SELECT  
    salesordernumber,
    order_date,
    total_due,
    FIRST_VALUE(salesordernumber) OVER (PARTITION BY YEAR(order_date) ORDER BY order_date) AS 
    FIRST_ORDER,
    FIRST_VALUE(salesordernumber) OVER (PARTITION BY YEAR(order_date) ORDER BY order_date ROWS 
    BETWEEN 2 PRECEDING AND CURRENT ROW) AS FIRST_ORDER_FRM,
    LAST_VALUE(salesordernumber) OVER (PARTITION BY YEAR(order_date) ORDER BY order_date) AS 
    LAST_ORDER,
    LAST_VALUE(salesordernumber) OVER (PARTITION BY YEAR(order_date) ORDER BY order_date ROWS 
    BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING) AS LAST_ORDER_FRM
FROM 
    SalesOrders;





    
    
   
   
   
   
    
   
    
    

