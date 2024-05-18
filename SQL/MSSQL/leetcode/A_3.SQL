-- WRITE AN QUERY TO REPORT DUPLICATE EMAILS.

USE OTHER

CREATE TABLE Person (Email varchar(40));

DROP TABLE Person;


INSERT INTO Person VALUES ('maheskshi400@gmail.com');
INSERT INTO Person VALUES ('ganeshtupe07@gmail.com');
INSERT INTO Person VALUES ('maheskshi400@gmail.com');



SELECT * FROM Person;

SELECT Email
FROM Person
GROUP BY Email
HAVING COUNT(Email) > 1;