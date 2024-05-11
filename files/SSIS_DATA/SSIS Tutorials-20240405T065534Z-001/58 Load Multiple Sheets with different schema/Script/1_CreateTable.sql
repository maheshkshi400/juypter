IF OBJECT_ID('tblEmployee', 'U') IS NOT NULL 
drop table tblEmployee
CREATE TABLE [dbo].[tblEmployee](
	[Id] [int] NULL,
	[first_name] [nvarchar](255) NULL,
	[last_name] [nvarchar](255) NULL,
	[email] [nvarchar](255) NULL,
	[gender] [nvarchar](255) NULL,
	[phone_number] [nvarchar](255) NULL
) ON [PRIMARY]
GO
IF OBJECT_ID('tblCity', 'U') IS NOT NULL 
drop table tblCity
CREATE TABLE [dbo].[tblCity](
	[Id] [int] NULL,
	[City] [nvarchar](255) NULL,
	[State] [nvarchar](255) NULL,
	[Zip] [nvarchar](255) NULL,
	[Country] [nvarchar](255) NULL
) ON [PRIMARY]
