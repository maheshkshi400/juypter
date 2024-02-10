SELECT * FROM Quaterly_sales


-- LAG FUNCTION 

SELECT 
Year,
QuarterName as QUARTER,
Sales AS CURRENTSALE,
LAG(Sales) OVER (partition BY Year ORDER BY QuarterName) 
AS PREVIOUS_QTR_SALE
FROM Quaterly_sales



-- LEAD FUNCTION


QuarterName as QUARTER,
Sales AS CURRENTSALE,
LEAD(Sales) OVER (partition BY Year ORDER BY QuarterName) 
AS PREVIOUS_QTR_SALE
FROM Quaterly_sales