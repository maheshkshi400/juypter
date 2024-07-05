IF OBJECT_ID('ExcelMultipleSheet', 'U') IS NOT NULL
Drop table ExcelMultipleSheet
CREATE TABLE [dbo].[ExcelMultipleSheet](
	[Id] [int] NULL,
	[City] [nvarchar](255) NULL,
	[Country] [nvarchar](255) NULL
) ON [PRIMARY]
