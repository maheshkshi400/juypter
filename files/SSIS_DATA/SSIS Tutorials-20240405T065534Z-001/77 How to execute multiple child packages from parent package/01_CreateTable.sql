create table Config_SSISPkg(Id int identity, PackageName varchar(100), [Order] int, Active bit)
create table tbl_log(Id int identity, PackageName varchar(100), Step varchar(100), Dated datetime)
go
select * from Config_SSISPkg
select * from tbl_log

select PackageName from Config_SSISPkg where Active=1 order by [order]

insert into Config_SSISPkg
select 'Child1.dtsx', 10, 1
union all
select 'Child2.dtsx', 20, 1
union all
select 'Child3.dtsx', 30, 1