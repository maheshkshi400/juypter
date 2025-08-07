use EMPLOYEES

CREATE TABLE Emp(
[Group]  varchar(20),
[Sequence]  int )

INSERT INTO Emp VALUES('A',1)
INSERT INTO Emp VALUES('A',2)
INSERT INTO Emp VALUES('A',3)
INSERT INTO Emp VALUES('A',5)
INSERT INTO Emp VALUES('A',6)
INSERT INTO Emp VALUES('A',8)
INSERT INTO Emp VALUES('A',9)
INSERT INTO Emp VALUES('B',11)
INSERT INTO Emp VALUES('C',1)
INSERT INTO Emp VALUES('C',2)
INSERT INTO Emp VALUES('C',3)

SELECT * FROM Emp;

--write a sql query to find out the maximum and minimum values of continious sequence in each group.


SELECT [GROUP], MIN([Sequence]) AS MIN_SEQ, MAX([Sequence]) AS MAX_SEQ
FROM (
    SELECT [GROUP], [Sequence],
    [Sequence] - ROW_NUMBER() OVER (PARTITION BY [GROUP] ORDER BY [Sequence]) AS [SPLIT]
    FROM Emp
) A
GROUP BY [GROUP], [SPLIT]
ORDER BY [GROUP];
