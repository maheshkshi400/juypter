--SCD Type 1 (Changing Attribute)
update Emp_Source
set LastName = 'Bhandari'
where EmpId=104
go

--SCD Type 2 (Historical Attribute)
update Emp_Source
set Designation = 'Senior DBA'
where EmpId=101
go

--SCD Fixed Attribute
update Emp_Source
set FirstName = 'Abhishek'
where EmpId=102
