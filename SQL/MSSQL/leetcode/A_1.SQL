Create table Person1 (personId int, firstName varchar(20), lastName varchar(255));

Create table Address (addressId int, personId int, city varchar(20), state varchar(255));

insert into Person1 (personId,firstName,lastName) values ('1', 'Wang', 'Allen');
insert into Person1 (personId,firstName,lastName) values ('2', 'Alice', 'Bob');

insert into Address (addressId, personId, city, state) values ('1', '2', 'New York City', 'New York');
insert into Address (addressId, personId, city, state) values ('2', '3', 'Leetcode', 'California');


SELECT p.firstName, p.lastName, a.city, a.state
FROM Person1 p LEFT JOIN Address a ON p.personId = a.personId;


