Create Table Sales_1
(
Id int,
Product Varchar(20),
Sales Bigint
);

Insert into Sales_1 values(1001,'Keyboard',20)
Insert into Sales_1 values(1002,'Keyboard',25)
Insert into Sales_1 values(1003,'Laptop',30)
Insert into Sales_1 values(1004,'Laptop',35)
Insert into Sales_1 values(1005,'Laptop',40)
Insert into Sales_1 values(1006,'Monitor',45)
Insert into Sales_1 values(1007,'WebCam',50)
Insert into Sales_1 values(1008,'WebCam',55)

SELECT * FROM Sales_1;


--SOLUTION FOR OUTPUT 1

SELECT Id,Product,
MIN(Sales) OVER (PARTITION BY Product ORDER BY Id) AS SALES_2
FROM Sales_1;


--SOULUTION FOR OUTPUT 2

SELECT Id,Product,
SUM(Sales) OVER (PARTITION BY Product ORDER BY Id) AS SALES_2
FROM Sales_1;
