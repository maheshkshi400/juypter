--Players Table contains the group of each player in which they belong to. 
--Match table contains details of the match played. The winner in each group is 
--the player who scored the maximum total points within the group. In the case of a tie, 
--the lowest player_id wins.
--ou can assume that, in each match, players belong to the same group.
--Write an SQL query to find the winner in each group. 

USE STUDENTS
Create table Players
(player_id int,
group_id int);

insert into players values (15,1);
insert into players values (25,1);
insert into players values (30,1);
insert into players values (45,1);
insert into players values (10,2);
insert into players values (35,2);
insert into players values (50,2);
insert into players values (20,3);
insert into players values (40,3);

create table Matches
(
match_id int,
first_player int,
second_player int,
first_score int,
second_score int);

insert into matches values (1,15,45,3,0);
insert into matches values (2,30,25,1,2);
insert into matches values (3,30,15,2,0);
insert into matches values (4,40,20,5,2);
insert into matches values (5,35,50,1,1);

SELECT * FROM Players
SELECT * FROM Matches

WITH CTE_ALL_PLAYERS AS (
    SELECT first_player AS Player, first_score AS Scores
    FROM Matches
    UNION ALL
    SELECT second_player AS Player, second_score AS Scores
    FROM Matches
),
CTE_TOTAL_POINTS AS (
    SELECT Player, SUM(Scores) AS TotScores 
    FROM CTE_ALL_PLAYERS
    GROUP BY Player
),
CTE_RANK AS (
    SELECT 
        C.Player AS player_id,
        C.TotScores,
        P.group_id,
        ROW_NUMBER() OVER (PARTITION BY P.group_id ORDER BY C.TotScores DESC) AS RANK
    FROM 
        CTE_TOTAL_POINTS AS C
    INNER JOIN 
        Players AS P ON C.Player = P.player_id
)

SELECT 
    player_id,
    group_id
FROM CTE_RANK
WHERE RANK=1



