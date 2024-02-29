
CREATE TABLE EMP6 (
    emp_id INT,
    GBLID UNIQUEIDENTIFIER PRIMARY KEY,
    emp_name VARCHAR(50),
    emp_gender char(6),
    emp_salary MONEY,
    emp_department VARCHAR(50),
    emp_email VARCHAR(100),
    emp_address VARCHAR(100),
    emp_city VARCHAR(50),
    emp_state VARCHAR(50),
    emp_country VARCHAR(50),
    emp_phone VARCHAR(20),
    start_date DATE,
    end_date DATE
);


SELECT * FROM dbo.EMP6

DROP TABLE DBO.EMP6


SELECT DATEADD(MM, 2,GETDATE()) AS DateAdd;

SELECT DATEADD(YY, 2, '2017/08/25') AS DateAdd;