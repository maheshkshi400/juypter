
USE OTHERS

create table entries ( 
name varchar(20),
address varchar(20),
email varchar(20),
floor int,
resources varchar(10));

insert into entries 
values ('A','Bangalore','A@gmail.com',1,'CPU'),('A','Bangalore','A1@gmail.com',1,'CPU'),('A','Bangalore','A2@gmail.com',2,'DESKTOP')
,('B','Bangalore','B@gmail.com',2,'DESKTOP'),('B','Bangalore','B1@gmail.com',2,'DESKTOP'),('B','Bangalore','B2@gmail.com',1,'MONITOR')


SELECT * FROM entries;

WITH distinct_resources AS
    (
        SELECT distinct name, resources
        FROM entries
    )
,agg_resorces as
    (
        SELECT name,STRING_AGG(resources, ',') as used_resounces
        FROM distinct_resources
        GROUP BY name
    )
,total_visits AS
    (
        SELECT name, COUNT(1) as total_visits, STRING_AGG(resources,',') as resounces_used
        FROM entries
        GROUP BY name
    )
,FLOOR_VISIT AS
    (
        SELECT name, floor, COUNT(1) no_of_floor_visit,
            RANK() OVER(PARTITION BY name ORDER BY COUNT(1) DESC) AS rank
        FROM entries
        GROUP BY name,floor
    )
SELECT FV.name, FV.floor as most_visited_floor, TV.total_visits, AR.used_resounces
FROM FLOOR_VISIT FV
    INNER JOIN total_visits TV on FV.name=TV.name
    INNER JOIN agg_resorces AR on FV.name=AR.name
WHERE rank=1;


