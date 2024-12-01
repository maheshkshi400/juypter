CREATE TABLE Table1 (
    Column1 INT
);

INSERT INTO Table1 (Column1)
VALUES (1), (0), (0), (1), (1), (NULL);

CREATE TABLE Table2 (
    Column2 INT
);

INSERT INTO Table2 (Column2)
VALUES (1), (0), (0), (0), (1), (3), (NULL), (NULL);

-- INNER JOIN: Returns rows that have matching values in both tables
SELECT *
FROM Table1
INNER JOIN Table2 ON Table1.Column1 = Table2.Column2;

-- LEFT OUTER JOIN: Returns all rows from the left table, and the matched rows from the right table
SELECT *
FROM Table1
LEFT JOIN Table2 ON Table1.Column1 = Table2.Column2;

-- RIGHT OUTER JOIN: Returns all rows from the right table, and the matched rows from the left table
SELECT *
FROM Table1
RIGHT JOIN Table2 ON Table1.Column1 = Table2.Column2;

-- FULL OUTER JOIN: Returns all rows when there is a match in either left or right table
SELECT *
FROM Table1
FULL OUTER JOIN Table2 ON Table1.Column1 = Table2.Column2;