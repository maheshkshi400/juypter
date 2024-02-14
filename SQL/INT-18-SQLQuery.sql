
DECLARE @input VARCHAR(50) = 'MAHESHKSHIRSAGAR';
DECLARE @output VARCHAR(50) = '';

WITH CTE AS (
    SELECT 1 AS IndexNum, SUBSTRING(@input, 1, 1) AS Letter
    UNION ALL
    SELECT IndexNum + 1, SUBSTRING(@input, IndexNum + 1, 1)
    FROM CTE
    WHERE IndexNum < LEN(@input)
)
SELECT @output = @output + Letter + ',' 
FROM CTE

-- Remove the last comma
SET @output = LEFT(@output, LEN(@output) - 1)

SELECT @output AS OutputString;
