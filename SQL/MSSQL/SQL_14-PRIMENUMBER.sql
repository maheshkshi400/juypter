-- write sql quries to print all the prime numbers in between  1 to 100

WITH Prime AS (
    SELECT 2 AS PrimeNum      --BASE ANCHOR QUERY
    UNION ALL
    SELECT PrimeNum + 1      --RECURSIVE PART
    FROM Prime A
    WHERE A.PrimeNum < 100
)

SELECT PrimeNum  FROM Prime A    
    WHERE NOT EXISTS (
        SELECT 1
        FROM Prime B 
        WHERE A.PrimeNum != B.PrimeNum
        AND A.PrimeNum % B.PrimeNum = 0
        
    )


