USE EMPLOYEE;

SELECT * FROM EMP2;

-- string functions
SELECT ename, LOWER(ename) FROM EMP2;
SELECT ename, UPPER(ename) FROM EMP2;
SELECT ename, LEN(ename) FROM EMP2;
SELECT ename, SUBSTRING(ename, 2, 3) FROM EMP2;
SELECT ename, REVERSE(ename) FROM EMP2;
SELECT ename, REPLACE(ename, 'S', 'M') FROM EMP2;
SELECT ename, CHARINDEX('S', ename) FROM EMP2;
SELECT ename, CHARINDEX('S', ename, 2) FROM EMP2;
SELECT * FROM EMP2 WHERE ename = 'SMITH';
SELECT * FROM EMP2 WHERE LEN(ename)=5;
SELECT * FROM EMP2 WHERE ename LIKE 'S%';
SELECT * FROM EMP2 WHERE ename LIKE '%S';
SELECT * FROM EMP2 WHERE ename LIKE '%S%';
SELECT * FROM EMP2 WHERE ename LIKE '_S%';
SELECT * FROM EMP2 WHERE ename LIKE '%S_';


--by using left right,left function 

use employee
create table EMPLOYEE1(employeeId int,Name varchar(20));

insert into EMPLOYEE1 values(1,'adnan,shaikh')
insert into EMPLOYEE1 values(2,'sangita,bijave')
insert into EMPLOYEE1 values(3,'anand,sagar')
insert into EMPLOYEE1 values(4,'kritika,shenon')
insert into EMPLOYEE1 values(5,'prachi,inamdar')
insert into EMPLOYEE1 values(6,'kalpana,barmukh')
insert into EMPLOYEE1 values(7,'sitara,tamboli')

select * from EMPLOYEE1;

select Name,LEFT(Name,CHARINDEX(',',Name)-1) AS FIRST_NAME, 
RIGHT(Name, LEN(Name)- CHARINDEX(',',Name)) AS LAST_NAME
from EMPLOYEE1;

--concatenation

CREATE TABLE EMPLOYEE2(FIRST_NAME varchar(20),LAST_NAME varchar(20));

insert into EMPLOYEE2 values('adnan','shaikh')
insert into EMPLOYEE2 values('sangita','bijave')
insert into EMPLOYEE2 values('anand','sagar')

SELECT * FROM EMPLOYEE2;

SELECT FIRST_NAME,LAST_NAME,(FIRST_NAME + ' ' + LAST_NAME) AS FULL_NAME FROM EMPLOYEE2;

SELECT FIRST_NAME, LAST_NAME, CONCAT(FIRST_NAME, ' ', LAST_NAME) AS FULL_NAME
FROM EMPLOYEE2;





--by using string_split function

with NAME_CTE AS 
(select employeeId,value
,ROW_NUMBER() OVER (PARTITION BY employeeId ORDER BY employeeId) AS Rownum
from EMPLOYEE1
CROSS APPLY
string_split(Name,',')
)
SELECT employeeId,
[1] AS FIRST_NAME,[2] AS LAST_NAME 
FROM NAME_CTE
PIVOT
(MAX(VALUE)
for Rownum in ([1],[2])) as PVT;




