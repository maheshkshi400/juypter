IF EXISTS(SELECT 1 FROM sysobjects with (nolock) WHERE ID = OBJECT_ID(N'[dbo].[Test]') AND type = (N'U'))    
drop table [dbo].[Test]
CREATE TABLE [dbo].[Test](
	[id] [varchar](50) NULL,
	[first_name] [varchar](50) NULL,
	[last_name] [varchar](50) NULL,
	[Gender] [varchar](50) NULL,
	[Company_Name] [varchar](50) NULL
) ON [PRIMARY]
GO
IF not EXISTS(SELECT 1 FROM sysobjects with (nolock) WHERE ID = OBJECT_ID(N'[dbo].[Test]') AND type = (N'U'))  
CREATE TABLE tblLogs(Id int identity, FilePath varchar(200), RecordsLoaded int, Dated datetime)