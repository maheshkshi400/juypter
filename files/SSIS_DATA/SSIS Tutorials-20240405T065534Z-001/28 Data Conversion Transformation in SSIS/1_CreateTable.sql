IF OBJECT_ID('TestData', 'U') IS NOT NULL
Drop table TestData
GO
CREATE TABLE TestData (
    [id] int,
    [first_name] varchar(200),
    [last_name] varchar(200),
    [email] varchar(300),
    [gender] varchar(30),
    [ip_address] varchar(300)
)