IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[audit_log]') AND type in (N'U'))
DROP TABLE [dbo].[audit_log]
GO
CREATE TABLE [dbo].[audit_log](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PackageName] [varchar](200) NULL,
	[FileLoaded] [varchar](200) NULL,
	[RecordsInserted] [int] NULL,
	[Dated] [datetime] NULL
) ON [PRIMARY]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FilesLoaded]') AND type in (N'U'))
DROP TABLE [dbo].FilesLoaded
GO
CREATE TABLE [dbo].FilesLoaded(
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PackageName] [varchar](200) NULL,
	[FileLoaded] [varchar](200) NULL,
	Dated datetime
) ON [PRIMARY]
GO