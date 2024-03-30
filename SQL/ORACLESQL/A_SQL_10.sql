CREATE TABLE student (
    sno     NUMBER,
    name   VARCHAR2(30),
    mark   NUMBER,
    result varchar2(1),
 dept   varchar2(5),
 year     number
);

BEGIN
    FOR i IN 1..1000 LOOP
        INSERT INTO student (sno,name,mark,dept,year) 
        VALUES (i,'STUDENT_'|| i,trunc(dbms_random.value(1,100)),trunc(dbms_random.value(1,6)),trunc(dbms_random.value(1,5)));
    END LOOP;
    COMMIT;
END;
/

update student set result='P' 
where mark >=35;
update student set result='F' 
where mark <35;

update student set dept='CSE' where dept='1';
update student set dept='ECE' where dept='2';
update student set dept='EEE' where dept='3';
update student set dept='MECH' where dept='4';
update student set dept='CVE' where dept='5';


commit;

--SQLs to get result dashboard

select * from (
select dept,
       'YEAR : '||year year,
       'P = '||count(decode(result,'P','P',null)) ||', F = '||count(decode(result,'F','F',null)) R_count
from student
group by dept,year)
PIVOT ( max ( R_count)
            FOR dept
            IN ( 'CSE' CSE,'ECE' ECE,'MECH' MECH,'EEE' EEE,'CVE' CVE)
        )
        order by year;

select * from (
select dept,
       year,
       'P = '||count(decode(result,'P','P',null)) ||', F = '||count(decode(result,'F','F',null)) R_count
from student
group by dept,year)
PIVOT ( max ( R_count)
            FOR year
            IN ( 1 as I,2 II,3 III,4 IV)
        );
  
select dept, max(case when year=1 then F_count end),
              max(case when year=2 then F_count end),
              max(case when year=3 then F_count end),
              max(case when year=4 then F_count end)
from (
select dept,year,'P = '||count(decode(result,'P','P',null)) ||', F = '||count(decode(result,'F','F',null)) F_count
from student
group by dept,year
order by 1,2)
group by dept;


-- by using function


create or replace function get_result_count (pin_dept varchar2, pin_year number)
                  return varchar2 as
   lv_cnt varchar2(100);
begin
    select 'P = '||count(decode(result,'P','P',null)) 
       ||', F = '||count(decode(result,'F','F',null)) 
    into lv_cnt
    from student
    where dept=pin_dept
    and year = pin_year;
 
 return lv_cnt;
exception when others then
   return null;
end ;
/


select dept,get_result_count(dept,1) Y_I,
            get_result_count(dept,2) Y_II,
            get_result_count(dept,3) Y_III,
            get_result_count(dept,4) Y_IV
from(
select distinct dept
from student);

select year,get_result_count('ECE',year) ECE,
            get_result_count('CSE',year) CSE ,
            get_result_count('MECH',year) MECH,
            get_result_count('CVE',year) CVE,
            get_result_count('EEE',year) EEE
from(
select distinct year
from student);