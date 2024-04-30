IF EXISTS ( SELECT  * FROM    dbo.sysobjects WHERE   id = OBJECT_ID(N'MyData') AND OBJECTPROPERTY(id, N'IsUserTable') = 1 )
DROP TABLE MyData
CREATE TABLE MyData(ID INT IDENTITY, Step varchar(200), PackageName varchar(200), Dated datetime)
go
insert into MyData values('Parent package started', 'Parent Package', getdate())