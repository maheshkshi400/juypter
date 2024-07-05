select * from [FameSell].[dbo].[Employee]
select * from [dbo].[Employee_Insert]--scd type 2
select * from [dbo].Employee_Update--scd type 1
select * from Dimension.Employee

truncate table [Employee_Insert]
truncate table Employee_Update
truncate table Dimension.Employee

--SCD Type 1: LogonName, Email
--SCD Type 2: PhoneNumber, FaxNumber
--Fixed Attribute: All columns except above columns

--SCD Type 1: aplqzqhv.vvfoz@dokqhw.org
update [FameSell].[dbo].[Employee]
set Email  = 'pablo@gmail.com'
where EmployeeID = 3
go

select * from [FameSell].[dbo].[Employee] where EmployeeID = 3
select * from FameSellDW.Dimension.[Employee] where EmployeeID = 3

--SCD Type 2: 5181805879
update FameSell.[dbo].[Employee]
set PhoneNumber  = '331452-2325'
where EmployeeID = 5
go

select * from FameSell.[dbo].[Employee] where EmployeeID = 5
select * from FameSellDW.Dimension.[Employee] where EmployeeID = 5

--Fixed Attribute: Trevino
update FameSell.[dbo].[Employee]
set LastName  = 'Tom'
where EmployeeID = 7

select * from FameSell.[dbo].[Employee] where EmployeeID = 7
select * from FameSellDW.Dimension.[Employee] where EmployeeID = 7