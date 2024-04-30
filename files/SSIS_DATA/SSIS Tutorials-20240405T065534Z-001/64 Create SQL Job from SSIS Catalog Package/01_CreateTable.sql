IF not EXISTS(SELECT 1 FROM sysobjects with (nolock) WHERE ID = OBJECT_ID(N'Test') AND type = (N'U'))   
Create table Test(Id int identity, value varchar(100), Dated datetime)
go
insert into Test
select 'This is test value', getdate()