USE JOINS;

student_id	student_name	score
1	Alice	85
2	Bob	90
3	Carol	85
4	David	78
5	Emily	92

CREATE TABLE student_score(
student_id INT,
student_name VARCHAR(20),
score INT
);

insert into student_score VALUES (1,'Alice',85);
insert into student_score VALUES(2,'Bob',90);
insert into student_score VALUES(3,'Carol',85);
insert into student_score VALUES(4,'David',78);
insert into student_score VALUES(5,'Emily',92);

SELECT * FROM student_score

SELECT * FROM (SELECT student_score.*,DENSE_RANK() OVER(ORDER BY score DESC) AS RNK 
FROM student_score) RANKED_STUDENTS WHERE RNK <=5;


TABLE A	 TABLE B   innner JOIN
ID	 	ID          ID    ID
1	 	1           
1	 	2
2	 	3
3	 	3
4	 	Null
Null
Null

TABLE A	 TABLE B   right OUTER JOIN
ID	 	ID          ID          ID
1	 	1
1	 	2	 	
2	 	3
3	 	3
4	 	Null
Null	 	 
Null	 


CREATE TABLE A(
ID INT
);
CREATE TABLE B(
ID INT
);
insert into A VALUES(1);
insert into A VALUES(1);
insert into A VALUES(2);
insert into A VALUES(3);
insert into A VALUES(4);
insert into A VALUES(NULL);
insert into A VALUES(NULL);

INSERT INTO B VALUES(1);
INSERT INTO B VALUES(2);
INSERT INTO B VALUES(3);
INSERT INTO B VALUES(3);
INSERT INTO B VALUES(NULL);



--INNER JOIN
SELECT * FROM A;
SELECT * FROM B;
SELECT * FROM A INNER JOIN B ON A.ID = B.ID;

--RIGHT OUTER JOIN
SELECT * FROM A;
SELECT * FROM B;
SELECT * FROM A RIGHT OUTER JOIN B ON A.ID = B.ID;

--LEFT OUTER JOIN
SELECT * FROM A;
SELECT * FROM B;
SELECT * FROM A LEFT OUTER JOIN B ON A.ID = B.ID;

--full outer join
SELECT * FROM A;
SELECT * FROM B;
SELECT * FROM A FULL OUTER JOIN B ON A.ID = B.ID;

USE EMPLOYEES;
CREATE TABLE emp(
empid INT,
empname VARCHAR(20),
salary INT,
deptno INT
);
insert into emp VALUES(1, 'Alice', 5000, 10);
insert into emp VALUES(2, 'Bob', 6000, 20);
insert into emp VALUES(1, 'Alice', 5000, 10);
insert into emp VALUES(2, 'Bob', 6000, 20);
insert into emp VALUES(3, 'Emily', 9000, 30);
insert into emp VALUES(3, 'Emily', 9000, 30);
insert into emp VALUES(Null, 'David', 7000, 40);

SELECT * FROM emp


-- wether it's correct query or not that i don't know

select empid,count(empid) from emp group by empid having(count(empid)) > 1;
select empid,count(empid) from emp where deptno != 10 group by empid having(count(empid)) > 1;


use JOINS
CREATE TABLE emp_2(
empid INT,
empname VARCHAR(20),
salary INT,
deptno INT
);
insert into emp_2 VALUES(1, 'Arena', 5000, 10);
insert into emp_2 VALUES(2, 'Bob', 6000, 20);
insert into emp_2 VALUES(Null, 'Alice', 5000, 10);
insert into emp_2 VALUES(2, 'Bose', 6000, 20);
insert into emp_2 VALUES(3, 'Emily', 9000, 30);

-- interview question 
SELECT COUNT(*) FROM emp_2;  --expected count 5
SELECT COUNT(empid) FROM emp_2; --expected count 4



select GETDATE();

-- GET DAY 
SELECT DATENAME(WEEKDAY, GETDATE()) AS today_day_name;

--number of week
SELECT DATEPART(WEEK, GETDATE()) AS current_week_number;

-- Get the current date and time
SELECT GETDATE();

-- Add 30 days to the current date
SELECT DATEADD(day, 30, GETDATE());

-- Calculate the number of days between two dates
SELECT DATEDIFF(day, '2023-01-01', '2023-12-31');

-- Extract the year, month, and day from a date
SELECT YEAR(GETDATE()), MONTH(GETDATE()), DAY(GETDATE());

-- Convert a date string to a date data type
SELECT CONVERT(DATE, '2023-04-15');

-- Check if a value is a valid date
SELECT ISDATE('2023-04-15'); -- Returns 1 (true

USE JOINS

ID	Name
1	Anu
2	Raghav
3	Rahul
4	Rohan
5	Rajesh
USE JOINS
CREATE TABLE emp_3(
ID INT,
Name VARCHAR(20)
);

Project_id	P_Name	ID
1	A	1
2	B	2
3	C	1
4	D	3

CREATE TABLE project(
project_id INT,
p_name VARCHAR(20),
id INT
);

INSERT INTO emp_3 VALUES(1, 'Anu');
INSERT INTO emp_3 VALUES(2, 'Raghav');
INSERT INTO emp_3 VALUES(3, 'Rahul');
INSERT INTO emp_3 VALUES(4, 'Rohan');
INSERT INTO emp_3 VALUES(5, 'Rajesh');
INSERT INTO project VALUES(1, 'A', 1);
INSERT INTO project VALUES(2, 'B', 2);
INSERT INTO project VALUES(3, 'C', 1);
INSERT INTO project VALUES(4, 'D', 3);

SELECT * FROM emp_3;
SELECT * FROM project;

SELECT e.id,e.name,p.project_id FROM emp_3 e LEFT OUTER JOIN project p ON e.id = p.id 
where p.project_id is NULL;


























