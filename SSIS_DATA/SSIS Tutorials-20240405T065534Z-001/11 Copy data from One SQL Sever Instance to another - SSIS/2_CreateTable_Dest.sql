IF (EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'dbo' AND  TABLE_NAME = 'CUSTOMER'))
drop table CUSTOMER
CREATE TABLE [dbo].[CUSTOMER](
	[CustId] [varchar](7) NULL,
	[CustomerName] [varchar](20) NULL,
	[CustomerCity] [varchar](15) NULL,
	[CustomerPhone] [varchar](14) NULL,
	[Subscription] [varchar](12) NULL,
	[Dummy] [varchar](2) NULL
) ON [PRIMARY]
GO
IF (EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'dbo' AND  TABLE_NAME = 'XMLDATA'))
drop table XMLDATA
CREATE TABLE [dbo].[XMLDATA](
	[id] [int] NULL,
	[first_name] [nvarchar](255) NULL,
	[last_name] [nvarchar](255) NULL,
	[Gender] [nvarchar](255) NULL,
	[Company_Name] [nvarchar](255) NULL
) ON [PRIMARY]