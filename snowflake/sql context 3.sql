show functions;

-- Lets see these functions in action and see what result they bring.
show functions like 'CURRENT%';
	-- since they are functions like sum() or avg(), they have to be used within select statement
select  
    current_region(),  
    current_version(), 
    current_user(),    
    current_role(),    
    current_database(), 
    current_schema(),
    current_schemas(),
    current_warehouse();


-- Now set them and see how to change it via SQL without using the UI features
    use role sysadmin; 
    use database my_db;
    use schema my_schema;
    use warehouse sap_load_wh;

    
select
    current_region(),  
    current_version(), 
    current_user(),    
    current_role(),    
    current_database(), 
    current_schema(),
    current_schemas(),
    current_warehouse();



CREATE DATABASE DB01;
USE DATABASE DB01;
CREATE SCHEMA SCHEMA01;

USE SCHEMA SCHEMA01;

USE ROLE SYSADMIN;
