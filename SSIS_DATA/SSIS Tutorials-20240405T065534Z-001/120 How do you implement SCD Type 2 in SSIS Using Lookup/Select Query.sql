select * from FameSell.[dbo].[Customers]
select * from [dbo].[Customer_Insert]--scd type 2
select * from [dbo].Customer_Update--scd typ 1
select * from Dimension.Customer

truncate table [Customer_Insert]
truncate table Customer_Update
truncate table Dimension.Customer

--SCD Type 1: Address, City, State, Zip
--SCD Type 2: PhoneNumber, FaxNumber, Email
--Fixed Attribute: All columns except above columns

--SCD Type 1: 40 West Nobel Way
update FameSell.[dbo].[Customers]
set Address  = 'PO Box 100'
where CustomerID = 5
go

select * from FameSell.[dbo].[Customers] where CustomerID = 5
select * from FameSellDW.Dimension.Customer where CustomerID = 5

--SCD Type 2: 2505485864
update FameSell.[dbo].[Customers]
set PhoneNumber  = '9873895735'
where CustomerID = 3
go

select * from FameSell.[dbo].[Customers] where CustomerID = 3
select * from FameSellDW.Dimension.Customer where CustomerID = 3

--Fixed Attribute
update FameSell.[dbo].[Customers]
set CustomerLastName  = 'Larry'
where CustomerID = 9

select * from FameSell.[dbo].[Customers] where CustomerID = 9
select * from FameSellDW.Dimension.Customer where CustomerID = 9