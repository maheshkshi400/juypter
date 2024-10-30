Create Table StudentInfo_1
(
StudentName Varchar(30),
Subjects Varchar(30),
Marks Bigint
)

insert into StudentInfo_1 Values ('David', 'English', 85)
insert into StudentInfo_1 Values ('David', 'Maths', 90)
insert into StudentInfo_1 Values ('David', 'Science', 88)
insert into StudentInfo_1 Values ('John', 'English', 75)
insert into StudentInfo_1 Values ('John', 'Maths', 85)
insert into StudentInfo_1 Values ('John', 'Science', 80)
insert into StudentInfo_1 Values ('Tom', 'English', 83)
insert into StudentInfo_1 Values ('Tom', 'Maths', 80)
insert into StudentInfo_1 Values ('Tom', 'Science', 92)


SELECT * FROM StudentInfo_1;

-- PIVOT THE TABLE

SELECT StudentName,English,Maths,Science
FROM
(SELECT StudentName,Subjects,Marks FROM StudentInfo_1) AS SOURCE_TABLE
PIVOT
(
MAX(Marks)
FOR Subjects IN(English,Maths,Science)
) AS PVT