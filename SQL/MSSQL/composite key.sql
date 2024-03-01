

Create table Authors
(
	AuthorId int primary key,
	FirstName nvarchar(20),
	LastName nvarchar(20),
	Gender nvarchar(20)
)
Go

Create table Books
(
	BookId int primary key,
	BookTitle nvarchar(50),
	Price int,
	Published bit
)
Go

Create table Authors_Books
(
	AuthorId int not null foreign key references Authors(AuthorId),
	BookId int not null foreign key references Books(BookId)

	Constraint PK_Books_Authors Primary Key (AuthorId, BookId)
)
Go

Insert into Authors values (1, 'Mark', 'Dunn', 'Male')
Insert into Authors values (2, 'Sara', 'Longhorn', 'Female')
Insert into Authors values (3, 'Jessica', 'Dale', 'Female')
Insert into Authors values (4, 'Steve', 'Wicht', 'Male')
Go

Insert into Books values (1, 'Learn SQL', 10, 1)
Insert into Books values (2, 'Learn C#', 20, 1)
Insert into Books values (3, 'Learn CSS', 15, 1)
Insert into Books values (4, 'Learn HTML', 20, 0)
Go

Insert into Authors_Books values (1, 1)
Insert into Authors_Books values (1, 2)
Insert into Authors_Books values (2, 1)

USE EMPLOYEE

SELECT TOP 1 COUNT(ENAME)
FROM EMP5
GROUP BY ENAME
ORDER BY COUNT(ENAME) DESC;
