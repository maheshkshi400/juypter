--Problem Statement : 
--Write a SQL query to remove all reversed number pairs from given table. Keep only one random pair .
--Assumption:
--1. There will not be same value for both A and B column.
--2. There will not be same pair of numbers repeating in this table.     



Create Table Reverse_duplicates(
A int,
B int);

insert into Reverse_duplicates values(1,2);
insert into Reverse_duplicates values(3,2);
insert into Reverse_duplicates values(2,4);
insert into Reverse_duplicates values(2,1);
insert into Reverse_duplicates values(5,6);
insert into Reverse_duplicates values(4,2);


SELECT * FROM Reverse_duplicates

--1ST METHOD

SELECT T1.A,T1.B FROM Reverse_duplicates AS T1
LEFT JOIN
Reverse_duplicates AS T2 ON T1.A=T2.B AND T1.B=T2.A
WHERE T1.A < T2.A OR (T2.A IS NULL OR T2.B IS NULL);

--2ND METHOD

SELECT * FROM Reverse_duplicates AS T1 WHERE NOT EXISTS (SELECT * FROM Reverse_duplicates T2
WHERE T1.A=T2.B AND T1.B=T2.A AND T1.A > T2.A);

