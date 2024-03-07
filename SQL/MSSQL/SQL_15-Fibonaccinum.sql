-- write an sql query to print all the fibonacci numbers upto first 100

WITH  Fibonacci AS 
(
    SELECT 0 AS FirstN,1 AS SecondN, 1 AS step
    UNION ALL
    SELECT SecondN,SecondN+FirstN,step+1
    FROM Fibonacci 
    WHERE step < 25
)

SELECT STRING_AGG(FirstN,',') WITHIN GROUP (ORDER BY FirstN) 
AS fibonacci_numbers FROM Fibonacci;







