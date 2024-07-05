USE [FameSell]
GO

INSERT INTO [dbo].[Orders]
           ([OrderID]
           ,[ProductID]
           ,[EmployeeId]
           ,[CustomerID]
           ,[Quantity]
           ,[UnitPrice]
           ,[TaxRate]
           ,[LastEditedWhen]
           ,[LastEditedDate])
     VALUES
           (20001
           ,1
           ,1
           ,1
           ,100
           ,100
           ,15.00
           ,getdate()
           ,getdate())
GO


