IF OBJECT_ID('TestData', 'U') IS NOT NULL
Drop table TestData
GO
CREATE TABLE [dbo].[TestData](
	[id] [varchar](50) NULL,
	[first_name] [varchar](50) NULL,
	[last_name] [varchar](50) NULL,
	[Gender] [varchar](50) NULL,
	[Company_Name] [varchar](50) NULL
) ON [PRIMARY]
GO
IF OBJECT_ID('LOGS', 'U') IS NOT NULL
Drop table LOGS
CREATE TABLE LOGS(ID INT IDENTITY, FILEPATH VARCHAR(300), RECORDCOUNT INT, DATED DATETIME)