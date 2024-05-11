IF EXISTS(SELECT 1 FROM sysobjects with (nolock) WHERE ID = OBJECT_ID(N'PackageLogs') AND type = (N'U'))    
drop table PackageLogs
CREATE TABLE PackageLogs(ID INT IDENTITY, RunId int, PackageName varchar(100), ServerName varchar(100), DatabaseName varchar(100), TableName 
varchar(100), RecordsInserted int, RecordsUpdated int, Dated datetime)
go
insert into PackageLogs
select 1, 'Load Data from CSV files', 'localhost', 'Testing', 'tblEmployee', 1000, 800, GETDATE()
go
insert into PackageLogs
select 1, 'Load Data from CSV files', 'localhost', 'Testing', 'tblCustomer', 5400, 850, GETDATE()
go
select * from PackageLogs
select PackageName, ServerName, DatabaseName, TableName, RecordsInserted, RecordsUpdated, Dated from PackageLogs