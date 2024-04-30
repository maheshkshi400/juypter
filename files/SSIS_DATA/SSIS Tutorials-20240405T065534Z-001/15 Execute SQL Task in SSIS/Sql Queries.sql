use empoyee
if not exists(select * from information_schema.tables where table_name = 'Person')
create table Person(Id int identity, Name varchar(50), Gender varchar(1), AGE int)
go
insert into Person values ('ABHISHEK','M', 35)

---------------------

if not exists(select * from information_schema.tables where table_name = 'Person')
create table Person(Id int identity, Name varchar(50), Gender varchar(1), AGE int)
insert into Person values (?,?,?)

----------------------

"if not exists(select * from information_schema.tables where table_name = 'Person')
create table Person(Id int identity, Name varchar(50), Gender varchar(1), AGE int)
insert into Person values ('"+ @[User::Name] +"','"+ @[User::Gender] +"','"+(DT_WSTR,12) @[User::Age] +"')
"
