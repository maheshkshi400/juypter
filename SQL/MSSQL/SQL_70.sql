--A ski resort
--company is planning to construct a new ski slope using a 
--pre-existing network of mountain huts and trails between them.
 --A new slope has to
--begin at one of the mountain huts, have a middle station at 
 --another hut connected
--with the first one by a direct trail, and
--end at the third mountain hut 
 --which is also connected by a direct trail to the second hut. The altitude of the three huts chosen 
--for constructing the ski slope has to be strictly decreasing. 

--Assume that:

--there is no trail going from a hut back to itself;
--for every two huts there is at most one direct trail connecting them;
--each hut from table trails occurs in table mountain_huts;

use OTHERS

CREATE TABLE mountain_huts (
    id INTEGER NOT NULL,
    name VARCHAR(40) NOT NULL,
    altitude INTEGER NOT NULL,
    UNIQUE (name),
    UNIQUE (id)
);

insert into mountain_huts values (1, 'Dakonat', 1900);
insert into mountain_huts values (2, 'Natisa', 2100);
insert into mountain_huts values (3, 'Gajantut', 1600);
insert into mountain_huts values (4, 'Rifat', 782);
insert into mountain_huts values (5, 'Tupur', 1370);

CREATE TABLE trails (
    hut1 INTEGER NOT NULL,
    hut2 INTEGER NOT NULL
);

insert into trails values (1, 3);
insert into trails values (3, 2);
insert into trails values (3, 5);
insert into trails values (4, 5);
insert into trails values (1, 5);


SELECT * FROM mountain_huts;
SELECT * FROM trails;


WITH CTE_TRAILS1 AS
    (
        SELECT t1.hut1 AS start_hut, h1.name AS start_hut_name,h1.altitude as start_hut_altitude,
        t1.hut2 AS end_hut
        FROM mountain_huts h1
        JOIN trails t1
        ON t1.hut1=h1.id
    ),
    CTE_TRAILS2 AS
    ( 
        SELECT T2.*,H2.name AS end_hut_name,H2.altitude AS end_hut_altitude,
        CASE WHEN start_hut_altitude>H2.altitude  THEN 1 ELSE 0 END AS altitude_flag
        FROM CTE_TRAILS1 T2 
        JOIN mountain_huts H2
        ON H2.id=T2.end_hut
    ),
    CTE_FINAL AS
    (
        SELECT CASE WHEN altitude_flag = 1 THEN start_hut ELSE end_hut END AS start_hut,
        CASE WHEN altitude_flag = 1 THEN start_hut_name ELSE end_hut_name END AS start_hut_name,
        CASE WHEN altitude_flag = 1 THEN end_hut ELSE start_hut END AS end_hut,
        CASE WHEN altitude_flag = 1 THEN end_hut_name ELSE start_hut_name END AS end_hut_name
        FROM CTE_TRAILS2
    )
SELECT C1.start_hut_name AS start_point,
C1.end_hut_name AS middle_point,
c2.end_hut_name AS end_point
FROM CTE_FINAL C1
JOIN CTE_FINAL C2 ON C1.start_hut=C2.end_hut

    
    

      

