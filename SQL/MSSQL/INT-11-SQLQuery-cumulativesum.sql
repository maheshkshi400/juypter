
--USE DATABASE 

USE EMPLOYEE;

--CREATE TABLE

CREATE TABLE EMP3 (
    emp_id INT,
    GBLID UNIQUEIDENTIFIER PRIMARY KEY,
    emp_name VARCHAR(50),
    emp_gender char(6),
    DATEOFBIRTH DATETIME,
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
    (1,NEWID(), 'John Doe','Male','1984-15-10 10:10:00', 50000.00, 'IT', 'john.doe@example.com', '123 Main St', 'New York', 'NY', 'USA', '+1 (123) 456-7890')

    INSERT INTO EMP3 VALUES
    (2,NEWID(), 'Jane Smith','Female','1991-12-11 03:50:40',60000.00, 'HR', 'jane.smith@example.com', '456 Elm St', 'Los Angeles', 'CA', 'USA', '+1 (234) 567-8901')
    INSERT INTO EMP3 VALUES
    (3,NEWID(), 'Michael Johnson','Male','1987-07-19 04:57:30', 55000.00, 'Finance', 'michael.johnson@example.com', '789 Oak St', 'Chicago', 'IL', 'USA', '+1 (345) 678-9012')
    INSERT INTO EMP3 VALUES
    (4,NEWID(), 'Emily Brown','Female','1990-05-21 7:00:00', 52000.00, 'Marketing', 'emily.brown@example.com', '101 Pine St', 'San Francisco', 'CA', 'USA', '+1 (456) 789-0123')
    INSERT INTO EMP3 VALUES
    (5,NEWID(), 'William Wilson','Male','1980-03-15 00:05:00', 58000.00, 'IT', 'william.wilson@example.com', '202 Maple St', 'Boston', 'MA', 'USA', '+1 (567) 890-1234')
    INSERT INTO EMP3 VALUES
    (6,NEWID(), 'Elizabeth Taylor','Female','1982-07-13 05:00:00', 65000.00, 'HR', 'elizabeth.taylor@example.com', '303 Cedar St', 'Seattle', 'WA', 'USA', '+1 (678) 901-2345')
    INSERT INTO EMP3 VALUES
    (7,NEWID(), 'Christopher Lee','Male','1987-07-19 03:57:30', 60000.00, 'Finance', 'christopher.lee@example.com', '404 Birch St', 'Austin', 'TX', 'USA', '+1 (789) 012-3456')
    INSERT INTO EMP3 VALUES
    (8,NEWID(), 'Mary White','Female','1978-07-15 07:12:15', 54000.00, 'Marketing', 'mary.white@example.com', '505 Walnut St', 'Denver', 'CO', 'USA', '+1 (890) 123-4567')
    INSERT INTO EMP3 VALUES
    (9,NEWID(), 'James Green','Male','1982-05-27 06:00:15', 57000.00, 'IT', 'james.green@example.com', '606 Oak St', 'Miami', 'FL', 'USA', '+1 (901) 234-5678')
    INSERT INTO EMP3 VALUES
    (10,NEWID(), 'Jennifer Martinez','Female','1982-07-13 05:00:00', NULL, 'HR', 'jennifer.martinez@example.com', '707 Pine St', 'Portland', 'OR', 'USA', '+1 (012) 345-6789')
    INSERT INTO EMP3 VALUES
    (11,NEWID(), 'Robert Anderson','Male','1990-04-03 07:52:00', 59000.00, 'Finance', 'robert.anderson@example.com', '808 Maple St', 'Phoenix', 'AZ', 'USA', '+1 (123) 456-7890')
    INSERT INTO EMP3 VALUES
    (12,NEWID(), 'Susan Clark','Female','1995-11-23 05:00:00', 63000.00, 'Marketing', 'susan.clark@example.com', '909 Cedar St', 'Philadelphia', 'PA', 'USA', '+1 (234) 567-8901')
    INSERT INTO EMP3 VALUES
    (13,NEWID(), 'David Baker','Male','1970-08-15 03:57:30 ', 56000.00, 'IT', 'david.baker@example.com', '1010 Birch St', 'Las Vegas', 'NV', 'USA', '+1 (345) 678-9012')
    INSERT INTO EMP3 VALUES
    (14,NEWID(), 'Patricia Carter','Female','1975-04-13 08:40:00', 68000.00, 'HR', 'patricia.carter@example.com', '1111 Walnut St', 'Houston', 'TX', 'USA', '+1 (456) 789-0123')
    INSERT INTO EMP3 VALUES
    (15,NEWID(), 'Richard Garcia','Male','1985-12-27 06:40:36 54290', 59000.00, 'Finance', 'richard.garcia@example.com', '1212 Oak St', 'San Diego', 'CA', 'USA', '+1 (567) 890-1234')
    INSERT INTO EMP3 VALUES
    (16,NEWID(), 'Linda Perez','Female','1973-05-01 06:40:36 54290', 55000.00, 'Marketing', 'linda.perez@example.com', '1313 Pine St', 'San Antonio', 'TX', 'USA', '+1 (678) 901-2345')
    INSERT INTO EMP3 VALUES
    (17,NEWID(), 'Thomas Evans','Male','1993-07-30 08:52:43 560', 61000.00, 'IT', 'thomas.evans@example.com', '1414 Elm St', 'Dallas', 'TX', 'USA', '+1 (789) 012-3456')
    INSERT INTO EMP3 VALUES
    (18,NEWID(), 'Karen Hernandez','Female','1986-04-12 08:40:00', 63000.00, 'HR', 'karen.hernandez@example.com', '1515 Cedar St', 'New York', 'NY', 'USA', '+1 (890) 123-4567')
    INSERT INTO EMP3 VALUES
    (19,NEWID(), 'Daniel Murphy','Male','1983-12-20 09:18:43', 57000.00, 'Finance', 'daniel.murphy@example.com', '1616 Walnut St', 'Los Angeles', 'CA', 'USA', '+1 (901) 234-5678')
    INSERT INTO EMP3 VALUES
    (20,NEWID(), 'Linda Collins','Female','1985-09-10 06:56:00', 60000.00, 'Marketing', 'sarah.collins@example.com', '1717 Maple St', 'Chicago', 'IL', 'USA', '+1 (012) 345-6789')
    INSERT INTO EMP3 VALUES
    (21,NEWID(), 'Steven Torres','Male','1977-09-30 12:05:00', 59000.00, 'IT', 'steven.torres@example.com', '1818 Birch St', 'San Francisco', 'CA', 'USA', '+1 (123) 456-7890')
    INSERT INTO EMP3 VALUES
    (22,NEWID(), 'Nancy Diaz','Female','1990-05-19  06:40:36 54290', 64000.00, 'HR', 'nancy.diaz@example.com', '1919 Oak St', 'Boston', 'MA', 'USA', '+1 (234) 567-8901')
    INSERT INTO EMP3 VALUES
    (23,NEWID(), 'Mark Richardson','Male','1982-07-13 05:00:00', 60000.00, 'Finance', 'mark.richardson@example.com', '2020 Pine St', 'Seattle', 'WA', 'USA', '+1 (345) 678-9012')
    INSERT INTO EMP3 VALUES
    (24,NEWID(), 'Laura Wood','Female','1991-12-11 03:50:40', 62000.00, 'Marketing', 'laura.wood@example.com', '2121 Cedar St', 'Austin', 'TX', 'USA', '+1 (456) 789-0123')
    INSERT INTO EMP3 VALUES
    (25,NEWID(), 'Kevin Scott','Male','1978-07-15 07:12:15', 58000.00, 'IT', 'kevin.scott@example.com', '2222 Walnut St', 'Denver', 'CO', 'USA', '+1 (567) 890-1234');



-- EMPLOEES COUNT BY DEPT

SELECT emp_department,COUNT(*) FROM emp3 group by emp_department


-- COUNT OF MALE AND FEMALE GROUP BY DEPT.

SELECT 
    emp_department,
    COUNT(CASE WHEN emp_gender = 'male' THEN 1 END) AS male_count,
    COUNT(CASE WHEN emp_gender = 'female' THEN 1 END) AS female_count
FROM 
    EMPLOYEE.dbo.EMP5
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






