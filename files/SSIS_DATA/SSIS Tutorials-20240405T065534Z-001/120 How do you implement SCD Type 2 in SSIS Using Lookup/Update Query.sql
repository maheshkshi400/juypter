update a
set a.Address = b.Address,
a.City = b.City,
a.State = b.State,
a.Zip = b.Zip
from [Dimension].[Customer] a inner join Customer_Update b
on a.CustomerID = b.CustomerID
go
update a
set a.[EndDate] = getdate()
from [Dimension].[Customer] a inner join Customer_Insert b
on a.CustomerID = b.CustomerID
where a.[EndDate] is null