IF (EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'dbo' AND  TABLE_NAME = 'PersonData'))
drop table PersonData
CREATE TABLE [PersonData] (
    [id] float,
    [first_name] nvarchar(255),
    [last_name] nvarchar(255),
    [email] nvarchar(255),
    [gender] nvarchar(255),
    [ip_address] nvarchar(255)
)