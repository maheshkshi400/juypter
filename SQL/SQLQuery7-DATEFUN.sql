create table SALES1(
OrderNumber vARCHAR(15),
OrderDate date,
ShipDate date,
CustomerStateID int,
ProductID int,
Quantity int,
unitprice float,
DiscountAmount float,
Promotioncode varchar(15));

select * from SALES1;

insert into SALES1 values
('TT00013765','2013-10-15','2013-10-25',14,3,1,70.95,0.00,NULL);

insert into SALES1 values
('TT00013567','2013-11-27','2013-12-07',13,3,1,70.95,0.00,NULL);

insert into SALES1 values
('TT00013503','2013-03-17','2013-03-25',35,3,1,70.95,7.00,NULL);

insert into SALES1 values
('TT00013727','2013-07-09','2013-07-18',3,3,1,70.95,0.00,NULL);

insert into SALES1 values
('TT00013708','2013-09-23','2013-10-01',5,3,1,70.95,9.00,'SALE20137');
#
insert into SALES1 values
('TT00013121','2013-11-27','2013-12-07',40,3,1,127.95,0.00,NULL);

insert into SALES1 values
('TT00013912','2013-06-08','2013-06-20',33,3,1,170.95,0.00,NULL);

insert into SALES1 values
('TT00013603','2013-11-27','2013-12-07',23,13,1,70.95,4.00,'SALE20131');

insert into SALES1 values
('TT00013712','2013-11-27','2013-12-12',14,3,1,340.95,12.00,NULL);

update SALES1 SET ShipDate='2013-06-24' where OrderNumber='TT00013403'; 

insert into SALES1 values
('TT00013413','2013-06-03','2013-06-24',9,3,1,72.95,0.00,'SALE20135');

insert into SALES1 values
('TT00013227','2013-10-23','2013-11-18',5,3,1,70.95,0.00,NULL);

delete from SALES1 WHERE OrderNumber='TT00013527'

select * from SALES1;

select DATENAME(DW,OrderDate),OrderDate FROM SALES1;

select DATEPART(DW,OrderDate),OrderDate FROM SALES1;

SELECT DATEDIFF(DD,OrderDate,ShipDate) FROM SALES1;

SELECT OrderDate,ShipDate,DATEDIFF(DD,OrderDate,ShipDate) + 1 FROM SALES1;

SELECT OrderDate,ShipDate,DATEDIFF(WW,OrderDate,ShipDate) * 2 FROM SALES1;


SELECT OrderDate, ShipDate,
(DATEDIFF(DD,OrderDate, ShipDate) + 1)
- DATEDIFF(WW,OrderDate,ShipDate) * 2
- (CASE WHEN DATENAME(DW,OrderDate) = 'SUNDAY' THEN 1 ELSE 0 END)
- (CASE WHEN DATENAME(DW,ShipDate) = 'SATURDAY' THEN 1 ELSE 0 END)


FROM SALES1









