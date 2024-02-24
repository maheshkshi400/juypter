


USE  SALES

Create Table Countries
(
 Country nvarchar(50),
 City nvarchar(50)
)
GO

SELECT * FROM Countries;


Insert into Countries values ('USA','New York')
Insert into Countries values ('USA','Houston')
Insert into Countries values ('USA','Dallas')

Insert into Countries values ('India','Hyderabad')
Insert into Countries values ('India','Bangalore')
Insert into Countries values ('India','New Delhi')

Insert into Countries values ('UK','London')
Insert into Countries values ('UK','Birmingham')
Insert into Countries values ('UK','Manchester')


select Country,city1,city2,city3
FROM
(select Country,city,
'city' + CAST(ROW_NUMBER() OVER (PARTITION BY Country ORDER BY Country)AS VARCHAR(10))COLUMNSEQUENCE 
FROM Countries)
 temp

PIVOT
(
MAX(City) for COLUMNSEQUENCE IN (City1,City2,City3)
)
 PIV






