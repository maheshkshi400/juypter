IF EXISTS ( SELECT  * FROM    dbo.sysobjects WHERE   id = OBJECT_ID(N'Emp_Source') AND OBJECTPROPERTY(id, N'IsUserTable') = 1 )
DROP TABLE Emp_Source
CREATE TABLE Emp_Source(EmpId int, FirstName varchar(50), LastName varchar(50), Designation varchar(50))
go
insert into Emp_Source values(100, 'Thomas', 'Sorenson', 'Software Engineer')
insert into Emp_Source values(101, 'Ashish', 'Raghav', 'DBA')
insert into Emp_Source values(102, 'Cody', 'Barbakos', 'Software Engineer')
insert into Emp_Source values(103, 'Rajdev', 'Bhandari', 'Software Engineer')
insert into Emp_Source values(104, 'Jyoti', 'Singh', 'IT Head')
go
IF EXISTS ( SELECT  * FROM    dbo.sysobjects WHERE   id = OBJECT_ID(N'DimEmployee') AND OBJECTPROPERTY(id, N'IsUserTable') = 1 )
DROP TABLE DimEmployee
CREATE TABLE DimEmployee(Id int identity, EmpId int, FirstName varchar(50), LastName varchar(50), Designation varchar(50), StartDate datetime, 
EndDate datetime)
go

select * from Emp_Source
select * from DimEmployee


