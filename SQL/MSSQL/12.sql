use students


create table std1(id int,studentname nvarchar(15),marks int,schoolid int);


INSERT INTO std1 VALUES(1,'shankar',78,2)
INSERT INTO std1 VALUES(2,'sarika',65,4)
INSERT INTO std1 VALUES(3,'mahadev',46,3)

INSERT INTO std1 VALUES(4,'karuna',64,1)
INSERT INTO std1 VALUES(5,'amrapali',72,3)
INSERT INTO std1 VALUES(6,'amita',32,4)

INSERT INTO std1 VALUES(7,'shivani',67,2)
INSERT INTO std1 VALUES(8,'kamini',85,3)
INSERT INTO std1 VALUES(9,'parul',95,2)



create table school(schoolid int,schoolname varchar(20),loc varchar(20))

insert into school values(1,'annant','pune')
insert into school values(2,'new english era','banglore')
insert into school values(3,'savitribai phule','delhi')
insert into school values(4,'lokmanya tilak','kolkatta')

SELECT * from std1
SELECT * from school

drop table school;



SELECT s.id, s.studentname, d.schoolname,s.marks
FROM std1 s 
INNER JOIN school d ON s.schoolid = d.schoolid 
WHERE d.loc = 'banglore' 
AND marks = (SELECT MAX(marks) FROM std1);
