use role accountadmin;


CREATE STORAGE INTEGRATION my_s3_integration
TYPE = EXTERNAL_STAGE
STORAGE_PROVIDER = S3
ENABLED = TRUE
STORAGE_AWS_ROLE_ARN = 'arn:aws:iam::767397664631:role/snowflake-aws-role'
STORAGE_ALLOWED_LOCATIONS= ('S3://mahesh9096')


desc INTEGRATION my_s3_integration;

use role sysadmin;

create database ecommerce_db;

create schema ecommerce_dev;

CREATE FILE FORMAT csv_load_format
TYPE = 'CSV'
COMPRESSION ='AUTO'
FIELD_DELIMITER = ','
RECORD_DELIMETER = '\n' --
SKIP_HEADER = 1
FIELD_OPTINALLY_ENCLOSED_BY = '\042' --
TRIM_SPACE = FALSE
ERROOR_ON_COLUMN_COUNT_MISMATCH =TRUE
ESCAPE = 'NONE'
ESCAPE_UNeNCLOSED_FIELD = '\134'
DATE_FORMAT ='AUTO'
TIMESTAMP_FORMAT = 'AUTO';


-- CREATE A STAGE 

CREATE STAGE stg_mmahesh9096_csv_dev
STORAGE_INTEGRATION = my_s3_integration
url = 's3://mahesh9096/adult_tr.csv'
file_format = csv_load_format




