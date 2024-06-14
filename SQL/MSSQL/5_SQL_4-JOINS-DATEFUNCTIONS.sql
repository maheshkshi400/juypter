use JOINS
create table student_3(id int,name varchar(20),age int,salary money );

DROP TABLE student_3;

TRUNCATE TABLE student_3; 


INSERT INTO STUDENT_3 VALUES(1,'Rahul',23,25000);
INSERT INTO STUDENT_3 VALUES(2, 'Raj', 24, 30000);
INSERT INTO STUDENT_3 VALUES(3, 'Ramesh', 25, 35000);
INSERT INTO STUDENT_3 VALUES(4, 'Rakesh', 26, 40000);
INSERT INTO STUDENT_3 VALUES(5, 'Rajesh', 27, 45000);

select * from student_3;



select * from student_3;


update student_3 set name = 'Sarvesh', fees = '7000' where id = 4;

select * from student_3;
DELETE FROM student_3 WHERE id = 5;

DELETE FROM student_3;

COMMIT;


INSERT INTO STUDENT_3 VALUES(1,'Rahul',23,25000);
INSERT INTO STUDENT_3 VALUES(2, 'Raj', 24, 30000);
INSERT INTO STUDENT_3 VALUES(3, 'Ramesh', 25, 35000);
INSERT INTO STUDENT_3 VALUES(4, 'Rakesh', 26, 40000);
INSERT INTO STUDENT_3 VALUES(5, 'Rajesh', 27, 45000);
INSERT INTO STUDENT_3 VALUES(5, 'Rajesh', 27, 45000);

SELECT  * FROM student_3 ;


SELECT *  FROM STUDENT_3 ORDER BY fees asc;

--duplicate query 
select id,count(id) from student_3 group by id having(count(id)) >1;


--add single colum in table
ALTER TABLE student_3
ADD dob date;
select * from  student_4;

update student_3 set dob='13-Mar-2011' where id =1;
update student_3 set dob='15-Mar-2013' where id =2;
update student_3 set dob='15-Mar-2013' where id =3;
update student_3 set dob='15-Mar-2013' where id =4;
update student_3 set dob='15-Mar-2013' where id =5;


-- add multiple columns  
alter table student_3 add dob date,location varchar(20);

--drop colmn
ALTER TABLE student_3
drop column dob;

--sysntax of rename
EXEC sp_rename 'table_name.old_column_name', 'new_column_name', 'COLUMN';

EXEC sp_rename 'student_3.dob','dob1','COLUMN';


--rename table
EXEC sp_rename 'student_3','student_4';


--AGGREGATE FNCTIONS
SELECT SUM(salary) FROM student_4;

--count function
SELECT COUNT(id) from student_4;

select  count(*) from student_4;
--Insert null value in id check count
insert into student_4 values(null, 'Reva', 23, 25000);

--MIN FUNCTION 
SELECT MIN(salary) FROM student_4;

--MAX FUNCTION
SELECT MAX(salary) as 'Max_sal' FROM student_4;

--round command
select round(123.456,2) as round_value;
--add primary key on cloumn
alter table student_3 add primary key(id);

--check primary key
select * from student_3;



CREATE TABLE DEPT(DEPTNO INT PRIMARY
KEY, DNAME VARCHAR(10), LOC VARCHAR(10));


insert into DEPT VALUES(10, 'ACCOUNTING', 'NEW YORK');
insert into DEPT VALUES(20, 'RESEARCH', 'DALLAS');
insert into DEPT VALUES(30, 'SALES', 'CHICAGO');
insert into DEPT VALUES(40, 'OPERATIONS', 'BOSTON');

SELECT * FROM DEPT;

--AGGREGATE FUNCTIONS
SELECT COUNT(*) FROM DEPT;
SELECT SUM(salary) FROM student_3;
SELECT MIN(salry) FROM student_3;
SELECT MAX(salary) FROM student_3;
SELECT round(123.456, 2) as round_value;


--DATENAME FUNCTIONS
SELECT GETDATE();

SELECT DATENAME(YEAR, GETDATE())        AS 'Year';        
SELECT DATENAME(QUARTER, GETDATE())     AS 'Quarter';     
SELECT DATENAME(MONTH, GETDATE())       AS 'Month Name';       
SELECT DATENAME(DAYOFYEAR, GETDATE())   AS 'DayOfYear';   
SELECT DATENAME(DAY, GETDATE())         AS 'Day';         
SELECT DATENAME(WEEK, GETDATE())        AS 'Week';        
SELECT DATENAME(WEEKDAY, GETDATE())     AS 'Day of the Week';     
SELECT DATENAME(HOUR, GETDATE())        AS 'Hour';        
SELECT DATENAME(MINUTE, GETDATE())      AS 'Minute';      
SELECT DATENAME(SECOND, GETDATE())      AS 'Second';      
SELECT DATENAME(MILLISECOND, GETDATE()) AS 'MilliSecond'; 
SELECT DATENAME(MICROSECOND, GETDATE()) AS 'MicroSecond'; 
SELECT DATENAME(NANOSECOND, GETDATE())  AS 'NanoSecond';  
SELECT DATENAME(ISO_WEEK, GETDATE())    AS 'Week'; 


-- DATEPART FUNCTIONS

SELECT DATEPART(YEAR, GETDATE())        AS 'Year';        
SELECT DATEPART(QUARTER, GETDATE())     AS 'Quarter';     
SELECT DATEPART(MONTH, GETDATE())       AS 'Month';       
SELECT DATEPART(DAYOFYEAR, GETDATE())   AS 'DayOfYear';   
SELECT DATEPART(DAY, GETDATE())         AS 'Day';         
SELECT DATEPART(WEEK, GETDATE())        AS 'Week';        
SELECT DATEPART(WEEKDAY, GETDATE())     AS 'WeekDay';     
SELECT DATEPART(HOUR, GETDATE())        AS 'Hour';        
SELECT DATEPART(MINUTE, GETDATE())      AS 'Minute';      
SELECT DATEPART(SECOND, GETDATE())      AS 'Second';      
SELECT DATEPART(MILLISECOND, GETDATE()) AS 'MilliSecond'; 
SELECT DATEPART(MICROSECOND, GETDATE()) AS 'MicroSecond'; 
SELECT DATEPART(NANOSECOND, GETDATE())  AS 'NanoSecond';  
SELECT DATEPART(ISO_WEEK, GETDATE())    AS 'Week';


SELECT DAY(GETDATE())   AS 'Day';                            
SELECT MONTH(GETDATE()) AS 'Month';                       
SELECT YEAR(GETDATE())  AS 'Year';  


--Date and Time Difference
SELECT DATEDIFF(DAY, 2019-31-01, 2019-01-01)      AS 'DateDif'    -- returns int
SELECT DATEDIFF_BIG(DAY, 2019-31-01, 2019-01-01)  AS 'DateDifBig' -- returns bigint


-- modify date and time
SELECT DATEADD(DAY,1,GETDATE())        AS 'DatePlus1';          -- returns data type of the date argument
SELECT EOMONTH(GETDATE(),1)            AS 'LastDayOfNextMonth'; -- returns start_date argument or date
SELECT SWITCHOFFSET(GETDATE(), -6)     AS 'NowMinus6';          -- returns datetimeoffset
SELECT TODATETIMEOFFSET(GETDATE(), -2) AS 'Offset';             -- returns datetimeoffset


-- validate date and time - returns int
SELECT ISDATE(GETDATE()) AS 'IsDate'; 
SELECT ISDATE(NULL) AS 'IsDate';

-- date and time from parts
SELECT DATEFROMPARTS(2019,1,1)                         AS 'Date';          -- returns date
SELECT DATETIME2FROMPARTS(2019,1,1,6,0,0,0,1)          AS 'DateTime2';     -- returns datetime2
SELECT DATETIMEFROMPARTS(2019,1,1,6,0,0,0)             AS 'DateTime';      -- returns datetime
SELECT DATETIMEOFFSETFROMPARTS(2019,1,1,6,0,0,0,0,0,0) AS 'Offset';        -- returns datetimeoffset
SELECT SMALLDATETIMEFROMPARTS(2019,1,1,6,0)            AS 'SmallDateTime'; -- returns smalldatetime
SELECT TIMEFROMPARTS(6,0,0,0,0)                        AS 'Time';          -- returns time


--DATEADD FUNCTION

SELECT DATEADD(DAY,1,'2021-01-01') as 'Add 1 Day';
SELECT DATEADD(WEEK,1,'2021-01-01') as 'Add 1 Week';
SELECT DATEADD(MONTH,1,'2021-01-01') as 'Add 1 Month';
SELECT DATEADD(YEAR,1,'2021-01-01') as 'Add 1 Year';

--DATEDIFF FUNCTIONS

SELECT DATEDIFF(DAY,'2021-01-01','2021-02-01') as 'Number of Days in January';
SELECT DATEDIFF(WEEK,'2021-01-01','2022-01-01') as 'Weeks in the Year';
SELECT DATEDIFF(MONTH,'2021-01-01','2022-01-01') as 'Months in the Year';
SELECT DATEDIFF(YEAR,'1900-01-01',GETDATE()) as 'Years Since 1900';


--DATE CONVERT FUNCTIONS
SELECT CONVERT(CHAR(19), GETDATE(), 100) as 'Mon dd YYYY hh:mmAM';
 
SELECT CONVERT(CHAR(8), GETDATE(), 112) as 'YYYYMMDD';
 
SELECT CONVERT(CHAR(20), GETDATE(), 22) as 'mm/dd/yy hh:mi:ss AM';
 
SELECT CONVERT(CHAR(10),GETDATE(),120) as 'MyDate_w_Dash',
   CONVERT(CHAR(10),GETDATE(),111) as 'MyDateTime_w_Slash',
   CONVERT(CHAR(10),GETDATE(),102) as 'MyDateTime_w_Dot';


--CAST FNCTION

SELECT CAST('1 Jan 2021' AS DATE) AS [1.String to Date], 
   CAST('20210101' AS DATE) AS [2.String to Date],
   CAST('1/1/2021' AS DATETIME) AS [3.String to Datetime],
   CAST('2021-01-01 12:00:55.520' AS DATETIME) AS [4.String to Datetime];


SELECT CHARINDEX ( 'Test',  
       'This is a Test'  
       COLLATE Latin1_General_CS_AS);


SELECT ASCII('A') AS A, ASCII('B') AS B,   
	ASCII('a') AS a, ASCII('b') AS b,  
	ASCII(1) AS [1], ASCII(2) AS [2];

