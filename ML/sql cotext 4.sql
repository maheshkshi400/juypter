SHOW WAREHOUSES;

USE WAREHOUSE SAP_LOAD_WH;

SHOW DATABASES;

set $my_wh=current_warehouse();
use database db01;
use schema schema01;

set (my_db,my_schema,my_wh) = (current_database(),current_schema(),current_warehouse())