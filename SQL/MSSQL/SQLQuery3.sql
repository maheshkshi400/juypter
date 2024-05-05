

use MK_DB;
go


select * from employee;



alter table employee ADD mgrid int;
select * from employee;
update employee set mgrid = 10 where empid=1;
update employee set mgrid = 2 where empid=8;

update employee set mgrid = 9 where empid=1
update employee set mgrid =3 where empid= 1
update employee set mgrid = 







select emp.Firstname+' '+emp.Lastaname as employee,
mgr.Firstname+' '+mgr.Lastaname as Manager 
from employee emp inner join employee mgr on emp.empid=mgr.mgrid


CREATE TABLE PATIENT(PATIENTID INT,PATIENTNAME VARCHAR(5),PATIENTAGE INT)

INSERT INTO PATIENT VALUES(1,'AA',21);
INSERT INTO PATIENT VALUES(2,'BB',31);
INSERT INTO PATIENT VALUES(3,'CC',25);
INSERT INTO PATIENT VALUES(4,'DD',38);
INSERT INTO PATIENT VALUES(5,'EE',42);
INSERT INTO PATIENT VALUES(6,'FF',45);
INSERT INTO PATIENT VALUES(7,'GG',65);
INSERT INTO PATIENT VALUES(8,'HH',62);
INSERT INTO PATIENT VALUES(9,'II',22);
INSERT INTO PATIENT VALUES(10,'JJ',36);


SELECT * FROM PATIENT;


SELECT AGE_GROUP, COUNT(*) AS count
FROM (
    SELECT 
        CASE
            WHEN PATIENTAGE BETWEEN 20 AND 30 THEN '20-30'
            WHEN PATIENTAGE BETWEEN 31 AND 40 THEN '30-40'
            WHEN PATIENTAGE BETWEEN 41 AND 50 THEN '40-50'
            ELSE '50 above'
        END AS AGE_GROUP
    FROM PATIENT
) AS AgeGroups
GROUP BY AGE_GROUP
ORDER BY AGE_GROUP;





