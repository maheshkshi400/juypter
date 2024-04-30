use MK_DB;

create table emp(Name varchar(6),value varchar(9),id int);

insert into emp values('name','adnan',1);
insert into emp values('gender','male',1);
insert into emp values('salary','50000',1);

a
select * from emp;

# Method1 case statement

select id,

max(case
When Name='name' then value else ' ' End ) as Name,

max(case
When Name='gender' then value else ' ' End ) as gender,

max(case
When Name='salary' then value else ' ' End ) as Salary

from emp
group by id


# Method 2 pivot table

Select * from emp;

select id,[name],[gender],[salary]
from 

(select id,name as ename,value from emp) as source_table
pivot
(max(value)
for
ename in([name],[gender],[salary])
) as pivot_table
