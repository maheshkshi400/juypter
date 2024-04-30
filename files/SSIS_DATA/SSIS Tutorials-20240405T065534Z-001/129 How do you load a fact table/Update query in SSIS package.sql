UPDATE a
   SET a.[CustomerSK] = b.CustomerSK
      ,a.[EmployeeSK] = b.EmployeeSK
      ,a.[ProductSK] = b.[ProductSK]
      ,a.[DateSK] = b.[DateSK]
      ,a.[Quantity] = b.Quantity
      ,a.[UnitPrice] = b.UnitPrice
      ,a.[TaxRate] = b.TaxRate
      ,a.[LastEditedWhen] = b.LastEditedWhen
 from [Fact].[Orders] a inner join [Fact].[Orders_update] b
 on a.[OrderId] = b.[OrderId]

SELECT *, BINARY_CHECKSUM(Quantity, UnitPrice, TaxRate) AS BSM FROM [FameSell].[dbo].[Orders]

select CustomerSK, CustomerId from [Dimension].[Customer] where enddate is null

SELECT *, BINARY_CHECKSUM(Quantity, UnitPrice, TaxRate) AS Dest_BSM FROM [FameSellDW].[Fact].[Orders]