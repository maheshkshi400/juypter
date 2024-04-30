IF OBJECT_ID('DerivedData', 'U') IS NOT NULL
Drop table DerivedData
GO
CREATE TABLE [dbo].[DerivedData](
	[id] [varchar](50) NULL,
	[first_name] [varchar](50) NULL,
	[last_name] [varchar](50) NULL,
	[Gender] [varchar](50) NULL,
	[Company_Name] [varchar](50) NULL,
	[Gender1] [nvarchar](1) NULL,
	[Gender2] [nvarchar](1) NULL,
	[Company_Name2] [nvarchar](50) NULL
) ON [PRIMARY]

