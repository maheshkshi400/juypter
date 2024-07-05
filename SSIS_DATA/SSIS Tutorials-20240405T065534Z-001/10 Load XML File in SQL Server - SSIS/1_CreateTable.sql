IF (EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'dbo' AND  TABLE_NAME = 'XMLDATA'))
drop table XMLDATA
CREATE TABLE XMLDATA(
    [id] int,
    [first_name] nvarchar(255),
    [last_name] nvarchar(255),
    [Gender] nvarchar(255),
    [Company_Name] nvarchar(255)
)