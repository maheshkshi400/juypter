update a
set a.LogonName = b.LogonName,
a.Email = b.Email
from [Dimension].[Employee] a inner join [dbo].[Employee_Update] b
on a.[EmployeeID] = b.[EmployeeID]
go
update a
set a.ValidTo = getdate()
from [Dimension].[Employee] a inner join Employee_Insert b
on a.[EmployeeID] = b.[EmployeeID]
where a.ValidTo is null
