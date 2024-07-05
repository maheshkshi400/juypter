IF (EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'dbo' AND  TABLE_NAME = 'CUSTOMER'))
drop table CUSTOMER
CREATE TABLE [CUSTOMER] (
    [CustId] varchar(7),
    [CustomerName] varchar(20),
    [CustomerCity] varchar(15),
    [CustomerPhone] varchar(14),
    [Subscription] varchar(12),
    [Dummy] varchar(2)
)