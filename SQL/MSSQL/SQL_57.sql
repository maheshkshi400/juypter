--Google's marketing team is making a Superbowl commercial and needs a 
--simple statistic to put on their TV ad: the median number of searches a person made last year.
--However, at Google scale, querying the 2 trillion searches is too costly. Luckily, you have access 
--to the summary table which tells you the number of searches made last year and how many Google users 
--fall into that bucket.
--Write a query to report the median of searches made by a user. Round the median to one decimal poi


Create Table search_frequency (
searches int,
num_users int
)

Insert into search_frequency Values(1,2)
Insert into search_frequency Values(4,1)
Insert into search_frequency Values(2,2)
Insert into search_frequency Values(3,3)
Insert into search_frequency Values(6,1)
Insert into search_frequency Values(5,3)
Insert into search_frequency Values(7,2)


WITH CTE_MEDIAN AS(
    SELECT 
        searches,num_users,1 AS TEMP 
    FROM 
        search_frequency
    UNION ALL
    SELECT 
        searches,num_users,TEMP+1 
    FROM CTE_MEDIAN 
    WHERE TEMP+1 <= num_users
)
SELECT DISTINCT ROUND(PERCENTILE_CONT(.5) WITHIN GROUP (ORDER BY searches) OVER(),1) AS MEDIAN
FROM CTE_MEDIAN;

