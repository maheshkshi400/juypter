Create Table SampleTable
(
Start_Range Bigint,
End_Range Bigint
);
Insert into SampleTable Values (1,4)
Insert into SampleTable Values (6,6)
Insert into SampleTable Values (8,9)
Insert into SampleTable Values (11,13)
Insert into SampleTable Values (15,15)

SELECT * FROM SampleTable;

--write a sequence in the range  of the input 

WITH CTE_A AS (
    SELECT MAX(End_Range) AS LAST_VALUE FROM SampleTable
),
CTE_B AS (
    SELECT MIN(Start_Range) AS id FROM SampleTable -- BASE QUERY
    UNION ALL
    SELECT id + 1 FROM CTE_B
    JOIN CTE_A ON id < CTE_A.LAST_VALUE
)

SELECT id FROM CTE_B, SampleTable
WHERE id >= Start_Range AND id < End_Range;

