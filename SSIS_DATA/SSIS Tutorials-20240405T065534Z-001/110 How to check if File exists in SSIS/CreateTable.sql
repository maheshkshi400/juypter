CREATE TABLE [dbo].[FileInfo](
	[FileId] [int] IDENTITY(1,1) NOT NULL,
	[FileName] [varchar](max) NULL,
	[RecordCount] [int] NULL,
	[Dated] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
