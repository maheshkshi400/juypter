# Example 1 -order by month 

create table Sales(MonthName varchar(20),sale int);

select * from Sales;

insert into sales values('April',7000);
insert into sales values('Febuary',5000);
insert into sales values('August',10000);
insert into sales values('May',8000);
insert into sales values('septmeber',4000);
insert into sales values('December',11000);
insert into sales values('November',7000);
insert into sales values('June',9000);
insert into sales values('January',2000);
insert into sales values('Octomber',8000);
insert into sales values('july',13000);
insert into sales values('March',7000);



select * from Sales order by case 
when MonthName ='january' then 1
when MonthName ='Febuary' then 2
when MonthName ='March' then 3
when MonthName ='April' then 4
when MonthName ='May' then 5
when MonthName ='June' then 6
when MonthName ='july' then 7
when MonthName ='August' then 8
when MonthName ='septmeber' then 9
when MonthName ='Octomber' then 10
when MonthName ='November' then 11
when MonthName ='December' then 12
else Null end


# Example 2 -sales order by date

create table Sales_date(Date date,sales int)

Select * from Sales_date;

insert into Sales_date values('2022-04-18',7000)
insert into Sales_date values('2022-07-20',5000)
insert into Sales_date values('2022-03-11',10000)
insert into Sales_date values('2022-08-10',8000)
insert into Sales_date values('2022-07-15',6000)
insert into Sales_date values('2022-03-13',12000)
insert into Sales_date values('2022-07-10',9000)
insert into Sales_date values('2022-11-23',10000)
insert into Sales_date values('2022-09-19',15000)
insert into Sales_date values('2022-12-23',7000)
insert into Sales_date values('2022-02-30',15000)
insert into Sales_date values('2022-08-10',25000)
insert into Sales_date values('2022-06-17',23000)
insert into Sales_date values('2022-11-13',17000)
insert into Sales_date values('2022-10-15',16000)

select datename(month,date) as MonthName,month(date)as month,sales from Sales_date
order by month(date)