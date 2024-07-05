--Master Table that will keep final data
IF NOT EXISTS(SELECT 1 FROM sysobjects with (nolock) WHERE ID = OBJECT_ID(N'EmpMaster') AND type = (N'U'))    
CREATE TABLE [dbo].EmpMaster(
	[id] [varchar](50) NULL,
	[first_name] [varchar](50) NULL,
	[last_name] [varchar](50) NULL,
	[Gender] [varchar](50) NULL,
	[Company_Name] [varchar](50) NULL
) ON [PRIMARY]
go
--Staging table that will contain Non Matched records\records to be updated
IF EXISTS(SELECT 1 FROM sysobjects with (nolock) WHERE ID = OBJECT_ID(N'Emp_Staging') AND type = (N'U'))    
DROP TABLE Emp_Staging
CREATE TABLE [dbo].Emp_Staging(
	[id] [varchar](50) NULL,
	[first_name] [varchar](50) NULL,
	[last_name] [varchar](50) NULL,
	[Gender] [varchar](50) NULL,
	[Company_Name] [varchar](50) NULL
) ON [PRIMARY]
go


