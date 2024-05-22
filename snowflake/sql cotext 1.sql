use role sysadmin;
use schema my_db.my_schema;
select current_schema(), current_database(), current_role();
create or replace table my_logging_01(
  log_id integer AUTOINCREMENT not null,
  user_name string,
  role_name string,
  db_name string,
  schema_name string,
  wh_name string
);
-- lets check what happens when we insert
USE ROLE SYSADMIN
insert into my_logging_01 (user_name,role_name,db_name,schema_name,wh_name) 
    values (
            current_user(),
            current_role(),
            current_database(),
            current_schema(),
            current_warehouse());
            
select * from my_logging_01;
-- create a task
create or replace task my_log_task_001
  warehouse = 'compute_wh'
  schedule  = '1 minute'
as
   insert into my_logging_01(user_name,role_name,db_name,schema_name,wh_name) values (current_user(),current_role(),current_database(),current_schema(),current_warehouse());
   
-- start the task
alter task my_log_task_001 resume;
-- check the information schema for 
select *  from table(information_schema.task_history()) where name ='MY_LOG_TASK_001' order by scheduled_time;
select * from my_logging_01;
