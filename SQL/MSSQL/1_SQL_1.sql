create table icc_world_cup
(
Team_1 Varchar(20),
Team_2 Varchar(20),
Winner Varchar(20)
);
INSERT INTO icc_world_cup values('India','SL','India');
INSERT INTO icc_world_cup values('SL','Aus','Aus');
INSERT INTO icc_world_cup values('SA','Eng','Eng');
INSERT INTO icc_world_cup values('Eng','NZ','NZ');
INSERT INTO icc_world_cup values('Aus','India','India');

select * from icc_world_cup;


SELECT TEAM_NAME,COUNT(1) AS NO_OF_MATCHES_PLAYED,SUM(WIN_FLAG ) AS NO_OF_MATCHES_WON,
COUNT(1)-SUM(WIN_FLAG ) AS NO_OF_LOSSES
FROM (
SELECT Team_1 AS TEAM_NAME,CASE WHEN Team_1=WINNER THEN 1 ELSE 0 END AS WIN_FLAG FROM icc_world_cup
UNION ALL
SELECT Team_2 AS TEAM_NAME,CASE WHEN Team_2=WINNER THEN 1 ELSE 0 END AS WIN_FLAG FROM icc_world_cup
)A
GROUP BY TEAM_NAME
ORDER BY NO_OF_MATCHES_WON DESC;




CREATE DATABASE EMPLOYEE;

SELECT * FROM EMP_TBL1;


DBCC CHECKDB (EMPLOYEE);




