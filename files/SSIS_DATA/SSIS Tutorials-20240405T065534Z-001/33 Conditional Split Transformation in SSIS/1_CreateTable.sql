IF OBJECT_ID('Males_Data', 'U') IS NOT NULL
Drop table Males_Data
GO
CREATE TABLE [dbo].[Males_Data](
	[id] [varchar](50) NULL,
	[first_name] [varchar](50) NULL,
	[last_name] [varchar](50) NULL,
	[Gender] [varchar](50) NULL,
	[Company_Name] [varchar](50) NULL
) ON [PRIMARY]
go
IF OBJECT_ID('Females_Data', 'U') IS NOT NULL
Drop table Females_Data
GO
CREATE TABLE [dbo].[Females_Data](
	[id] [varchar](50) NULL,
	[first_name] [varchar](50) NULL,
	[last_name] [varchar](50) NULL,
	[Gender] [varchar](50) NULL,
	[Company_Name] [varchar](50) NULL
) ON [PRIMARY]