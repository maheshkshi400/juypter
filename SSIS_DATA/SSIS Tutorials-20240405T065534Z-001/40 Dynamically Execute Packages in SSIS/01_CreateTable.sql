IF EXISTS(SELECT 1 FROM sysobjects with (nolock) WHERE ID = OBJECT_ID(N'Pkg_Details') AND type = (N'U'))
drop table Pkg_Details
go
CREATE TABLE Pkg_Details(ID INT IDENTITY, PackageFolderPath varchar(300), PackageName varchar(100), Active bit)
go
--Insert package details
INSERT INTO Pkg_Details VALUES('C:\MSBI\SSIS\Training\DynamicallyExecutePackagesinSSIS\DynamicallyExecutePackagesinSSIS',
'ChildPkg1.dtsx',1)
INSERT INTO Pkg_Details VALUES('C:\MSBI\SSIS\Training\DynamicallyExecutePackagesinSSIS\DynamicallyExecutePackagesinSSIS',
'ChildPkg2.dtsx',1)
INSERT INTO Pkg_Details VALUES('C:\MSBI\SSIS\Training\DynamicallyExecutePackagesinSSIS\DynamicallyExecutePackagesinSSIS',
'ChildPkg3.dtsx',1)
go
select PackageFolderPath, PackageName from Pkg_Details where Active=1