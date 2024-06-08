--Fetch the number of Weekends in the current month


SELECT count(*) as weekends  
FROM (
        SELECT TRUNC(GETDATE(),'mm')+level-1current_dt 
        FROM DualCONNECT 
        BY LEVEL <= last_day(GETDATE())–TRUNC(GETDATE(),’mm’)+1
     )
WHERE TO_CHAR(current_dt,'dy') IN ('sat','sun');

ALTER 
use JOINS
create table student_3(id int,name varchar(20),age int,fees money );

alter table student_3 add column(address varchar(20),contact no int(10))

ALTER TABLE student_3
ADD CONSTRAINT pk_id PRIMARY KEY (id);


DROP TABLE student_;

TRUNCATE TABLE student_3; 


INSERT INTO STUDENT_3 VALUES(1,'Rahul',23,25000);
INSERT INTO STUDENT_3 VALUES(2, 'Raj', 24, 30000);
INSERT INTO STUDENT_3 VALUES(3, 'Ramesh', 25, 35000);
INSERT INTO STUDENT_3 VALUES(4, 'Rakesh', 26, 40000);
INSERT INTO STUDENT_3 VALUES(5, 'Rajesh', 27, 45000);

select * from student_3;

ALTER TABLE student_3 ADD columns(city varchar(20), state varchar(20));

select * from student_3;


update student_3 set name = 'Sarvesh', fees = '7000' where id = 4;

select * from student_3;
DELETE FROM student_3 WHERE id = 5;

DELETE FROM student_3;

SELECT *








