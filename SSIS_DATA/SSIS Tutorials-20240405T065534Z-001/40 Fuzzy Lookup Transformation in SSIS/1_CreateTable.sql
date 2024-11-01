IF OBJECT_ID('City', 'U') IS NOT NULL
Drop table City
GO
CREATE TABLE [dbo].[City](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[City] [varchar](100) NULL,
	[Country] [varchar](100) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[City] ON 
GO
INSERT [dbo].[City] ([Id], [City], [Country]) VALUES (1, N'New York', N'USA')
GO
INSERT [dbo].[City] ([Id], [City], [Country]) VALUES (2, N'New Delhi', N'India')
GO
INSERT [dbo].[City] ([Id], [City], [Country]) VALUES (3, N'London', N'UK')
GO
INSERT [dbo].[City] ([Id], [City], [Country]) VALUES (4, N'Salt Lake City', N'USA')
GO
INSERT [dbo].[City] ([Id], [City], [Country]) VALUES (5, N'Noida', N'India')
GO
INSERT [dbo].[City] ([Id], [City], [Country]) VALUES (6, N'Bangalore', N'India')
GO
INSERT [dbo].[City] ([Id], [City], [Country]) VALUES (7, N'Greater Noida', N'India')
GO
SET IDENTITY_INSERT [dbo].[City] OFF
GO
IF OBJECT_ID('FuzzyLookup', 'U') IS NOT NULL
Drop table FuzzyLookup
GO
CREATE TABLE [dbo].[FuzzyLookup](
	[id] [varchar](50) NULL,
	[first_name] [varchar](50) NULL,
	[last_name] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[gender] [varchar](50) NULL,
	[City] [varchar](100) NULL,
	[CityId] [int] NULL,
	[Country] [varchar](100) NULL,
	[CorrectCity] [varchar](100) NULL,
	[_Similarity] [real] NULL,
	[_Confidence] [real] NULL,
	[_Similarity_City] [real] NULL
) ON [PRIMARY]
