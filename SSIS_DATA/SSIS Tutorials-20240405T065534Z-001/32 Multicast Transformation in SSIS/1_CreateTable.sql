if db_id('Testing') is null
Create database Testing
go
use Testing
go
IF OBJECT_ID('OutPut1', 'U') IS NOT NULL
Drop table OutPut1
GO
CREATE TABLE [dbo].[OutPut1](
	[id] [varchar](50) NULL,
	[first_name] [varchar](50) NULL,
	[last_name] [varchar](50) NULL,
	[Gender] [varchar](50) NULL,
	[Company_Name] [varchar](50) NULL
) ON [PRIMARY]
go
if db_id('SSIS') is null
Create database SSIS
go
use SSIS
go
IF OBJECT_ID('OutPut2', 'U') IS NOT NULL
Drop table OutPut2
GO
CREATE TABLE [dbo].[OutPut2](
	[id] [varchar](50) NULL,
	[first_name] [varchar](50) NULL,
	[last_name] [varchar](50) NULL,
	[Gender] [varchar](50) NULL,
	[Company_Name] [varchar](50) NULL
) ON [PRIMARY]
go
if db_id('Test') is null
Create database Test
go
use Test
go
IF OBJECT_ID('OutPut3', 'U') IS NOT NULL
Drop table OutPut3
GO
CREATE TABLE [dbo].[OutPut3](
	[id] [varchar](50) NULL,
	[first_name] [varchar](50) NULL,
	[last_name] [varchar](50) NULL,
	[Gender] [varchar](50) NULL,
	[Company_Name] [varchar](50) NULL
) ON [PRIMARY]
