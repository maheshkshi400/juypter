Create Table SeatArrangement (
ID int,
StudentName Varchar(30)
)

Insert into SeatArrangement Values (1,'Emma')
Insert into SeatArrangement Values (2,'John')
Insert into SeatArrangement Values (3,'Sophia')
Insert into SeatArrangement Values (4,'Donald')
Insert into SeatArrangement Values (5,'Tom')

SELECT * from SeatArrangement;

--Problem Statement :- Ruby is a teacher in a school and she has created a table called SeatArrangement 
--which stores Student’s name and corresponding seat ids. Column id is continuous increment. Now Ruby wants 
--to change the seats for adjacent seats. Write a SQL query to output the result for Ruby.

SELECT * from SeatArrangement;

SELECT 
CASE WHEN ID % 2 <> 0 AND ID=(SELECT COUNT(*) AS TOT FROM SeatArrangement) THEN ID
    WHEN ID % 2 <> 0 THEN ID+1
    WHEN ID % 2 = 0 THEN ID-1 END AS  ID,
    StudentName
FROM SeatArrangement
ORDER BY ID;




