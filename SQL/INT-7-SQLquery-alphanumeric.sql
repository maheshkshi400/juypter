
-- CREATE DATABASE

CREATE DATABASE OTHER

-- USE DATABASE

USE OTHER

--CREATNG TABLE

CREATE TABLE UserData (
    id INT PRIMARY KEY,
    username VARCHAR(50)
);


-- INSERT DATA NTO TABLE

INSERT INTO UserData VALUES (1, 'john123')
insert into UserData values(2,'04888KELLY59')
insert into UserData values(3, 'bob456')
insert into UserData values(4, 'charlie23')
insert into UserData values(5, 'sarah45')
insert into UserData values(6, 'david007')
insert into UserData values(7, 'emily1234')
insert into UserData values(8, '9945AMODA')
insert into UserData values(9, 'linda2015')
insert into UserData values(10, 'kevin12')
insert into UserData values(11, 'natalie34')
insert into UserData values(12, 'peter45')
insert into UserData values(13, 'olivia56')
insert into UserData values(14, 'jack128')
insert into UserData values(15, 'grace999')
insert into UserData values(16,'0488JENELIA')
insert into UserData values(17,'PETER23467')
insert into UserData values(18,'0488859')
insert into UserData values(19,'P3902034')
insert into UserData values(20,'PLATO345')
insert into UserData values(21, 'alice789')
insert into UserData values(22, 'violet789')
insert into UserData values(23, 'vincent-^789')
insert into UserData values(24, 'vanila789')
insert into UserData values(25, 'Lucy smith')
insert into UserData values(26, 'George^ smith')
insert into UserData values(27, '% gorriella heaven')
insert into UserData values(28, 'Nora.-Fatehi')
insert into UserData values(29, 'love ^666 lemon')
insert into UserData values(30, 'bela .@ simran')


select * from UserData

SELECT DISTINCT username from UserData WHERE username IS NOT
NULL AND 
username LIKE '%[a-z0-9 ]%'


select * from UserData

SELECT DISTINCT username from UserData WHERE username IS NOT
NULL AND 
username  NOT LIKE '%[^a-z0-9]%'




