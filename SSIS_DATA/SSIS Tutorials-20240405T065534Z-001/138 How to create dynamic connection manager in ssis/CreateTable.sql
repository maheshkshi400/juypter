USE [Work]
GO

/****** Object:  Table [dbo].[Sellers]    Script Date: 9/7/2022 1:48:54 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Sellers](
	[Id] [int] NULL,
	[first_name] [varchar](50) NULL,
	[last_name] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[gender] [varchar](50) NULL,
	[country] [varchar](50) NULL
) ON [PRIMARY]
GO


USE [Work]
GO

/****** Object:  Table [dbo].[Email_Sample]    Script Date: 9/7/2022 1:49:00 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Email_Sample](
	[Id] [nvarchar](50) NULL,
	[first_name] [nvarchar](50) NULL,
	[last_name] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[gender] [nvarchar](50) NULL
) ON [PRIMARY]
GO

