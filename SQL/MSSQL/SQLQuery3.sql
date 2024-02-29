

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
