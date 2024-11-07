--The list of the city names from a table do not start with vowels and not end with vowels
--your result connot cotain duplicates


create table station(
id int,
city varchar(20)
)

insert into station values(1,'delhi'),
(2, 'mumbai'),
(3, 'kolkata'),
(4, 'chennai'),
(5, 'bengaluru'),
(6, 'hyderabad'),
(7, 'ahmedabad'),
(8, 'pune'),
(9, 'jaipur');

SELECT * FROM station;

SELECT DISTINCT city FROM station
WHERE city NOT LIKE '[aeiouAEIOU]%' AND city NOT LIKE '%[aeiouAEIOU]';

SELECT DISTINCT city FROM station
WHERE SUBSTRING('city',1,1) not IN('a', 'e', 'i', 'o', 'u','A','E','I','O','U') AND 
SUBSTRING('city',-1, 1) not IN('a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U');