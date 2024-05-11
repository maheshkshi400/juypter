USE [FameSellDW]
GO
/****** Object:  StoredProcedure [dbo].[sp_PopulateDimTableswithDefaultData]    Script Date: 11/4/2022 8:59:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_PopulateDimTableswithDefaultData]
as
begin
--Customer
declare @cnt int
set @cnt = (select count(*) from [Dimension].[Customer] where [CustomerSK]=0)
if(@cnt=0)
begin
SET IDENTITY_INSERT [Dimension].[Customer] ON
INSERT INTO [Dimension].[Customer]
           ([CustomerSK]
		   ,[CustomerID]
           ,[CustomerFirstName]
           ,[CustomerLastName]
           ,[PhoneNumber]
           ,[FaxNumber]
           ,[Email]
           ,[Address]
           ,[City]
           ,[State]
           ,[Zip]
           ,[Country]
           ,[StartDate]
           ,[EndDate])
     VALUES
           (0
		   ,0
           ,''
           ,''
           ,''
           ,''
           ,''
           ,''
           ,''
           ,''
           ,''
           ,''
           ,GETDATE()
           ,null
		   )
SET IDENTITY_INSERT [Dimension].[Customer] OFF
end
--Employee
set @cnt = (select count(*) from [Dimension].[Employee] where [EmployeeSK]=0)
if(@cnt=0)
begin
SET IDENTITY_INSERT [Dimension].[Employee] ON
INSERT INTO [Dimension].[Employee]
           ([EmployeeSK]
		   ,[EmployeeID]
           ,[FirstName]
           ,[LastName]
           ,[IsPermittedToLogon]
           ,[LogonName]
           ,[IsSalesperson]
           ,[PhoneNumber]
           ,[FaxNumber]
           ,[Email]
           ,[ValidFrom]
           ,[ValidTo])
     VALUES
           (
		   0
		   ,0
           ,''
           ,''
           ,0
           ,''
           ,0
           ,''
           ,''
           ,''
           ,GETDATE()
           ,null
		   )
SET IDENTITY_INSERT [Dimension].Employee OFF
end
--Product
set @cnt = (select count(*) from [Dimension].[Product] where [ProductSK]=0)
if(@cnt=0)
begin
SET IDENTITY_INSERT [Dimension].[Product] ON
INSERT INTO [Dimension].[Product]
           ([ProductSK]
		   ,[ProductID]
           ,[ProductName]
           ,[Color]
           ,[Brand]
           ,[Size]
           ,[Barcode]
           ,[TaxRate]
           ,[UnitPrice]
           ,[SupplierId]
           ,[SupplierName]
           ,[PhoneNumber]
           ,[Email]
           ,[ValidFrom]
           ,[ValidTo])
     VALUES
           (0
		   ,0
           ,''
           ,''
           ,''
           ,''
           ,''
           ,0
           ,0
           ,0
           ,''
           ,''
           ,''
           ,GETDATE()
           ,null)
SET IDENTITY_INSERT Dimension.Product OFF
end
--Date
set @cnt = (select count(*) from [Dimension].[Date] where DateKey=0)
if(@cnt=0)
begin
INSERT INTO [Dimension].[Date]
           ([DateKey]
           ,[Date]
           ,[FullDate]
           ,[DayOfMonth]
           ,[DayName]
           ,[DayOfWeek]
           ,[DayOfWeekInMonth]
           ,[DayOfWeekInYear]
           ,[DayOfQuarter]
           ,[DayOfYear]
           ,[WeekOfMonth]
           ,[WeekOfQuarter]
           ,[WeekOfYear]
           ,[Month]
           ,[MonthName]
           ,[MonthOfQuarter]
           ,[Quarter]
           ,[QuarterName]
           ,[Year]
           ,[YearName]
           ,[MonthYear]
           ,[MMYYYY]
           ,[FirstDayOfMonth]
           ,[LastDayOfMonth]
           ,[FirstDayOfQuarter]
           ,[LastDayOfQuarter]
           ,[FirstDayOfYear]
           ,[LastDayOfYear])
     VALUES
           ('19000101'
           ,'1900-01-01 00:00:00.000'
           ,'01/01/1900'
           ,''
           ,''
           ,''
           ,''
           ,''
           ,''
           ,''
           ,''
           ,''
           ,''
           ,''
           ,''
           ,''
           ,''
           ,''
           ,''
           ,''
           ,''
		   ,''
           ,null
           ,null
           ,null
           ,null
           ,null
           ,null)
end
end
go
USE [FameSellDW]
GO

/****** Object:  StoredProcedure [dbo].[proc_Populate_Date_Dimension]    Script Date: 11/4/2022 8:59:55 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE Proc [dbo].[proc_Populate_Date_Dimension]
as
begin

DECLARE @StartDate DATE = '20000101', @NumberOfYears INT = 25;

-- prevent set or regional settings from interfering with 
-- interpretation of dates / literals
--drop table #dim
SET DATEFIRST 7;
SET DATEFORMAT mdy;
SET LANGUAGE US_ENGLISH;

DECLARE @CutoffDate DATE = DATEADD(YEAR, @NumberOfYears, @StartDate);

-- this is just a holding table for intermediate calculations:

CREATE TABLE #dim
(
  [date]       DATE PRIMARY KEY, 
  [day]        AS DATEPART(DAY,      [date]),
  [month]      AS DATEPART(MONTH,    [date]),
  FirstOfMonth AS CONVERT(DATE, DATEADD(MONTH, DATEDIFF(MONTH, 0, [date]), 0)),
  [MonthName]  AS DATENAME(MONTH,    [date]),
  [week]       AS DATEPART(WEEK,     [date]),
  [DayOfWeek]  AS DATEPART(WEEKDAY,  [date]),
  [quarter]    AS DATEPART(QUARTER,  [date]),
  [year]       AS DATEPART(YEAR,     [date]),
  FirstOfYear  AS CONVERT(DATE, DATEADD(YEAR,  DATEDIFF(YEAR,  0, [date]), 0)),
  Style112     AS CONVERT(CHAR(8),   [date], 112),
  Style101     AS CONVERT(CHAR(10),  [date], 101)
);

-- use the catalog views to generate as many rows as we need

INSERT #dim([date]) 
SELECT d
FROM
(
  SELECT d = DATEADD(DAY, rn - 1, @StartDate)
  FROM 
  (
    SELECT TOP (DATEDIFF(DAY, @StartDate, @CutoffDate)) 
      rn = ROW_NUMBER() OVER (ORDER BY s1.[object_id])
    FROM sys.all_objects AS s1
    CROSS JOIN sys.all_objects AS s2
    -- on my system this would support > 5 million days
    ORDER BY s1.[object_id]
  ) AS x
) AS y;

IF OBJECT_ID('Dimension.Date', 'U') IS NOT NULL 
DROP TABLE Dimension.Date

CREATE TABLE [Dimension].[Date](
	[Date] [date] NOT NULL,
	[Day] [tinyint] NOT NULL,
	[Weekday] [tinyint] NOT NULL,
	[WeekDayName] [varchar](10) NOT NULL,
	[IsWeekend] [bit] NOT NULL,
	[DOWInMonth] [tinyint] NOT NULL,
	[DayOfYear] [smallint] NOT NULL,
	[WeekOfMonth] [tinyint] NOT NULL,
	[WeekOfYear] [tinyint] NOT NULL,
	[Month] [tinyint] NOT NULL,
	[MonthName] [varchar](10) NOT NULL,
	[Quarter] [tinyint] NOT NULL,
	[QuarterName] [varchar](6) NOT NULL,
	[Year] [int] NOT NULL,
	[MMYYYY] [char](6) NOT NULL,
	[MonthYear] [char](7) NOT NULL,
	[FirstDayOfMonth] [date] NOT NULL,
	[LastDayOfMonth] [date] NOT NULL,
	[FirstDayOfQuarter] [date] NOT NULL,
	[LastDayOfQuarter] [date] NOT NULL,
	[FirstDayOfYear] [date] NOT NULL,
	[LastDayOfYear] [date] NOT NULL
) ON [PRIMARY]

INSERT Dimension.Date WITH (TABLOCKX)
SELECT
  [Date]        = [date],
  [Day]         = CONVERT(TINYINT, [day]),
  [Weekday]     = CONVERT(TINYINT, [DayOfWeek]),
  [WeekDayName] = CONVERT(VARCHAR(10), DATENAME(WEEKDAY, [date])),
  [IsWeekend]   = CONVERT(BIT, CASE WHEN [DayOfWeek] IN (1,7) THEN 1 ELSE 0 END),
  [DOWInMonth]  = CONVERT(TINYINT, ROW_NUMBER() OVER 
                  (PARTITION BY FirstOfMonth, [DayOfWeek] ORDER BY [date])),
  [DayOfYear]   = CONVERT(SMALLINT, DATEPART(DAYOFYEAR, [date])),
  WeekOfMonth   = CONVERT(TINYINT, DENSE_RANK() OVER 
                  (PARTITION BY [year], [month] ORDER BY [week])),
  WeekOfYear    = CONVERT(TINYINT, [week]),
  [Month]       = CONVERT(TINYINT, [month]),
  [MonthName]   = CONVERT(VARCHAR(10), [MonthName]),
  [Quarter]     = CONVERT(TINYINT, [quarter]),
  QuarterName   = CONVERT(VARCHAR(6), CASE [quarter] WHEN 1 THEN 'First' 
                  WHEN 2 THEN 'Second' WHEN 3 THEN 'Third' WHEN 4 THEN 'Fourth' END), 
  [Year]        = [year],
  MMYYYY        = CONVERT(CHAR(6), LEFT(Style101, 2)    + LEFT(Style112, 4)),
  MonthYear     = CONVERT(CHAR(7), LEFT([MonthName], 3) + LEFT(Style112, 4)),
  FirstDayOfMonth     = FirstOfMonth,
  LastDayOfMonth      = MAX([date]) OVER (PARTITION BY [year], [month]),
  FirstDayOfQuarter   = MIN([date]) OVER (PARTITION BY [year], [quarter]),
  LastDayOfQuarter    = MAX([date]) OVER (PARTITION BY [year], [quarter]),
  FirstDayOfYear      = FirstOfYear,
  LastDayOfYear       = MAX([date]) OVER (PARTITION BY [year])
FROM #dim
OPTION (MAXDOP 1);

--select * from Dimension.Date order by date
End
GO


