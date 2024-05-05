--Problem Statement
--Write a SQL query to output the names of those students whose best friends got higher salary package than Student.  


Create Table Students_Tbl
(
Id int,
Student_Name Varchar(30)
)

Insert into Students_Tbl values(1,'Mark');
Insert into Students_Tbl values(2,'David');
Insert into Students_Tbl values(3,'John');
Insert into Students_Tbl values(4,'Albert');

Create Table Friends_Tbl(
Id int,
Friend_Id int
)

Insert into Friends_Tbl values(1,2);
Insert into Friends_Tbl values(2,3);
Insert into Friends_Tbl values(3,4);
Insert into Friends_Tbl values(4,1);

Create Table Package_Tbl
(Id int,
Salary Bigint )

Insert into Package_Tbl values(1,18);
Insert into Package_Tbl values(2,12);
Insert into Package_Tbl values(3,13);
Insert into Package_Tbl values(4,15);

SELECT * FROM Students_Tbl;
SELECT * FROM Friends_Tbl;
SELECT * FROM Package_Tbl;


WITH CTE_STD AS(
SELECT S.Id,S.Student_Name,F.Friend_Id,P.Salary FROM Students_Tbl AS S INNER JOIN Friends_Tbl F ON S.Id=F.Id
INNER JOIN Package_Tbl P ON S.Id=P.Id
),
CTE_FRIENDS AS (
    SELECT V.Student_Name AS 'STUDENT_NAME',
    V.Salary AS 'STUDENT_SAL',
    T.Student_Name AS 'BESTFRIEND_NAME',
    T.Salary AS 'BESTFRIEND_SAL'
        FROM CTE_STD AS V 
        INNER JOIN 
        CTE_STD AS T ON  V.Friend_Id =T.Id
)
SELECT * FROM CTE_FRIENDS
WHERE BESTFRIEND_SAL > STUDENT_SAL;


