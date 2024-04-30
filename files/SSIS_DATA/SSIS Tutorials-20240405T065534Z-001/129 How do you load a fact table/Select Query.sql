select * from [Dimension].[Customer]
select * from [Dimension].[Employee]
select * from [Dimension].[Product]
select * from [Dimension].[Date]
SELECT * FROM [FameSellDW].[Fact].[Orders]

SELECT * FROM [FameSell].[dbo].[Orders] where OrderId = 20001
SELECT * FROM [FameSellDW].[Fact].[Orders] where OrderId = 20001

update [FameSell].[dbo].[Orders]
set UnitPrice = 225
where OrderID=1

select CustomerSK, CustomerId from [Dimension].[Customer] where enddate is null
select EmployeeSK, EmployeeId from [Dimension].[Employee] where ValidTo is null
select ProductSK, ProductID from [Dimension].[Product] where ValidTo is null
select DateKey, cast(Date as date) as Date from [Dimension].[Date]

SELECT *, BINARY_CHECKSUM(Quantity, UnitPrice, TaxRate) AS Dest_BSM FROM [FameSellDW].[Fact].[Orders]

select DateKey, cast(Date as date) as Date from [Dimension].[Date]
