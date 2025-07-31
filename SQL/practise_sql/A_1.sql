
use JOINS
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

SELECT team_name, count(1) as no_of_matches_played, SUM(win_flag) AS no_of_matches_won,
    (count(1)-SUM(win_flag))AS no_of_matches_lost
FROM(
        SELECT team_1 as team_name, case when team_1=winner then 1 else 0 end as win_flag
        FROM icc_world_cup
    UNION
        SELECT team_2 as team_name, case when team_2=winner then 1 else 0 end as win_flag
        FROM icc_world_cup) A
GROUP BY team_name
ORDER BY no_of_matches_won DESC;