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


