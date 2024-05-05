--Problem Statement : Write a SQL query to calculate each user's average session time. 
--A session is defined as the time difference between a page_load and page_exit. 
 --Assume a user has only 1 session per day and if there are multiple of the same events on that day, 
 --consider only the latest page_load and earliest page_exit. Output the user_id and their average session time  



 Create table facebook_web_log
(
Userid int,
Time_stamp datetime,
Actions varchar(30)
)


INSERT INTO facebook_web_log values(0,'2019-04-25 13:30:15','page_load')
INSERT INTO facebook_web_log values(0,'2019-04-25 13:30:18','page_load')
INSERT INTO facebook_web_log values(0,'2019-04-25 13:30:40','scroll_down')
INSERT INTO facebook_web_log values(0,'2019-04-25 13:30:45','scroll_up')
INSERT INTO facebook_web_log values(0,'2019-04-25 13:31:10','scroll_down')
INSERT INTO facebook_web_log values(0,'2019-04-25 13:31:25','scroll_down')
INSERT INTO facebook_web_log values(0,'2019-04-25 13:31:40','page_exit')
INSERT INTO facebook_web_log values(1,'2019-04-25 13:40:00','page_load')
INSERT INTO facebook_web_log values(1,'2019-04-25 13:40:10','scroll_down')
INSERT INTO facebook_web_log values(1,'2019-04-25 13:40:15','scroll_down')
INSERT INTO facebook_web_log values(1,'2019-04-25 13:40:20','scroll_down')
INSERT INTO facebook_web_log values(1,'2019-04-25 13:40:25','scroll_down')
INSERT INTO facebook_web_log values(1,'2019-04-25 13:40:30','scroll_down')
INSERT INTO facebook_web_log values(1,'2019-04-25 13:40:35','page_exit')
INSERT INTO facebook_web_log values(2,'2019-04-25 13:41:21','page_load')
INSERT INTO facebook_web_log values(2,'2019-04-25 13:41:30','scroll_down')
INSERT INTO facebook_web_log values(2,'2019-04-25 13:41:35','scroll_down')
INSERT INTO facebook_web_log values(2,'2019-04-25 13:41:40','scroll_up')
INSERT INTO facebook_web_log values(1,'2019-04-26 11:15:00','page_load')
INSERT INTO facebook_web_log values(1,'2019-04-26 11:15:10','scroll_down')
INSERT INTO facebook_web_log values(1,'2019-04-26 11:15:20','scroll_down')
INSERT INTO facebook_web_log values(1,'2019-04-26 11:15:25','scroll_up')
INSERT INTO facebook_web_log values(1,'2019-04-26 11:15:35','page_exit')
INSERT INTO facebook_web_log values(0,'2019-04-28 14:30:15','page_load')
INSERT INTO facebook_web_log values(0,'2019-04-28 14:30:10','page_load')
INSERT INTO facebook_web_log values(0,'2019-04-28 13:30:40','scroll_down')
INSERT INTO facebook_web_log values(0,'2019-04-28 15:31:40','page_exit')  


SELECT * FROM facebook_web_log;

WITH CTE_PAGELOAD AS(
    SELECT Userid,CAST(Time_stamp AS DATE) AS DATES,MAX(Time_stamp) AS MAX_PAGELOAD FROM facebook_web_log
    WHERE Actions='page_load'
    GROUP BY Userid,CAST(Time_stamp AS DATE)
),
CTE_PAGEEXIT AS(
    SELECT Userid,CAST(Time_stamp AS DATE) AS DATES,MIN(Time_stamp) AS MIN_PAGEEXIT FROM facebook_web_log
    WHERE Actions='page_exit'
    GROUP BY Userid,CAST(Time_stamp AS DATE)
)
SELECT P.Userid,CAST(AVG(DATEDIFF(SECOND,MAX_PAGELOAD,MIN_PAGEEXIT)*1.0) AS DECIMAL(5,1)) AS SESSION
    FROM CTE_PAGELOAD AS P 
    INNER JOIN 
    CTE_PAGEEXIT AS E 
    ON P.Userid=E.Userid AND P.DATES=E.DATES
    GROUP BY P.Userid