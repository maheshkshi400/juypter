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
INSERT [dbo].[Males_Data] ([id], [first_name], [last_name], [Gender], [Company_Name]) VALUES (N'5', N'Aaron', N'Morrison', N'Male', N'Quatz')
GO
INSERT [dbo].[Males_Data] ([id], [first_name], [last_name], [Gender], [Company_Name]) VALUES (N'6', N'Johnny', N'Daniels', N'Male', N'Aimbu')
GO
INSERT [dbo].[Males_Data] ([id], [first_name], [last_name], [Gender], [Company_Name]) VALUES (N'7', N'Sean', N'Mccoy', N'Male', N'Browsecat')
GO
INSERT [dbo].[Males_Data] ([id], [first_name], [last_name], [Gender], [Company_Name]) VALUES (N'11', N'John', N'Lewis', N'Male', N'Zazio')
GO
INSERT [dbo].[Males_Data] ([id], [first_name], [last_name], [Gender], [Company_Name]) VALUES (N'13', N'Victor', N'Alexander', N'Male', N'Edgepulse')
GO
INSERT [dbo].[Males_Data] ([id], [first_name], [last_name], [Gender], [Company_Name]) VALUES (N'16', N'Andrew', N'Bowman', N'Male', N'Trilia')
GO
INSERT [dbo].[Males_Data] ([id], [first_name], [last_name], [Gender], [Company_Name]) VALUES (N'18', N'Raymond', N'Watkins', N'Male', N'Gigashots')
GO
INSERT [dbo].[Males_Data] ([id], [first_name], [last_name], [Gender], [Company_Name]) VALUES (N'19', N'Sean', N'Henry', N'Male', N'Edgetag')
GO
INSERT [dbo].[Males_Data] ([id], [first_name], [last_name], [Gender], [Company_Name]) VALUES (N'22', N'Todd', N'Jacobs', N'Male', N'Wikizz')
GO
INSERT [dbo].[Males_Data] ([id], [first_name], [last_name], [Gender], [Company_Name]) VALUES (N'25', N'Albert', N'Morris', N'Male', N'Feedfire')
GO
INSERT [dbo].[Males_Data] ([id], [first_name], [last_name], [Gender], [Company_Name]) VALUES (N'26', N'George', N'Jacobs', N'Male', N'Jabbercube')
GO
INSERT [dbo].[Males_Data] ([id], [first_name], [last_name], [Gender], [Company_Name]) VALUES (N'27', N'Willie', N'Mitchell', N'Male', N'Realfire')
GO
IF OBJECT_ID('UnionAllOutPut', 'U') IS NOT NULL
Drop table UnionAllOutPut
GO
CREATE TABLE [dbo].[UnionAllOutPut](
	[id] [varchar](50) NULL,
	[first_name] [varchar](50) NULL,
	[last_name] [varchar](50) NULL,
	[Gender] [varchar](50) NULL,
	[Company_Name] [varchar](50) NULL
) ON [PRIMARY]
