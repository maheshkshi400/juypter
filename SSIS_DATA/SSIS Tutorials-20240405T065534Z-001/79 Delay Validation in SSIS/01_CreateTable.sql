IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Emails]') AND type in (N'U'))
DROP TABLE [dbo].[Emails]
GO

/****** Object:  Table [dbo].[Emails]    Script Date: 9/19/2021 9:33:59 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Emails](
	[Id] [int] NULL,
	[First_name] [varchar](50) NULL,
	[Last_name] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Gender] [char](1) NULL
) ON [PRIMARY]
GO

