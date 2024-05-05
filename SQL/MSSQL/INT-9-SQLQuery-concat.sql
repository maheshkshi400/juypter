
USE EMPLOYEE

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





select value from string_split('adnan,shaikh',',')
--
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
for Rownum in ([1],[2])) as PVT