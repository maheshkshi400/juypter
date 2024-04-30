IF EXISTS(SELECT 1 FROM sysobjects with (nolock) WHERE ID = OBJECT_ID(N'Error_Logs') AND type = (N'U'))   
drop table Error_Logs
go
CREATE TABLE Error_Logs(ID INT IDENTITY, MachineName varchar(200), PackageName varchar(200), TaskName varchar(200), ErrorCode int,
ErrorDescription varchar(max), Dated datetime) 
go
IF EXISTS(SELECT 1 FROM sysobjects with (nolock) WHERE ID = OBJECT_ID(N'test') AND type = (N'U'))   
drop table test
CREATE TABLE [dbo].[test](
	[id] [varchar](50) NULL,
	[first_name] [varchar](50) NULL,
	[last_name] [varchar](50) NULL,
	[Gender] [varchar](50) NULL,
	[Company_Name] [varchar](50) NULL
) ON [PRIMARY]