
USE OTHERS

Create Table Sample_Table(ID int);

Insert into Sample_Table Values (1);
Insert into Sample_Table Values(4);
Insert into Sample_Table Values(7);
Insert into Sample_Table Values(9);
Insert into Sample_Table Values(12);
Insert into Sample_Table Values(14);
Insert into Sample_Table Values(16);
Insert into Sample_Table Values(17);
Insert into Sample_Table Values(20);



SELECT * FROM Sample_Table;


--WIRTE A QUERY TO FIND MISSING VALUES FROM THE TABLE 


WITH CTE_A AS (
    SELECT MAX(ID) AS MAXIMUM FROM Sample_Table
),
CTE_B AS (
    SELECT MIN(ID) AS Id FROM Sample_Table  --BASE QUERY
    UNION ALL
    SELECT B.ID+1 FROM CTE_A A INNER JOIN CTE_B B ON B.ID < A.MAXIMUM
)
SELECT B.ID FROM CTE_B AS B WHERE ID NOT IN(SELECT ID FROM Sample_Table)

--LEFT JOIN Sample_Table AS C ON B.ID=C.ID WHERE C.ID IS NULL;


