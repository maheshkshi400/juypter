 --Problem Statement :- Staff Table has two columns namely Id and Name.

 create table Staff_Tbl
(
Id      int,
Name    varchar(40)
);
insert into Staff_Tbl values (1, 'Staff1');
insert into Staff_Tbl values (2, 'Staff2');
insert into Staff_Tbl values (3, 'Staff3');
insert into Staff_Tbl values (4, 'Staff4');
insert into Staff_Tbl values (5, 'Staff5');
insert into Staff_Tbl values (6, 'Staff6');
insert into Staff_Tbl values (7, 'Staff7');
insert into Staff_Tbl values (8, 'Staff8');


SELECT * FROM Staff_Tbl;


WITH CTE_STAFF AS (
    SELECT CONCAT(Id,' ',Name) AS Name,
           NTILE(4) OVER (ORDER BY Id) as Grp
    FROM Staff_Tbl
)
SELECT STRING_AGG(Name, ',') AS RESULT 
FROM CTE_STAFF
GROUP BY Grp;

