CREATE TABLE tbl1(SRNO INT,col1 VARCHAR(1),col2 VARCHAR(1),col3 VARCHAR(1),col4 VARCHAR(1),col5 VARCHAR(1));


INSERT INTO tbl1 VALUES(1,'A','B','C','D','E');

INSERT INTO tbl1 VALUES(2,NULL,'A','B','C','D');

INSERT INTO tbl1 VALUES(3,'E',NULL,NULL,NULL,'A');

INSERT INTO tbl1 VALUES(4,NULL,'A','E',NULL,'D');

INSERT INTO tbl1 VALUES(5,'E','D','C','B',NULL);


SELECT * FROM tbl1;

drop table tbl1;

--Method 1
select * from tbl1 where COL1='A' OR COL2='A' OR COL3='A' OR COL4='A' OR COL5='A';

--Method 2

select * from tbl1 where COL1='A' UNION ALL
select * from tbl1 where COL2='A' UNION ALL
select * from tbl1 where COL3='A' UNION ALL
select * from tbl1 where COL4='A' UNION ALL
select * from tbl1 where COL5='A' ;

--Method 3

select * from tbl1 where 'A' IN(COL1,COL2,COL3,COL4,COL5);

--Method 4

select * from tbl1 where (COL1 || COL2 || COL3 || COL4 || COL5) LIKE '%A%';

--Method 5

select * from tbl1 where INSTR(COL1 || COL2 || COL3 || COL4 || COL5,'A') > 0;





