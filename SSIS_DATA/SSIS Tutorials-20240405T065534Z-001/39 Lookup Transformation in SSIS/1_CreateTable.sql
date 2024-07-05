IF OBJECT_ID('LoopupMatchRecords', 'U') IS NOT NULL
Drop table LoopupMatchRecords
GO
CREATE TABLE [dbo].[LoopupMatchRecords](
	[id] [varchar](50) NULL,
	[first_name] [varchar](50) NULL,
	[last_name] [varchar](50) NULL,
	[Gender] [varchar](50) NULL,
	[Company_Name] [varchar](50) NULL,
	[City] [varchar](100) NULL,
	[Country] [varchar](100) NULL
) ON [PRIMARY]
go
IF OBJECT_ID('LookupNonMatched', 'U') IS NOT NULL
Drop table LookupNonMatched
GO
CREATE TABLE [dbo].[LookupNonMatched](
	[id] [varchar](50) NULL,
	[first_name] [varchar](50) NULL,
	[last_name] [varchar](50) NULL,
	[Gender] [varchar](50) NULL,
	[Company_Name] [varchar](50) NULL
) ON [PRIMARY]
go
IF OBJECT_ID('LookUpTable', 'U') IS NOT NULL
Drop table LookUpTable
GO
CREATE TABLE [dbo].[LookUpTable](
	[RowId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](100) NULL,
	[LastName] [varchar](100) NULL,
	[City] [varchar](100) NULL,
	[Country] [varchar](100) NULL
) ON [PRIMARY]
go
SET IDENTITY_INSERT [dbo].[LookUpTable] ON 
GO
INSERT [dbo].[LookUpTable] ([RowId], [FirstName], [LastName], [City], [Country]) VALUES (1, N'Dorothy', N'Lawson', N'New Delhi', N'India')
GO
INSERT [dbo].[LookUpTable] ([RowId], [FirstName], [LastName], [City], [Country]) VALUES (2, N'Frances', N'Oliver', N'Noida', N'India')
GO
INSERT [dbo].[LookUpTable] ([RowId], [FirstName], [LastName], [City], [Country]) VALUES (3, N'Marilyn', N'Garrett', N'London', N'UK')
GO
INSERT [dbo].[LookUpTable] ([RowId], [FirstName], [LastName], [City], [Country]) VALUES (4, N'Deborah', N'Watkins', N'Salt Lake City', N'USA')
GO
INSERT [dbo].[LookUpTable] ([RowId], [FirstName], [LastName], [City], [Country]) VALUES (5, N'Aaron', N'Morrison', N'New York', N'USA')
GO
SET IDENTITY_INSERT [dbo].[LookUpTable] OFF
