

USE SALES;

Create Table Inventory(
ProdName Varchar(20),
ProductCode Varchar(15),
Quantity int,
InventoryDate Date)



Insert Into Inventory values('Keyboard','K1001',20,'2020-03-01');
Insert Into Inventory values('Keyboard','K1001',30,'2020-03-02');
Insert Into Inventory values('Keyboard','K1001',10,'2020-03-03');
Insert Into Inventory values('Keyboard','K1001',40,'2020-03-04');
Insert Into Inventory values('Laptop','L1002',100,'2020-03-01');
Insert Into Inventory values('Laptop','L1002',60,'2020-03-02');
Insert Into Inventory values('Laptop','L1002',40,'2020-03-03');
Insert Into Inventory values('Monitor','M5005',30,'2020-03-01');
Insert Into Inventory values('Monitor','M5005',20,'2020-03-02');


--write an sql query to get running total or cumulative sum of quantity for each product code

SELECT * FROM dbo.Inventory

SELECT ProdName,ProductCode,Quantity,InventoryDate,SUM(Quantity) OVER 
(PARTITION BY ProductCode ORDER BY InventoryDate) AS RUNIING_TOTAL FROM Inventory;