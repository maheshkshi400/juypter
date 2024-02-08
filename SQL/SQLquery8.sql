CREATE TABLE Dimemployee
(empid int,
Firstname varchar(20),
Lastaname varchar(20),
Birthdate DATE);

SELECT * FROM Dimemployee;

insert into Dimemployee values(1,'Ganesh','Hirave','1984-10-15');
insert into Dimemployee values(2,'Sukanya','Malvade','1977-08-19');
insert into Dimemployee values(3,'Bhagya','Surkute','1985-07-12');
insert into Dimemployee values(4,'Shreya','Mittal','1975-09-23');
insert into Dimemployee values(5,'Kamana','Shitole','1980-07-14')
insert into Dimemployee values(6,'Dhani','Devdhar','1970-06-13');
insert into Dimemployee values(7,'Karishma','Katwe','1982-07-25');
insert into Dimemployee values(8,'Vaibhav','Shinde','1987-09-19')
insert into Dimemployee values(9,'Dhani','Devdhar','1992-03-27');
insert into Dimemployee values(10,'shital','Shakti','1965-08-15');
insert into Dimemployee values(11,'Simaran','Kurkute','1977-12-10');


select Firstname,Lastaname,DATEDIFF(YY,Birthdate,GETDATE()) FROM Dimemployee;

SELECT Firstname,Lastaname,Birthdate,
CASE 
WHEN DATEADD(YEAR,DATEDIFF(YY,Birthdate,GETDATE()),Birthdate) > GETDATE()
THEN DATEDIFF(YY,Birthdate,GETDATE())-1
ELSE

DATEDIFF(YY,Birthdate,GETDATE()) END AS AGE

FROM Dimemployee

WHERE MONTH(Birthdate)=12;
