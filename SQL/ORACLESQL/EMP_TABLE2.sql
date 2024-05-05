

-- Create EMP2 table
CREATE TABLE EMP2 (
    EMPID NUMBER,
    FULL_NAME VARCHAR2(50),
    EMAIL VARCHAR2(50)
);

-- Insert 25 records into EMP2 table
INSERT INTO EMP2 (EMPID, FULL_NAME, EMAIL) VALUES (1, 'John Smith', 'john.smith@example.com');
INSERT INTO EMP2 (EMPID, FULL_NAME, EMAIL) VALUES (2, 'Alice Johnson', 'alice.johnson@example.com');
INSERT INTO EMP2 (EMPID, FULL_NAME, EMAIL) VALUES (3, 'Michael Brown', 'michael.brown@example.com');
INSERT INTO EMP2 (EMPID, FULL_NAME, EMAIL) VALUES (4, 'Emily Davis', 'emily.davis@example.com');
INSERT INTO EMP2 (EMPID, FULL_NAME, EMAIL) VALUES (5, 'David Wilson', 'david.wilson@example.com');
INSERT INTO EMP2 (EMPID, FULL_NAME, EMAIL) VALUES (6, 'Jessica Martinez', 'jessica.martinez@example.com');
INSERT INTO EMP2 (EMPID, FULL_NAME, EMAIL) VALUES (7, 'Daniel Taylor', 'daniel.taylor@example.com');
INSERT INTO EMP2 (EMPID, FULL_NAME, EMAIL) VALUES (8, 'Sarah Miller', 'sarah.miller@example.com');
INSERT INTO EMP2 (EMPID, FULL_NAME, EMAIL) VALUES (9, 'Ryan Anderson', 'ryan.anderson@example.com');
INSERT INTO EMP2 (EMPID, FULL_NAME, EMAIL) VALUES (10, 'Elizabeth Thomas', 'elizabeth.thomas@example.com');
INSERT INTO EMP2 (EMPID, FULL_NAME, EMAIL) VALUES (11, 'Matthew White', 'matthew.white@example.com');
INSERT INTO EMP2 (EMPID, FULL_NAME, EMAIL) VALUES (12, 'Olivia Harris', 'olivia.harris@example.com');
INSERT INTO EMP2 (EMPID, FULL_NAME, EMAIL) VALUES (13, 'William Jackson', 'william.jackson@example.com');
INSERT INTO EMP2 (EMPID, FULL_NAME, EMAIL) VALUES (14, 'Sophia Garcia', 'sophia.garcia@example.com');
INSERT INTO EMP2 (EMPID, FULL_NAME, EMAIL) VALUES (15, 'Alexander Martinez', 'alexander.martinez@example.com');
INSERT INTO EMP2 (EMPID, FULL_NAME, EMAIL) VALUES (16, 'Chloe Thompson', 'chloe.thompson@example.com');
INSERT INTO EMP2 (EMPID, FULL_NAME, EMAIL) VALUES (17, 'James Rodriguez', 'james.rodriguez@example.com');
INSERT INTO EMP2 (EMPID, FULL_NAME, EMAIL) VALUES (18, 'Ava Lopez', 'ava.lopez@example.com');
INSERT INTO EMP2 (EMPID, FULL_NAME, EMAIL) VALUES (19, 'Logan Wilson', 'logan.wilson@example.com');
INSERT INTO EMP2 (EMPID, FULL_NAME, EMAIL) VALUES (20, 'Madison Garcia', 'madison.garcia@example.com');
INSERT INTO EMP2 (EMPID, FULL_NAME, EMAIL) VALUES (21, 'Lucas Brown', 'lucas.brown@example.com');
INSERT INTO EMP2 (EMPID, FULL_NAME, EMAIL) VALUES (22, 'Sophia Lewis', 'sophia.lewis@example.com');
INSERT INTO EMP2 (EMPID, FULL_NAME, EMAIL) VALUES (23, 'Ethan Martinez', 'ethan.martinez@example.com');
INSERT INTO EMP2 (EMPID, FULL_NAME, EMAIL) VALUES (24, 'Emma Davis', 'emma.davis@example.com');
INSERT INTO EMP2 (EMPID, FULL_NAME, EMAIL) VALUES (25, 'Aiden Johnson', 'aiden.johnson@example.com');


SELECT * FROM EMP2;


-- Create the Employee table
CREATE TABLE Employee (
    empid INT PRIMARY KEY,
    empname VARCHAR(100),
    deptno INT,
    gender VARCHAR(10)
);

-- Insert sample data into the Employee table

INSERT INTO Employee VALUES(1, 'John', 101, 'male');
INSERT INTO Employee VALUES(2, 'Emma', 102, 'female');
INSERT INTO Employee VALUES(3, 'Michael', 101, 'male');
INSERT INTO Employee VALUES(4, 'Sophia', 103, 'female');
INSERT INTO Employee VALUES(5, 'David', 102, 'male');

SELECT  * FROM Employee;

SELECT 
    deptno,
    SUM(CASE WHEN gender = 'male' THEN 1 ELSE 0 END) AS male_count,
    SUM(CASE WHEN gender = 'female' THEN 1 ELSE 0 END) AS female_count
FROM 
    Employee
GROUP BY 
    deptno
ORDER BY 
    deptno;


