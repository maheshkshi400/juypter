IF OBJECT_ID('ScriptComponent', 'U') IS NOT NULL
Drop table ScriptComponent
GO
CREATE TABLE [dbo].[ScriptComponent](
	[id] [varchar](50) NULL,
	[first_name] [varchar](50) NULL,
	[last_name] [varchar](50) NULL,
	[Gender] [varchar](50) NULL,
	[Company_Name] [varchar](50) NULL,
	[Company2] [varchar](50) NULL,
	[Gender2] [varchar](1) NULL,
	[Gender1] [varchar](1) NULL,
	[FullName] [varchar](50) NULL
) ON [PRIMARY]
