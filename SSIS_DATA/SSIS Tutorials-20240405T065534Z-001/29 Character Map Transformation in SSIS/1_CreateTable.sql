IF OBJECT_ID('TestData', 'U') IS NOT NULL
Drop table TestData
GO
CREATE TABLE TestData (
    [id] varchar(50),
    [first_name] varchar(50),
    [last_name] varchar(50),
    [gender] varchar(50),
    [Compnay_Name] varchar(50)
)