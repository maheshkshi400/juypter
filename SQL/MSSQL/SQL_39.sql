--Problem Statement :-  Club Table has three columns namely Club_ID, Member_id and EDU.
--Same member can be a part of different club.  The EDU column has different rewards. The points for these awards are as follows :-
--MM – 0.5, CI – 0.5, CO- 0.5, CD – 1, CL-1, CM – 1
--Write a SQL query to find the  total points scored by each club as shown in the desired output. 
--Club_Id Reward
--1001 4.0
--1002 6.0
--1003 NULL


<<<<<<< HEAD
=======
 use EMPLOYEE
>>>>>>> 591731762cd9d3280aded8d5b3ca1797ecd3a1bf
Create Table Club (
Club_Id int,
Member_Id int,
EDU varchar(30))

Insert into Club Values (1001,210,Null)
Insert into Club Values (1001,211,'MM:CI')
Insert into Club Values (1002,215,'CD:CI:CM')
Insert into Club Values (1002,216,'CL:CM')
Insert into Club Values (1002,217,'MM:CM')
Insert into Club Values (1003,255,Null)
Insert into Club Values (1001,216,'CO:CD:CL:MM')
<<<<<<< HEAD
Insert into Club Values (1002,210,Null)
=======
Insert into Club Values (1002,210,Null)


SELECT  
    Club_Id,
    SUM(
        CASE 
            WHEN value IN ('MM', 'CI', 'CO') THEN 0.5
            WHEN value IN ('CD', 'CL', 'CM') THEN 1.0
            
        END
    ) AS REWARD
FROM 
    (
        SELECT Club_Id, Member_Id, value 
        FROM Club C 
        OUTER APPLY STRING_SPLIT(C.EDU, ':')
    ) X 
GROUP BY 
    Club_Id;

>>>>>>> 591731762cd9d3280aded8d5b3ca1797ecd3a1bf
