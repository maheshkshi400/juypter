CREATE TABLE [dbo].[EmployeeData](
	[id] [int] NULL,
	[first_name] [varchar](50) NULL,
	[last_name] [varchar](50) NULL,
	[DateOfJoining] [date] NULL,
	[Salary] [int] NULL
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[EmployeeData_ErroredRecords](
	[id] [varchar](50) NULL,
	[first_name] [varchar](50) NULL,
	[last_name] [varchar](50) NULL,
	[DateOfJoining] [varchar](50) NULL,
	[Salary] [varchar](50) NULL,
	[ErrorCode] [int] NULL,
	[ErrorColumn] [int] NULL
) ON [PRIMARY]
GO
