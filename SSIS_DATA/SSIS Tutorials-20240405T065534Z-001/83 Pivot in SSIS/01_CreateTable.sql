--for testing 
drop table Sales
go
CREATE TABLE Sales  
(  
   [Month] [varchar](100),  
   [Year] [int] ,  
   Sales [int]
)
go
INSERT INTO Sales  
SELECT 'Jan',2010,100 UNION ALL  
SELECT 'Feb',2010,105 UNION ALL  
SELECT 'Mar',2010,110 UNION ALL  
SELECT 'Apr',2010,152 UNION ALL  
SELECT 'May',2010,100 UNION ALL  
SELECT 'Jun',2010,200 UNION ALL  
SELECT 'Jul',2010,250 UNION ALL  
SELECT 'Aug',2010,280 UNION ALL  
SELECT 'Sep',2010,290 UNION ALL  
SELECT 'Oct',2010,320  UNION ALL  
SELECT 'Nov',2010,325  UNION ALL  
SELECT 'Dec',2010,330 UNION ALL
SELECT 'Jan',2011,200 UNION ALL  
SELECT 'Feb',2011,205 UNION ALL  
SELECT 'Mar',2011,210 UNION ALL  
SELECT 'Apr',2011,252 UNION ALL  
SELECT 'May',2011,200 UNION ALL  
SELECT 'Jun',2011,300 UNION ALL  
SELECT 'Jul',2011,350 UNION ALL  
SELECT 'Aug',2011,380 UNION ALL  
SELECT 'Sep',2011,390 UNION ALL  
SELECT 'Oct',2011,420  UNION ALL  
SELECT 'Nov',2011,425  UNION ALL  
SELECT 'Dec',2011,430 
go
SELECT * FROM Sales; 
GO
---------------------------------------
--pivot query in sql
SELECT [Year], Jan,Feb,Mar, Apr,May,Jun, Jul, Aug, Sep, Oct, Nov, [Dec] FROM   
(SELECT [Month], [Year] , Sales FROM Sales )Tab1  
PIVOT  
(  
SUM(Sales) FOR [Month] IN (Jan,Feb,Mar, Apr,May,Jun, Jul, Aug, Sep, Oct, Nov, [Dec])) AS Tab2  
ORDER BY [Tab2].[Year]  
--------------------------------
--table used in the SSIS PACKAGE

CREATE TABLE [dbo].[PivotTable](
	[Year] [varchar](50) NULL,
	[Apr] [varchar](50) NULL,
	[Aug] [varchar](50) NULL,
	[Dec] [varchar](50) NULL,
	[Feb] [varchar](50) NULL,
	[Jan] [varchar](50) NULL,
	[Jul] [varchar](50) NULL,
	[Jun] [varchar](50) NULL,
	[Mar] [varchar](50) NULL,
	[May] [varchar](50) NULL,
	[Nov] [varchar](50) NULL,
	[Oct] [varchar](50) NULL,
	[Sep] [varchar](50) NULL
) ON [PRIMARY]
GO