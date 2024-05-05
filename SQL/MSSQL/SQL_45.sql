--Problem Statement :- For the 2021 academic year, students have appeared in the SSC exam. 
--Write a SQL query to calculate the percentage of results using the best of the five rule 
--i.e. You must take the top five grades for each student and calculate the percentage.


create table SSC_Exam (
Id int,
English int,
Maths int,
Science int,
Geography int,
History int,
Sanskrit int)

Insert into SSC_Exam Values (1,85,99,92,86,86,99)
Insert into SSC_Exam Values (2,81,82,83,86,95,96)
Insert into SSC_Exam Values (3,76,55,76,76,56,76)
Insert into SSC_Exam Values (4,84,84,84,84,84,84)
Insert into SSC_Exam Values (5,83,99,45,88,75,90)

SELECT * FROM SSC_Exam;

WITH CTE_S1 AS (
    SELECT * 
    FROM (
        SELECT Id, English, Maths, Science, Geography, History, Sanskrit 
        FROM SSC_Exam
    ) AS T
    UNPIVOT
    (
        MARKS
        FOR SUBJECTS IN (English, Maths, Science, Geography, History, Sanskrit)
    ) UNPVT
),
CTE_S2 AS (
    SELECT Id, MARKS, ROW_NUMBER() OVER (PARTITION BY Id ORDER BY MARKS) AS RANK 
    FROM CTE_S1
),
CTE_S3 AS (
    SELECT Id, CAST(SUM(MARKS) / 500.0 AS float) * 100 AS PERCENTAGE 
    FROM CTE_S2 
    WHERE RANK <= 5 
    GROUP BY Id
)
SELECT 
    S.Id, 
    English, 
    Maths, 
    Science, 
    Geography, 
    History, 
    Sanskrit,
    PERCENTAGE 
FROM 
    CTE_S3 AS C 
INNER JOIN 
    SSC_Exam S ON C.Id = S.Id;


  
