USE OTHERS

Create Table Match_Result (
Team_1 Varchar(20),
Team_2 Varchar(20),
Result Varchar(20)
)

Insert into Match_Result Values('India', 'Australia','India');
Insert into Match_Result Values('India', 'England','England');
Insert into Match_Result Values('SouthAfrica', 'India','India');
Insert into Match_Result Values('Australia', 'England',NULL);
Insert into Match_Result Values('England', 'SouthAfrica','SouthAfrica');
Insert into Match_Result Values('Australia', 'India','Australia');

--WRITE SQL QUERY TO DISPALY TOTAL NO. OF MATCHES PLAYED,
--MATCHES WON,MATCHES TIED AND MATCHES LOST FRO EACH TEAM

SELECT * FROM Match_Result;

-- TOTAL NUMBER OF MATCHES PLAYED BY EACH TEAM


WITH
    CTE_Matches_played
    AS
    (
        SELECT Team, SUM(Match_played) AS Total_Matches_Played
        FROM (
                        SELECT Team_1 as Team, COUNT(*) AS Match_played
                FROM Match_Result
                GROUP BY Team_1

            UNION ALL

                SELECT Team_2 as Team, COUNT(*) AS Match_played
                FROM Match_Result
                GROUP BY Team_2
    ) AS A
        GROUP BY Team
    )



--TOTAL NO. OF MATCH WON BY EACH TEAM
WITH CTE_Match_won AS (
    SELECT Result, COUNT(*) AS Match_won 
    FROM Match_Result 
    WHERE Result IS NOT NULL 
    GROUP BY Result
);


--TOTAL NO. OF MATCHES TIED IF ANY

WITH CTE_Match_Tie AS (
    SELECT Team, SUM(Tie_cnt) AS Tie_cnt 
    FROM (
        SELECT Team_1 AS Team, COUNT(*) AS Tie_cnt 
        FROM Match_Result 
        WHERE Result IS NULL 
        GROUP BY Team_1

        UNION ALL

        SELECT Team_2 AS Team, COUNT(*) AS Tie_cnt 
        FROM Match_Result 
        WHERE Result IS NULL 
        GROUP BY Team_2
    ) AS t
    GROUP BY Team
),
CTE_Match_won AS (
    SELECT Result, COUNT(*) AS Match_won 
    FROM Match_Result 
    WHERE Result IS NOT NULL 
    GROUP BY Result
),
CTE_Matches_played AS (
    SELECT Team, 
           COUNT(*) AS Match_played 
    FROM (
        SELECT Team_1 AS Team FROM Match_Result
        UNION ALL
        SELECT Team_2 AS Team FROM Match_Result
    ) AS TotalMatches
    GROUP BY Team
)
SELECT A.Team, 
       A.Match_played,
       ISNULL(B.Match_won, 0) AS Match_won,
       ISNULL(C.Tie_cnt, 0) AS Match_tie,
       (A.Match_played - ISNULL(B.Match_won, 0) - ISNULL(C.Tie_cnt, 0)) AS Match_lost
FROM CTE_Matches_played AS A 
LEFT JOIN CTE_Match_won AS B ON A.Team = B.Result
LEFT JOIN CTE_Match_Tie AS C ON A.Team = C.Team;



