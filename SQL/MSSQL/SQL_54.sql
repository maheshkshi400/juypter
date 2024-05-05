
--Google wants to know how many days of bench time each consultant had in 2021.  
--Being "on the bench" means you have a gap between two client engagements. 
--Assume that each consultant is only staffed to one consulting engagement at a time. 
--Write a query to pull each employee ID and their total bench time in days during 2021.
--Assumptions:    
--All listed employees are current employees who were hired before 2021. 
--The engagements in the consulting_engagements table are complete for the year 2021.



Create Table Staffing (
employee_id int,
is_consultant bit,
job_id int)

Insert into Staffing values(111,1,7898)
Insert into Staffing values(121,0,6789)
Insert into Staffing values(111,1,9020)
Insert into Staffing values(156,1,4455)
Insert into Staffing values(111,1,8885)

Create Table Consulting_engagements(
job_id int,
client_id int,
start_dates date,
end_dates date,
contract_amount int
)


Insert into Consulting_engagements values (6789,20045,'06/01/2021 00:00:00','11/12/2021 00:00:00',33040.00)
Insert into Consulting_engagements values (8885,20022,'07/05/2021 00:00:00','07/31/2021 00:00:00',4670.00)
Insert into Consulting_engagements values (9020,20345,'08/14/2021 00:00:00','10/31/2021 00:00:00',22370.00)
Insert into Consulting_engagements values (4455,20001,'01/25/2021 00:00:00','05/31/2021 00:00:00',31839.00)
Insert into Consulting_engagements values (7898,20076,'05/25/2021 00:00:00','06/30/2021 00:00:00',11290.00)
Insert into Consulting_engagements values (3462,20099,'09/15/2021 00:00:00','11/15/2021 00:00:00',240000.00)
Insert into Consulting_engagements values (2354,20001,'10/14/2021 00:00:00','12/31/2021 00:00:00',54000.00)


SELECT * FROM Staffing;
SELECT * FROM Consulting_engagements;


WITH CTE_BENCH_DAYS AS (
    SELECT employee_id,
           DATEDIFF(DAY,start_dates,end_dates ) AS WORKING_DAY
    FROM Staffing AS S
    INNER JOIN Consulting_engagements AS C ON S.job_id = C.job_id 
    WHERE is_consultant = 1
)
SELECT  employee_id,
        365-SUM(WORKING_DAY) AS 'BENCH_DAYS'
FROM CTE_BENCH_DAYS
GROUP BY employee_id
