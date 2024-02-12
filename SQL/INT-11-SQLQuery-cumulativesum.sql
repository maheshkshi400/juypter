CREATE TABLE EMP3 (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    emp_salary DECIMAL(10, 2),
    emp_department VARCHAR(50),
    emp_email VARCHAR(100),
    emp_address VARCHAR(100),
    emp_city VARCHAR(50),
    emp_state VARCHAR(50),
    emp_country VARCHAR(50),
    emp_phone VARCHAR(20)
);

SELECT * FROM DEPT

select * from emp3

drop table emp3



INSERT INTO EMP3 VALUES

    (1, 'John Doe', 50000.00, 'IT', 'john.doe@example.com', '123 Main St', 'New York', 'NY', 'USA', '+1 (123) 456-7890')
    INSERT INTO EMP3 VALUES
    (2, 'Jane Smith', 60000.00, 'HR', 'jane.smith@example.com', '456 Elm St', 'Los Angeles', 'CA', 'USA', '+1 (234) 567-8901')
    INSERT INTO EMP3 VALUES
    (3, 'Michael Johnson', 55000.00, 'Finance', 'michael.johnson@example.com', '789 Oak St', 'Chicago', 'IL', 'USA', '+1 (345) 678-9012')
    INSERT INTO EMP3 VALUES
    (4, 'Emily Brown', 52000.00, 'Marketing', 'emily.brown@example.com', '101 Pine St', 'San Francisco', 'CA', 'USA', '+1 (456) 789-0123')
    INSERT INTO EMP3 VALUES
    (5, 'William Wilson', 58000.00, 'IT', 'william.wilson@example.com', '202 Maple St', 'Boston', 'MA', 'USA', '+1 (567) 890-1234')
    INSERT INTO EMP3 VALUES
    (6, 'Elizabeth Taylor', 65000.00, 'HR', 'elizabeth.taylor@example.com', '303 Cedar St', 'Seattle', 'WA', 'USA', '+1 (678) 901-2345')
    INSERT INTO EMP3 VALUES
    (7, 'Christopher Lee', 60000.00, 'Finance', 'christopher.lee@example.com', '404 Birch St', 'Austin', 'TX', 'USA', '+1 (789) 012-3456')
    INSERT INTO EMP3 VALUES
    (8, 'Mary White', 54000.00, 'Marketing', 'mary.white@example.com', '505 Walnut St', 'Denver', 'CO', 'USA', '+1 (890) 123-4567')
    INSERT INTO EMP3 VALUES
    (9, 'James Green', 57000.00, 'IT', 'james.green@example.com', '606 Oak St', 'Miami', 'FL', 'USA', '+1 (901) 234-5678')
    INSERT INTO EMP3 VALUES
    (10, 'Jennifer Martinez', NULL, 'HR', 'jennifer.martinez@example.com', '707 Pine St', 'Portland', 'OR', 'USA', '+1 (012) 345-6789')
    INSERT INTO EMP3 VALUES
    (11, 'Robert Anderson', 59000.00, 'Finance', 'robert.anderson@example.com', '808 Maple St', 'Phoenix', 'AZ', 'USA', '+1 (123) 456-7890')
    INSERT INTO EMP3 VALUES
    (12, 'Susan Clark', 63000.00, 'Marketing', 'susan.clark@example.com', '909 Cedar St', 'Philadelphia', 'PA', 'USA', '+1 (234) 567-8901')
    INSERT INTO EMP3 VALUES
    (13, 'David Baker', 56000.00, 'IT', 'david.baker@example.com', '1010 Birch St', 'Las Vegas', 'NV', 'USA', '+1 (345) 678-9012')
    INSERT INTO EMP3 VALUES
    (14, 'Patricia Carter', 68000.00, 'HR', 'patricia.carter@example.com', '1111 Walnut St', 'Houston', 'TX', 'USA', '+1 (456) 789-0123')
    INSERT INTO EMP3 VALUES
    (15, 'Richard Garcia', 59000.00, 'Finance', 'richard.garcia@example.com', '1212 Oak St', 'San Diego', 'CA', 'USA', '+1 (567) 890-1234')
    INSERT INTO EMP3 VALUES
    (16, 'Linda Perez', 55000.00, 'Marketing', 'linda.perez@example.com', '1313 Pine St', 'San Antonio', 'TX', 'USA', '+1 (678) 901-2345')
    INSERT INTO EMP3 VALUES
    (17, 'Thomas Evans', 61000.00, 'IT', 'thomas.evans@example.com', '1414 Elm St', 'Dallas', 'TX', 'USA', '+1 (789) 012-3456')
    INSERT INTO EMP3 VALUES
    (18, 'Karen Hernandez', 63000.00, 'HR', 'karen.hernandez@example.com', '1515 Cedar St', 'New York', 'NY', 'USA', '+1 (890) 123-4567')
    INSERT INTO EMP3 VALUES
    (19, 'Daniel Murphy', 57000.00, 'Finance', 'daniel.murphy@example.com', '1616 Walnut St', 'Los Angeles', 'CA', 'USA', '+1 (901) 234-5678')
    INSERT INTO EMP3 VALUES
    (20, 'Linda Collins', 60000.00, 'Marketing', 'sarah.collins@example.com', '1717 Maple St', 'Chicago', 'IL', 'USA', '+1 (012) 345-6789')
    INSERT INTO EMP3 VALUES
    (21, 'Steven Torres', 59000.00, 'IT', 'steven.torres@example.com', '1818 Birch St', 'San Francisco', 'CA', 'USA', '+1 (123) 456-7890')
    INSERT INTO EMP3 VALUES
    (22, 'Nancy Diaz', 64000.00, 'HR', 'nancy.diaz@example.com', '1919 Oak St', 'Boston', 'MA', 'USA', '+1 (234) 567-8901')
    INSERT INTO EMP3 VALUES
    (23, 'Mark Richardson', 60000.00, 'Finance', 'mark.richardson@example.com', '2020 Pine St', 'Seattle', 'WA', 'USA', '+1 (345) 678-9012')
    INSERT INTO EMP3 VALUES
    (24, 'Laura Wood', 62000.00, 'Marketing', 'laura.wood@example.com', '2121 Cedar St', 'Austin', 'TX', 'USA', '+1 (456) 789-0123')
    INSERT INTO EMP3 VALUES
    (25, 'Kevin Scott', 58000.00, 'IT', 'kevin.scott@example.com', '2222 Walnut St', 'Denver', 'CO', 'USA', '+1 (567) 890-1234');


SELECT *,
SUM(emp_salary) OVER (PARTITION BY emp_department ORDER BY emp_name) FROM emp3

SELECT COUNT(*) FROM emp3 group by emp_department