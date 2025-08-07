
use STUDENTS

CREATE TABLE Student(
[Student_Name]  varchar(30),
[Total_Marks]  int ,
[Year]  int)

INSERT INTO Student VALUES('Rahul',90,2010)
INSERT INTO Student VALUES('Sanjay',80,2010)
INSERT INTO Student VALUES('Mohan',70,2010)
INSERT INTO Student VALUES('Rahul',90,2011)
INSERT INTO Student VALUES('Sanjay',85,2011)
INSERT INTO Student VALUES('Mohan',65,2011)
INSERT INTO Student VALUES('Rahul',80,2012)
INSERT INTO Student VALUES('Sanjay',80,2012)
INSERT INTO Student VALUES('Mohan',90,2012)


SELECT * FROM Student

use OTHERS
SELECT Student_Name, Total_Marks, Year, Prev_yrs_Marks
FROM
    (
    SELECT Student_Name, Total_Marks, Year, Prev_yrs_Marks,
        CASE WHEN Total_Marks >= Prev_yrs_Marks THEN 1 ELSE 0 END AS Flag
    FROM
        (
        SELECT Student_Name, Total_Marks, Year,
            LAG(Total_Marks) OVER (PARTITION BY Student_Name ORDER BY Year) AS Prev_yrs_Marks
        FROM Student
    ) A
) B
WHERE Flag = 1
