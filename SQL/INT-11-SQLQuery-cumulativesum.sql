
--USE DATABASE 

USE EMPLOYEE;

--CREATE TABLE

CREATE TABLE EMP3 (
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
    emp_phone VARCHAR(20)
);



SELECT * FROM DEPT2

select * from dbo.EMP3 order BY emp_id

drop table EMP3


    INSERT INTO EMP3 VALUES
    (1,NEWID(), 'John Doe','Male','', 50000.00, 'IT', 'john.doe@example.com', '123 Main St', 'New York', 'NY', 'USA', '+1 (123) 456-7890')
    INSERT INTO EMP3 VALUES
    (2,NEWID(), 'Jane Smith','Female', 60000.00, 'HR', 'jane.smith@example.com', '456 Elm St', 'Los Angeles', 'CA', 'USA', '+1 (234) 567-8901')
    INSERT INTO EMP3 VALUES
    (3,NEWID(), 'Michael Johnson','Male', 55000.00, 'Finance', 'michael.johnson@example.com', '789 Oak St', 'Chicago', 'IL', 'USA', '+1 (345) 678-9012')
    INSERT INTO EMP3 VALUES
    (4,NEWID(), 'Emily Brown','Female', 52000.00, 'Marketing', 'emily.brown@example.com', '101 Pine St', 'San Francisco', 'CA', 'USA', '+1 (456) 789-0123')
    INSERT INTO EMP3 VALUES
    (5,NEWID(), 'William Wilson','Male', 58000.00, 'IT', 'william.wilson@example.com', '202 Maple St', 'Boston', 'MA', 'USA', '+1 (567) 890-1234')
    INSERT INTO EMP3 VALUES
    (6,NEWID(), 'Elizabeth Taylor','Female', 65000.00, 'HR', 'elizabeth.taylor@example.com', '303 Cedar St', 'Seattle', 'WA', 'USA', '+1 (678) 901-2345')
    INSERT INTO EMP3 VALUES
    (7,NEWID(), 'Christopher Lee','Male', 60000.00, 'Finance', 'christopher.lee@example.com', '404 Birch St', 'Austin', 'TX', 'USA', '+1 (789) 012-3456')
    INSERT INTO EMP3 VALUES
    (8,NEWID(), 'Mary White','Female', 54000.00, 'Marketing', 'mary.white@example.com', '505 Walnut St', 'Denver', 'CO', 'USA', '+1 (890) 123-4567')
    INSERT INTO EMP3 VALUES
    (9,NEWID(), 'James Green','Male', 57000.00, 'IT', 'james.green@example.com', '606 Oak St', 'Miami', 'FL', 'USA', '+1 (901) 234-5678')
    INSERT INTO EMP3 VALUES
    (10,NEWID(), 'Jennifer Martinez','Female', NULL, 'HR', 'jennifer.martinez@example.com', '707 Pine St', 'Portland', 'OR', 'USA', '+1 (012) 345-6789')
    INSERT INTO EMP3 VALUES
    (11,NEWID(), 'Robert Anderson','Male', 59000.00, 'Finance', 'robert.anderson@example.com', '808 Maple St', 'Phoenix', 'AZ', 'USA', '+1 (123) 456-7890')
    INSERT INTO EMP3 VALUES
    (12,NEWID(), 'Susan Clark','Female', 63000.00, 'Marketing', 'susan.clark@example.com', '909 Cedar St', 'Philadelphia', 'PA', 'USA', '+1 (234) 567-8901')
    INSERT INTO EMP3 VALUES
    (13,NEWID(), 'David Baker','Male', 56000.00, 'IT', 'david.baker@example.com', '1010 Birch St', 'Las Vegas', 'NV', 'USA', '+1 (345) 678-9012')
    INSERT INTO EMP3 VALUES
    (14,NEWID(), 'Patricia Carter','Female', 68000.00, 'HR', 'patricia.carter@example.com', '1111 Walnut St', 'Houston', 'TX', 'USA', '+1 (456) 789-0123')
    INSERT INTO EMP3 VALUES
    (15,NEWID(), 'Richard Garcia','Male', 59000.00, 'Finance', 'richard.garcia@example.com', '1212 Oak St', 'San Diego', 'CA', 'USA', '+1 (567) 890-1234')
    INSERT INTO EMP3 VALUES
    (16,NEWID(), 'Linda Perez','Female', 55000.00, 'Marketing', 'linda.perez@example.com', '1313 Pine St', 'San Antonio', 'TX', 'USA', '+1 (678) 901-2345')
    INSERT INTO EMP3 VALUES
    (17,NEWID(), 'Thomas Evans','Male', 61000.00, 'IT', 'thomas.evans@example.com', '1414 Elm St', 'Dallas', 'TX', 'USA', '+1 (789) 012-3456')
    INSERT INTO EMP3 VALUES
    (18,NEWID(), 'Karen Hernandez','Female', 63000.00, 'HR', 'karen.hernandez@example.com', '1515 Cedar St', 'New York', 'NY', 'USA', '+1 (890) 123-4567')
    INSERT INTO EMP3 VALUES
    (19,NEWID(), 'Daniel Murphy','Male', 57000.00, 'Finance', 'daniel.murphy@example.com', '1616 Walnut St', 'Los Angeles', 'CA', 'USA', '+1 (901) 234-5678')
    INSERT INTO EMP3 VALUES
    (20,NEWID(), 'Linda Collins','Female', 60000.00, 'Marketing', 'sarah.collins@example.com', '1717 Maple St', 'Chicago', 'IL', 'USA', '+1 (012) 345-6789')
    INSERT INTO EMP3 VALUES
    (21,NEWID(), 'Steven Torres','Male', 59000.00, 'IT', 'steven.torres@example.com', '1818 Birch St', 'San Francisco', 'CA', 'USA', '+1 (123) 456-7890')
    INSERT INTO EMP3 VALUES
    (22,NEWID(), 'Nancy Diaz','Female', 64000.00, 'HR', 'nancy.diaz@example.com', '1919 Oak St', 'Boston', 'MA', 'USA', '+1 (234) 567-8901')
    INSERT INTO EMP3 VALUES
    (23,NEWID(), 'Mark Richardson','Male', 60000.00, 'Finance', 'mark.richardson@example.com', '2020 Pine St', 'Seattle', 'WA', 'USA', '+1 (345) 678-9012')
    INSERT INTO EMP3 VALUES
    (24,NEWID(), 'Laura Wood','Female', 62000.00, 'Marketing', 'laura.wood@example.com', '2121 Cedar St', 'Austin', 'TX', 'USA', '+1 (456) 789-0123')
    INSERT INTO EMP3 VALUES
    (25,NEWID(), 'Kevin Scott','Male', 58000.00, 'IT', 'kevin.scott@example.com', '2222 Walnut St', 'Denver', 'CO', 'USA', '+1 (567) 890-1234');



-- EMPLOEES COUNT BY DEPT

SELECT emp_department,COUNT(*) FROM emp3 group by emp_department


-- COUNT OF MALE AND FEMALE GROUP BY DEPT.

SELECT 
    emp_department,
    COUNT(CASE WHEN emp_gender = 'male' THEN 1 END) AS male_count,
    COUNT(CASE WHEN emp_gender = 'female' THEN 1 END) AS female_count
FROM 
    EMPLOYEE.dbo.EMP3
GROUP BY 
    emp_department;


--CREATE A TABLE WITH GLOBAL UNIQUE IDENTIFIER

CREATE TABLE GUD (
    ID UNIQUEIDENTIFIER PRIMARY KEY,
    NAME VARCHAR(50),

    -- Add more columns as needed
);


INSERT INTO GUD VALUES(NEWID(),'GANESH');
INSERT INTO GUD VALUES(NEWID(),'mANISH');

SELECT * FROM GUD

DROP TABLE GUD



--USING OF SPLITSTRING

SELECT emp_name,string_split(emp_name,)


SELECT TOP 5 emp_id, emp_name,EMP_salary
FROM EMP3
WHERE emp_department = 'HR'
ORDER BY emp_salary DESC;


