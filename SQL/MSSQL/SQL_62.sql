--Problem Statement :- There are two tables namely Job_Positions and Job_Employees
--Write an SQL query to get the expected output as shown in next slide.  
--Basically it should display not filled posts as ‘Vacant’ along with the details of the employee:-




create table job_positions
(
id int,
title varchar(100),
groups varchar(10),
levels varchar(10),
payscale int,
totalpost int
);
insert into job_positions values (1, 'General manager', 'A', 'l-15', 10000, 1);
insert into job_positions values (2, 'Manager', 'B', 'l-14', 9000, 5);
insert into job_positions values (3, 'Asst. Manager', 'C', 'l-13', 8000, 10);

create table job_employees
(
id int,
name varchar(100),
position_id int
);
insert into job_employees values (1, 'John Smith', 1);
insert into job_employees values (2, 'Jane Doe', 2);
insert into job_employees values (3, 'Michael Brown', 2);
insert into job_employees values (4, 'Emily Johnson', 2);
insert into job_employees values (5, 'William Lee', 3);
insert into job_employees values (6, 'Jessica Clark', 3);
insert into job_employees values (7, 'Christopher Harris', 3);
insert into job_employees values (8, 'Olivia Wilson', 3);
insert into job_employees values (9, 'Daniel Martinez', 3);
insert into job_employees values (10, 'Sophia Miller', 3);


SELECT * FROM  job_employees;
SELECT * FROM  job_positions;


WITH REC_CTE_JOB AS (
    SELECT
        id,
        title,
        groups,
        levels,
        payscale,
        totalpost,
        1 AS RANK
    FROM 
        job_positions
    UNION ALL
    SELECT
        jp.id,
        jp.title,
        jp.groups,
        jp.levels,
        jp.payscale,
        jp.totalpost,
        rcj.RANK + 1
    FROM 
        REC_CTE_JOB rcj
    INNER JOIN 
        job_positions jp ON rcj.id = jp.id
    WHERE 
        rcj.RANK + 1 <= jp.totalpost
),
CTE_EMP AS (
    SELECT  
        Id,
        name,
        position_id,
        ROW_NUMBER() OVER (PARTITION BY position_id ORDER BY Id) AS RANK1
    FROM 
        job_employees    
)

SELECT 
    rcj.id,
    rcj.title,
    rcj.groups,
    rcj.levels,
    rcj.payscale,
    rcj.totalpost,
    Emp.Id AS employee_id,
    COALESCE(name,'VAcANT') AS employee_name
FROM 
    REC_CTE_JOB AS rcj 
LEFT OUTER JOIN 
    CTE_EMP AS Emp ON Emp.position_id = rcj.id
                     AND rcj.RANK = Emp.RANK1
                     ORDER BY rcj.id,rcj.RANK

