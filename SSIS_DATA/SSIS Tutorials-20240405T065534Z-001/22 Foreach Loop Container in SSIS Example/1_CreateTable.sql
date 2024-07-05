IF OBJECT_ID('Person_Data', 'U') IS NOT NULL
Drop table Person_Data
CREATE TABLE Person_Data (
    [CustomerID] varchar(50),
    [PersonID] varchar(50),
    [StoreID] varchar(50),
    [TerritoryID] varchar(50),
    [AccountNumber] varchar(50),
    [rowguid] varchar(50),
    [ModifiedDate] varchar(50)
)
go
IF OBJECT_ID('FILEINFO', 'U') IS NOT NULL
Drop table FILEINFO
CREATE TABLE FILEINFO (
    id int identity,
    FilePath varchar(1000),
    RecordCount int,
    [Dated] datetime
)