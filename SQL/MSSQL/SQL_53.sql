--Problem Statement : Assume you have the table below containing information on Facebook user actions. 
--Write a query to obtain the active user retention in July 2022. Output the month (in numerical format 1, 2, 3) 
--and the number of monthly active users (MAUs).
--An active user is a user who has user action (‘sign-in’, ‘like’, or ‘comment’) in the current month and last month.


Create Table user_actions (
users_id int,
event_id int,
event_type varchar(50),
event_date datetime )

Insert into user_actions Values(445, 7765 ,'sign-in', '05/31/2022 12:00:00')
Insert into user_actions Values(445, 3634 ,'like', '06/05/2022 12:00:00')
Insert into user_actions Values(648, 3124 ,'like', '06/18/2022 12:00:00')
Insert into user_actions Values(648, 2725 ,'sign-in', '06/22/2022 12:00:00')
Insert into user_actions Values(648, 8568 ,'comment', '07/03/2022 12:00:00')
Insert into user_actions Values(445, 4363 ,'sign-in', '07/05/2022 12:00:00')
Insert into user_actions Values(445, 2425 ,'like', '07/06/2022 12:00:00')
Insert into user_actions Values(445, 2484 ,'like', '07/22/2022 12:00:00')
Insert into user_actions Values(648, 1423 ,'sign-in', '07/26/2022 12:00:00')
Insert into user_actions Values(445, 5235 ,'comment', '07/29/2022 12:00:00')
Insert into user_actions Values(742, 6458 ,'sign-in', '07/03/2022 12:00:00')
Insert into user_actions Values(742, 1374 ,'comment', '07/19/2022 12:00:00')