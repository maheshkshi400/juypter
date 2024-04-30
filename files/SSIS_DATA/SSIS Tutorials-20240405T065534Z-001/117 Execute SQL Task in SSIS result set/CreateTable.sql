/****** Object:  Table [dbo].[tbl_logs]    Script Date: 4/1/2022 3:20:44 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_logs]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_logs]
GO

/****** Object:  Table [dbo].[tbl_logs]    Script Date: 4/1/2022 3:20:44 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tbl_logs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PackageName] [varchar](100) NULL,
	[Step] [varchar](100) NULL,
	[Dated] [datetime] NULL
) ON [PRIMARY]
GO
