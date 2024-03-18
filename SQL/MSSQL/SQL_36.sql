Create Table Stadium(
id int,
Visit_Date Date,
No_Of_People Bigint)

Insert into Stadium Values(1,'2018-01-01',10)
Insert into Stadium Values(2,'2018-01-02',110)
Insert into Stadium Values(3,'2018-01-03',150)
Insert into Stadium Values(4,'2018-01-04',98)
Insert into Stadium Values(5,'2018-01-05',140)
Insert into Stadium Values(6,'2018-01-06',1450)
Insert into Stadium Values(7,'2018-01-07',199)
Insert into Stadium Values(8,'2018-01-09',125)
Insert into Stadium Values(9,'2018-01-10',88)

SELECT * FROM Stadium;

--Problem Statement :- Stadium Table has three columns namely Id, Visit_Date and No_Of_People. 
--Write a SQL query to display the records with three or more rows with consecutive id’s and the 
--number of people is greater than or equal to 100. Return the result table ordered by Visit_Date as 
--shown in the below table.


WITH STEDIUM_CTE AS (
    SELECT id AS ID1,
    LEAD(id,1) OVER(ORDER BY id) as ID2,
    LEAD(id,2) OVER(ORDER BY id) as ID3
    FROM Stadium
    WHERE No_Of_People >= 100
),
CTE_TEMP AS(
    SELECT * FROM STEDIUM_CTE AS A
    LEFT JOIN Stadium AS B 
    ON (B.id=A.ID1 OR B.id=A.ID2 OR B.id=A.ID3)
    WHERE ID1+1=ID2 AND ID2+1=ID3
)
SELECT DISTINCT id,Visit_Date,No_Of_People FROM CTE_TEMP;