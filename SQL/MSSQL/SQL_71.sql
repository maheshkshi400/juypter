use OTHERS

CREATE TABLE A(ID INT);
INSERT INTO A VALUES(1),(1),(1);

SELECT * FROM A;

CREATE TABLE B(ID INT);
INSERT INTO B VALUES(1),(1);

SELECT * FROM B;

-- INNER JOIN: Returns rows that have matching values in both tables
SELECT * FROM A
INNER JOIN B ON A.ID = B.ID;

-- LEFT OUTER JOIN: Returns all rows from the left table, and the matched rows from the right table
SELECT * FROM A
LEFT JOIN B ON A.ID = B.ID;

-- RIGHT OUTER JOIN: Returns all rows from the right table, and the matched rows from the left table
SELECT * FROM A
RIGHT JOIN B ON A.ID = B.ID;

-- FULL OUTER JOIN: Returns all rows when there is a match in either left or right table
SELECT * FROM A
FULL OUTER JOIN B ON A.ID = B.ID;