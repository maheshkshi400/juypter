CREATE DATABASE MK_DB;
GO

USE MK_DB;
GO

CREATE TABLE employee
(empid int,
Firstname varchar(20),
Lastaname varchar(20),
gender varchar(6),
salary int);


select * from employee;

insert into employee values(2,'Ganesh','Hirave','Male',27000);
insert into employee values(3,'Sukanya','Malvade','female',17000);
insert into employee values(4,'Bhagya','Surkute','Male',20000);
insert into employee values(2,'Ganesh','Hirave','Male',27000);
insert into employee values(5,'Shreya','Mittal','female',25000);
insert into employee values(6,'Kamana','Shitole','female',22000);
insert into employee values(10,'Dhani','Devdhar','female',28000);
insert into employee values(8,'Karishma','Katwe','female',13000);
insert into employee values(9,'Vaibhav','Shinde','male',15000);
insert into employee values(10,'Dhani','Devdhar','female',28000);
insert into employee values(10,'Dhani','Devdhar','female',28000);
insert into employee values(10,'Dhani','Devdhar','female',28000);


select * from employee;

-- FIND OUT DUPLICATE RECORDS IN THE TABLE BY USING CLAUSES

SELECT empid,COUNT(empid) FROM employee GROUP BY empid 
HAVING COUNT(empid)>1;


-- Delete Duplicate records from table by using CTE

with employee_CTE as
(select employee.*,
rank() over (partition by Firstname,Lastaname 
order by empid desc) as rank from employee)

delete from employee_CTE where rank > 1



