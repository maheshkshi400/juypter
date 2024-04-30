--LOGS Table that will keep LOGS
IF EXISTS(SELECT 1 FROM sysobjects with (nolock) WHERE ID = OBJECT_ID(N'logs') AND type = (N'U'))  
drop table logs
CREATE TABLE [dbo].[logs](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[PackageName] [varchar](100) NULL,
	[RecordsInserted] [int] NULL,
	[RecordsUpdated] [int] NULL,
	[dated] [datetime] NULL
) ON [PRIMARY]
