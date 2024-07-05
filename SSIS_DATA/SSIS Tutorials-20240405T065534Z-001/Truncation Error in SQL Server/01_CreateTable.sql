CREATE TABLE [dbo].[Emails](
	[Id] [int] NULL,
	[First_name] [varchar](50) NULL,
	[Last_name] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Gender] [char](1) NULL
) ON [PRIMARY]
go
INSERT INTO [dbo].[Emails]
           ([Id]
           ,[First_name]
           ,[Last_name]
           ,[Email]
           ,[Gender])
     VALUES
           (1
           ,'Aqil'
           ,'Ahmed'
           ,'aqil33@gmail.com'
           ,'Male'
	)