CREATE TABLE [dbo].[Males_Data](
	[id] [varchar](50) NULL,
	[first_name] [varchar](50) NULL,
	[last_name] [varchar](50) NULL,
	[Gender] [varchar](50) NULL,
	[Company_Name] [varchar](50) NULL,
	[Country] [varchar](100) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Males_Data] ([id], [first_name], [last_name], [Gender], [Company_Name], [Country]) VALUES (N'5', N'Aaron', N'Morrison', N'Male', N'Quatz', N'Australia')
GO
INSERT [dbo].[Males_Data] ([id], [first_name], [last_name], [Gender], [Company_Name], [Country]) VALUES (N'6', N'Johnny', N'Daniels', N'Male', N'Aimbu', N'Canada')
GO
INSERT [dbo].[Males_Data] ([id], [first_name], [last_name], [Gender], [Company_Name], [Country]) VALUES (N'7', N'Sean', N'Mccoy', N'Male', N'Browsecat', N'India')
GO
INSERT [dbo].[Males_Data] ([id], [first_name], [last_name], [Gender], [Company_Name], [Country]) VALUES (N'11', N'John', N'Lewis', N'Male', N'Zazio', N'Sri Lanka')
GO
INSERT [dbo].[Males_Data] ([id], [first_name], [last_name], [Gender], [Company_Name], [Country]) VALUES (N'13', N'Victor', N'Alexander', N'Male', N'Edgepulse', N'USA')
GO
INSERT [dbo].[Males_Data] ([id], [first_name], [last_name], [Gender], [Company_Name], [Country]) VALUES (N'16', N'Andrew', N'Bowman', N'Male', N'Trilia', N'UK')
GO
INSERT [dbo].[Males_Data] ([id], [first_name], [last_name], [Gender], [Company_Name], [Country]) VALUES (N'18', N'Raymond', N'Watkins', N'Male', N'Gigashots', N'UK')
GO
INSERT [dbo].[Males_Data] ([id], [first_name], [last_name], [Gender], [Company_Name], [Country]) VALUES (N'19', N'Sean', N'Henry', N'Male', N'Edgetag', N'India')
GO
INSERT [dbo].[Males_Data] ([id], [first_name], [last_name], [Gender], [Company_Name], [Country]) VALUES (N'22', N'Todd', N'Jacobs', N'Male', N'Wikizz', N'South Africa')
GO
INSERT [dbo].[Males_Data] ([id], [first_name], [last_name], [Gender], [Company_Name], [Country]) VALUES (N'25', N'Albert', N'Morris', N'Male', N'Feedfire', N'USA')
GO
INSERT [dbo].[Males_Data] ([id], [first_name], [last_name], [Gender], [Company_Name], [Country]) VALUES (N'26', N'George', N'Jacobs', N'Male', N'Jabbercube', N'UK')
GO
INSERT [dbo].[Males_Data] ([id], [first_name], [last_name], [Gender], [Company_Name], [Country]) VALUES (N'27', N'Willie', N'Mitchell', N'Male', N'Realfire', N'Austria')
GO
go
CREATE TABLE [dbo].[MergeJoin_Matched](
	[id] [varchar](50) NULL,
	[first_name] [varchar](50) NULL,
	[last_name] [varchar](50) NULL,
	[Gender] [varchar](50) NULL,
	[Company_Name] [varchar](50) NULL,
	[Country] [varchar](100) NULL
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[MergeJoin_UnMatched](
	[id] [varchar](50) NULL,
	[first_name] [varchar](50) NULL,
	[last_name] [varchar](50) NULL,
	[Gender] [varchar](50) NULL,
	[Company_Name] [varchar](50) NULL,
	[Country] [varchar](100) NULL
) ON [PRIMARY]
GO
