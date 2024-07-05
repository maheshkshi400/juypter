CREATE TABLE [dbo].[ZipCode](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[zipcode] [varchar](10) NULL,
	[City] [varchar](50) NULL,
	[State] [varchar](50) NULL,
	[Country] [varchar](50) NULL,
	[ServerName] [varchar](50) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ZipCode] ON 
GO
INSERT [dbo].[ZipCode] ([Id], [zipcode], [City], [State], [Country], [ServerName]) VALUES (1, N'248001', N'Dehradun', N'Uttarakhand', N'India', NULL)
GO
INSERT [dbo].[ZipCode] ([Id], [zipcode], [City], [State], [Country], [ServerName]) VALUES (2, N'226001', N'Lucknow', N'Uttar Pradesh', N'India', NULL)
GO
INSERT [dbo].[ZipCode] ([Id], [zipcode], [City], [State], [Country], [ServerName]) VALUES (3, N'800001', N'Patna', N'Bihar', N'India', NULL)
GO
INSERT [dbo].[ZipCode] ([Id], [zipcode], [City], [State], [Country], [ServerName]) VALUES (4, N'110001', N'New Delhi', N'Delhi', N'India', NULL)
GO
INSERT [dbo].[ZipCode] ([Id], [zipcode], [City], [State], [Country], [ServerName]) VALUES (5, N'230532', N'Mumbai', N'Maharashtra', N'India', NULL)
GO
INSERT [dbo].[ZipCode] ([Id], [zipcode], [City], [State], [Country], [ServerName]) VALUES (6, N'530068', N'Bengaluru', N'Karnataka', N'India', NULL)
GO
INSERT [dbo].[ZipCode] ([Id], [zipcode], [City], [State], [Country], [ServerName]) VALUES (7, N'411002', N'Pune', N'Maharashtra', N'India', NULL)
GO
SET IDENTITY_INSERT [dbo].[ZipCode] OFF
GO

CREATE TABLE [dbo].[ZipCode_Dest](
	[Id] [int] NOT NULL,
	[zipcode] [varchar](10) NULL,
	[City] [varchar](50) NULL,
	[State] [varchar](50) NULL,
	[Country] [varchar](50) NULL,
	[ServerName] [varchar](50) NULL
) ON [PRIMARY]
GO