
--Problem Statement :-   ITEM Table  has two columns namely ItemName and TotalQuantity. 
--Write a SQL query  to duplicate the rows based on total count in output table by adding 
--two new columns ID and CatID


Create Table Item(
ItemName Varchar(30),
TotalQuantity int
)
Insert into Item Values('Apple',2)
Insert into Item Values('Orange',3)


SELECT * from Item;

WITH CTE_A (ItemName,CatID,TotalQuantity) AS 
(SELECT ItemName,1,TotalQuantity FROM Item
UNION ALL
SELECT ItemName,CatID+1,TotalQuantity FROM CTE_A
WHERE CatID+1 <= TotalQuantity
)
SELECT ROW_NUMBER() OVER (ORDER BY ItemName) AS ID,ItemName,
CatID,TotalQuantity FROM CTE_A ORDER BY ItemName;