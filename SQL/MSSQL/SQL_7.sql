CREATE TABLE TEAM (ID INT,TEAMNAME VARCHAR(20))

DROP TABLE TEAM

INSERT INTO TEAM VALUES(1,'INDIA')
INSERT INTO TEAM VALUES(2,'AUSTRALIA')
INSERT INTO TEAM VALUES(3,'ENGLAND')
INSERT INTO TEAM VALUES(4,'NEW ZEALAND')

SELECT * FROM TEAM

-- WRITE AN SQL QUERY TO FETCH TOTAL SCHEDULE OF MATCHES BETWEEN  EACH TEAM VS OOSITE TEAM

SELECT CONCAT(t1.TEAMNAME, ' vs ', t2.TEAMNAME) as MATCHES 
FROM 
    (SELECT ID, TEAMNAME FROM TEAM) AS t1
INNER JOIN 
    (SELECT ID, TEAMNAME FROM TEAM) AS t2
ON t1.ID < t2.ID -- Ensuring that teams are not matched with themselves
ORDER BY t1.ID;

--BY USING CTE

WITH CTE_Table1 AS
(
    SELECT ID, TEAMNAME FROM TEAM
),
CTE_Table2 AS
(
    SELECT ID, TEAMNAME FROM TEAM
)

SELECT CONCAT(t1.TEAMNAME, ' vs ', t2.TEAMNAME) as MATCHES 
FROM CTE_Table1 t1 INNER JOIN CTE_Table2 t2
ON t1.ID < t2.ID;
