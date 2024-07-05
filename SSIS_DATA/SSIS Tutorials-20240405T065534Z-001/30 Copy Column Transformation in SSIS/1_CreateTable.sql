IF OBJECT_ID('TestData', 'U') IS NOT NULL
Drop table TestData
GO
CREATE TABLE [dbo].[TestData](
	[id] [varchar](50) NULL,
	[first_name] [varchar](50) NULL,
	[last_name] [varchar](50) NULL,
	[Gender] [varchar](50) NULL,
	[Company_Name] [varchar](50) NULL,
	[Copy of first_name] [varchar](50) NULL,
	[Copy of last_name] [varchar](50) NULL
) ON [PRIMARY]
GO

