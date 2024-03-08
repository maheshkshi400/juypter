Create Table Sample_1
(
X Bigint,
Y Bigint,
Z Bigint)

Insert into Sample_1 Values (200,400,1);
Insert into Sample_1 Values (200,400,2);
Insert into Sample_1 Values (200,400,3);
Insert into Sample_1 Values (10000,60000,1);
Insert into Sample_1 Values (500,600,1);
Insert into Sample_1 Values (500,600,2);
Insert into Sample_1 Values (20000,80000,1);

SELECT * FROM Sample_1;

WITH CTE_A AS
(
    SELECT X,Y,Z,COUNT(*) OVER (PARTITION BY X,Y ORDER BY X) AS CNT FROM Sample_1
)
SELECT X,Y,Z  FROM CTE_A
WHERE CNT >1;