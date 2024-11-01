IF EXISTS ( SELECT * FROM  sys.objects WHERE   object_id = OBJECT_ID(N'City') AND type IN ( N'U' ) )
drop table City
CREATE TABLE [dbo].[City](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[City] [varchar](100) NULL,
	[Country] [varchar](100) NULL
) ON [PRIMARY]
go
SET IDENTITY_INSERT [dbo].[City] ON 
go
INSERT [dbo].[City] ([Id], [City], [Country]) VALUES (1, N'New York', N'USA')
INSERT [dbo].[City] ([Id], [City], [Country]) VALUES (2, N'New Delhi', N'India')
INSERT [dbo].[City] ([Id], [City], [Country]) VALUES (3, N'London', N'UK')
INSERT [dbo].[City] ([Id], [City], [Country]) VALUES (4, N'Salt Lake City', N'USA')
INSERT [dbo].[City] ([Id], [City], [Country]) VALUES (5, N'Noida', N'India')
INSERT [dbo].[City] ([Id], [City], [Country]) VALUES (6, N'Bangalore', N'India')
INSERT [dbo].[City] ([Id], [City], [Country]) VALUES (7, N'Greater Noida', N'India')
SET IDENTITY_INSERT [dbo].[City] OFF
