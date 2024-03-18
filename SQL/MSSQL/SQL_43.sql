--Problem Statement : A group of students participated in a course which has 4 subjects . 
--In order to complete the course,  students must fulfill below criteria :-
 --  * Student should score at least 40 marks in each subject 
 --  * Student  must secure at least 50% marks overall (Assuming total 100)
--Assuming 100 marks as the maximum achievable marks for a given subject, 
--Write a SQL query to print the result in the below format:


Create Table Exam_Score
(
StudentId int,
SubjectID int,
Marks int
)

Insert Into Exam_Score values(101,1,60);
Insert Into Exam_Score values(101,2,71);
Insert Into Exam_Score values(101,3,65);
Insert Into Exam_Score values(101,4,60);
Insert Into Exam_Score values(102,1,40);
Insert Into Exam_Score values(102,2,55);
Insert Into Exam_Score values(102,3,64);
Insert Into Exam_Score values(102,4,50);
Insert Into Exam_Score values(103,1,45);
Insert Into Exam_Score values(103,2,39);
Insert Into Exam_Score values(103,3,60);
Insert Into Exam_Score values(103,4,65);
Insert Into Exam_Score values(104,1,83);
Insert Into Exam_Score values(104,2,77);
Insert Into Exam_Score values(104,3,91);
Insert Into Exam_Score values(104,4,74);
Insert Into Exam_Score values(105,1,83);
Insert Into Exam_Score values(105,2,77);
Insert Into Exam_Score values(105,4,74);


SELECT StudentId,
SUM(CASE WHEN SubjectID=1 THEN Marks ELSE 0 END) AS 'SUBJECT1',
SUM(CASE WHEN SubjectID=2 THEN Marks ELSE 0 END) AS 'SUBJECT2',
SUM(CASE WHEN SubjectID=3 THEN Marks ELSE 0 END) AS 'SUBJECT3',
SUM(CASE WHEN SubjectID=4 THEN Marks ELSE 0 END) AS 'SUBJECT4',
SUM(Marks) AS 'TOTAL_MARKS',
CASE WHEN MIN(Marks) >= 40 AND SUM(Marks) >= 200 AND COUNT(Marks) = 4
THEN 'PASS' ELSE 'FAIL' END AS STATUS
FROM Exam_Score
GROUP BY StudentId;