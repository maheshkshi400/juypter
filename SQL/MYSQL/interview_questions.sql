

--sql to find repeated  characters in  your name mahesh



WITH CharCounts AS (
  SELECT 
    LOWER(SUBSTRING('mahesh', number, 1)) AS char,
    COUNT(*) AS count
  FROM 
    (SELECT 1 AS number UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4 UNION ALL 
    SELECT 5 UNION ALL SELECT 6) AS numbers
  WHERE 
    number <= LEN('mahesh')
  GROUP BY 
    SUBSTRING('mahesh', number, 1)
)
SELECT char
FROM CharCounts
WHERE count > 1;

--how to calculate first half and second half reccords in a table



use EMPLOYEES;

SELECT *
FROM (
    SELECT *, ROW_NUMBER() OVER (ORDER BY sal) AS row_num,
           COUNT(*) OVER () AS total_count
    FROM EMP2
) ranked
WHERE row_num > FLOOR(total_count / 2.0);

--sql to validate email id in the email column

use EMPLOYEES;
drop table EMP_email;

create table EMP_email(
ID int,
NAME varchar(50),
EMAIL_id varchar(50)
);
insert into EMP_email values(1,'mahesh','mk345@gmail.com');
insert into EMP_email values(2,'Gahesh','ganes.com');


select * from EMP_email  where EMAIL_id  not like '%@%';


--sql to list last 5 records from the table 

use EMPLOYEES;

select * from (
select *, ROW_NUMBER() over (order by (select 1)) as rownum
from EMP2
) a where a.rownum<=5 order by a.rownum desc;


--SQL to find null values in two columns (c1, c2) in the table?

--Sql to display only employee names who having M as first character
use EMPLOYEES;
select ENAME from EMP2 where ENAME like 'M%';


--SQL to display employees name who having M as first character without using like operator? 
use EMPLOYEES;
select ENAME from EMP2 where LEFT(ENAME, 1) = 'M';

--Sql to department wise, month wise aggregate  minimum,  maximum salary ?
use EMPLOYEES;
select DEPTNO, MONTH(HIREDATE) AS MONTH, MIN(SAL) AS MIN_SAL, MAX(SAL) AS MAX_SAL
from EMP2
group by DEPTNO, MONTH(HIREDATE)
order by DEPTNO, MONTH;


-- Sql to find records which are present in table_a and not in the table_b without using Not operator? 
use EMPLOYEES;
SELECT * FROM table_a
WHERE id IN (SELECT id FROM table_a INTERSECT SELECT id FROM table_b);

--Sql to list first 3 to 7 records in the the table? 
use EMPLOYEES;
select * from (
select *,ROW_NUMBER() over (order by (select 1)) as rownum
from EMP2
) a where a.rownum between 3 and 7;


-- Sql to Delete repeated ids in the table?
use EMPLOYEES;
WITH CTE AS (
    SELECT *, ROW_NUMBER() OVER (PARTITION BY EMPNO ORDER BY EMPNO) AS row_num
    FROM EMP2
)
DELETE FROM CTE WHERE row_num > 1;


-- Sql to find distinct ids in the table?
use EMPLOYEES;
select distinct EMPNO from EMP2;

--SQL to create an empty table_a as table_b?
use EMPLOYEES;

--NTH SALARY FROM THE TABLE



--Write the self join to find the employees and his managers names?
use EMPLOYEES;
select e.ENAME as EMPLOYEE_NAME,ISNULL(m.ENAME,'BOSS') as MANAGER_NAME
from EMP2 e
join EMP2 m on e.MGR = m.EMPNO;

--lfeft outer join
use EMPLOYEES; 
select e.ENAME as EMPLOYEE_NAME,ISNULL(m.ENAME,'BOSS') as MANAGER_NAME
from EMP2 e
left join EMP2 m on e.MGR = m.EMPNO;



SELECT * FROM (SELECT EMP2.*,DENSE_RANK() OVER (PARTITION BY DEPTNO ORDER BY SAL DESC ) 
AS RANK FROM EMP2) RANKED_SAL WHERE RANK=1


use SALES;
drop table orders_2;
CREATE TABLE orders_2 (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE ,
    total_amount DECIMAL(10, 2)
);
insert into orders_2 VALUES 
(1, 1001, '2023-05-01', 2000.00),(2, 1002, '2023-05-02', 600.00);
SELECT * FROM orders_2;

CREATE TABLE ORDER_ITEMS_2 (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    unit_price DECIMAL(10, 2)
);
insert into ORDER_ITEMS_2 VALUES 
(1,1001,101,1, 1200.00), 
(2,1001,103,2, 100.00), 
(3,1002,102,1,800.00);

SELECT * FROM ORDER_ITEMS_2;

CREATE TABLE PRODUCTS (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(255),
    category_id VARCHAR(255),
    price DECIMAL(10, 2)
);
insert into PRODUCTS VALUES 
(101, 'laptop',1, 1200.00), 
(102, 'smartphone',1,800.00),
(103, 'headphone',2, 100.00);

SELECT * FROM PRODUCTS;

--write a sql query to fetch top 5 selling products for each day
use SALES;


WITH product_sales AS (
    SELECT 
        o.order_date,
        p.product_name,
        SUM(oi.quantity) AS total_quantity_sold,
        ROW_NUMBER() OVER (PARTITION BY o.order_date ORDER BY SUM(oi.quantity) DESC) AS rank
    FROM 
        orders_2 o
    JOIN 
        order_items_2 oi ON o.order_id = oi.order_id
    JOIN 
        products p ON oi.product_id = p.product_id
    GROUP BY 
        o.order_date, p.product_name
)
SELECT 
    order_date,
    product_name,
    total_quantity_sold
FROM 
    product_sales
WHERE 
    rank = 1
ORDER BY 
    order_date, rank;


;

--
CREATE DATABASE OTHER;

CREATE TABLE Mission_Crew (
    mission_id INT,
    astronaut_id INT,
    role VARCHAR(255)
);

INSERT INTO Mission_Crew VALUES
(101, 1, 'Commander'),
(101, 2, 'Flight Engineer'),
(102, 1, 'Pilot'),
(102, 3, 'Mission Specialist'),
(103, 2, 'Commander'),
(103, 4, 'Flight Engineer'),
(104, 1, 'Commander'),
(104, 3, 'Mission Specialist');


CREATE TABLE Space_Stations (
    station_id INT,
    station_name VARCHAR(255),
    launch_date DATE,
    deorbit_date DATE
);

INSERT INTO Space_Stations VALUES
(201, 'ISS', '1998-11-20', NULL),
(202, 'Tiangong', '2021-04-29', NULL),
(203, 'Mir', '1986-02-20', '2001-03-23');


CREATE TABLE Astronauts (
    astronaut_id INT,
    name VARCHAR(255),
    nationality VARCHAR(255),
    birth_date DATE
);

INSERT INTO Astronauts VALUES
(1, 'John Doe', 'USA', '1980-05-15'),
(2, 'Jane Smith', 'Russia', '1985-09-22'),
(3, 'Alice Johnson', 'Canada', '1982-03-10'),
(4, 'Bob Williams', 'UK', '1978-11-30');


CREATE TABLE Missions (
    mission_id INT,
    mission_name VARCHAR(255),
    start_date DATE,
    end_date DATE
);

INSERT INTO Missions VALUES
(101, 'Alpha', '2022-01-01', '2022-03-01'),
(102, 'Beta', '2022-04-01', '2022-06-30'),
(103, 'Gamma', '2022-07-15', '2022-09-15'),
(104, 'Delta', '2022-10-01', '2022-12-31');


CREATE TABLE Station_Visits (
    visit_id INT,
    mission_id INT,
    station_id INT,
    docking_date DATE,
    undocking_date DATE
);

INSERT INTO Station_Visits VALUES
(301, 101, 201, '2022-01-02', '2022-02-28'),
(302, 102, 202, '2022-04-02', '2022-06-29'),
(303, 103, 201, '2022-07-16', '2022-08-15'),
(304, 103, 203, '2022-08-20', '2022-09-14'),
(305, 104, 201, '2022-10-02', '2022-11-15'),
(306, 104, 202, '2022-11-20', '2022-12-30');


-- write sql query will list all astronauts who have participated in more than one mission

SELECT a.astronaut_id, a.name
FROM Astronauts a
JOIN Mission_Crew mc ON a.astronaut_id = mc.astronaut_id
GROUP BY a.astronaut_id, a.name
HAVING COUNT(DISTINCT mc.mission_id) > 1;


-- 2. Find the top 3 countries with the most cumulative days spent in space by their astronauts.

WITH AstronautSpaceTime AS (
    SELECT 
        a.nationality,
        SUM(DATEDIFF(DAY, sv.docking_date, sv.undocking_date)) AS total_days_in_space
    FROM 
        Astronauts a
    JOIN Mission_Crew mc ON a.astronaut_id = mc.astronaut_id
    JOIN Station_Visits sv ON mc.mission_id = sv.mission_id
    GROUP BY 
        a.nationality
)

SELECT 
    nationality,
    total_days_in_space,
    RANK() OVER (ORDER BY total_days_in_space DESC) AS country_rank
FROM 
    AstronautSpaceTime
WHERE 
    country_rank <= 3;

-- 3. Find astronauts who have visited at least 3 different space stations,and rank them based on their total time spent in space across all missions.

WITH AstronautSpaceVisits AS (
    SELECT 
        a.astronaut_id,
        a.name,
        SUM(DATEDIFF(DAY, sv.docking_date, sv.undocking_date)) AS total_days_in_space
    FROM 
        Astronauts a
    JOIN Mission_Crew mc ON a.astronaut_id = mc.astronaut_id
    JOIN Station_Visits sv ON mc.mission_id = sv.mission_id
    GROUP BY 
        a.astronaut_id,
        a.name
),

AstronautMultipleStations AS (
    SELECT 
        astronaut_id,
        name,
        total_days_in_space
    FROM 
        AstronautSpaceVisits
    WHERE 
        (SELECT COUNT(DISTINCT station_id) FROM Station_Visits WHERE mission_id IN (SELECT mission_id FROM Mission_Crew WHERE astronaut_id = AstronautSpaceVisits.astronaut_id)) >= 3
)

SELECT 
    astronaut_id,
    name,
    total_days_in_space,
    RANK() OVER (ORDER BY total_days_in_space DESC) AS astronaut_rank
FROM 
    AstronautMultipleStations;



--Problem Statement:

--Given an OrdersDetails table with columns order_id, product_id, and quantity, 
--identify orders that are imbalanced. An order is considered imbalanced if the maximum 
--quantity of any product in the order is strictly greater than the average quantity of all 
--products in that order.
  
use SALES
CREATE TABLE orders_items_3 (
    order_id INT,
    product_id INT,
    quantity INT
);

INSERT INTO orders_items_3 VALUES
(1, 1, 12),
(1, 2, 10),
(1, 3, 5),
(1, 3, 10),
(2, 1, 4),
(2, 1, 4),
(2, 4, 4),
(2, 5, 6),
(3, 3, 5),
(3, 4, 18),
(4, 5, 2),
(4, 6, 8),
(5, 7, 9),
(5, 8, 9),
(3, 9, 20),
(2, 9, 4);


WITH OrderStats AS (
    SELECT
        order_id,
        MAX(quantity) AS max_quantity,
        AVG(quantity) AS avg_quantity
    FROM
        orders_items_3
    GROUP BY
        order_id
)

SELECT
    order_id
FROM
    OrderStats
WHERE
    max_quantity > avg_quantity;




--SQL Query to Find the Employee with Longest Time Between Hire and First Promotion


CREATE TABLE Employee_5 (
    employee_id INT,
    name VARCHAR(255),
    department_id INT,
    salary INT,
    hire_date DATE
);

INSERT INTO Employee_5 VALUES
(1, 'Aarav', 1, 80000, '2020-01-15'),
(2, 'Bhavana', 2, 90000, '2019-03-22'),
(3, 'Charan', 1, 75000, '2018-05-30'),
(4, 'Divya', 3, 60000, '2021-08-12'),
(5, 'Eshaan', 2, 95000, '2017-11-05'),
(6, 'Farhan', 3, 50000, '2018-09-16'),
(7, 'Gauri', 1, 70000, '2022-01-10'),
(8, 'Harsha', 3, 72000, '2020-04-18');


CREATE TABLE Departments (
    department_id INT,
    department_name VARCHAR(255)
);

INSERT INTO Departments VALUES
(1, 'Engineering'),
(2, 'Sales'),
(3, 'HR');


CREATE TABLE Promotions (
    promotion_id INT,
    employee_id INT,
    promotion_date DATE,
    new_salary INT,
    new_title VARCHAR(255)
);

INSERT INTO Promotions VALUES
(1, 1, '2021-05-10', 85000, 'Senior Engineer'),
(2, 2, '2020-06-01', 95000, 'Sales Manager'),
(3, 5, '2019-10-25', 100000, 'Senior Sales Rep'),
(4, 3, '2022-01-01', 80000, 'Lead Engineer'),
(5, 4, '2023-01-15', 65000, 'HR Specialist'),
(6, 6, '2022-07-20', 55000, 'Senior HR Analyst');


CREATE TABLE Leaves (
    leave_id INT,
    employee_id INT,
    leave_start DATE,
    leave_end DATE
);

INSERT INTO Leaves VALUES
(1, 1, '2021-05-11', '2021-05-15'),
(2, 2, '2020-06-02', '2020-06-10'),
(3, 3, '2022-01-02', '2022-01-05'),
(4, 4, '2023-01-16', '2023-01-20'),
(5, 5, '2019-10-26', '2019-10-28'),
(6, 6, '2022-07-21', '2022-07-25');

-- SQL Query to Find the Employee with Longest Time Between Hire and First Promotion
WITH
  EmployeePromotions
  AS
  (
    SELECT
      e.employee_id,
      e.department_id,
      DATEDIFF(DAY, e.hire_date, MIN(p.promotion_date)) AS time_to_first_promotion
    FROM
      Employee_5 e
      JOIN promotions p ON e.employee_id = p.employee_id
    GROUP BY
        e.employee_id,
        e.department_id
  )

SELECT
  employee_id,
  department_id,
  time_to_first_promotion
FROM (
    SELECT
    *,
    RANK() OVER (PARTITION BY department_id ORDER BY time_to_first_promotion DESC) AS rank
  FROM
    EmployeePromotions
) AS RankedEmployees
WHERE
    rank = 1;

--Find the Employee who got promoted and then immediately took a vacation.

WITH PromotedEmployees AS (
    SELECT
        p.employee_id,
        MAX(p.promotion_date) AS last_promotion_date
    FROM
        Promotions p
    GROUP BY
        p.employee_id
)

SELECT
    e.employee_id,
    e.name,
    p.promotion_date,
    l.leave_start
FROM
    Employee_5 e
JOIN Promotions p ON e.employee_id = p.employee_id
JOIN Leaves l ON e.employee_id = l.employee_id
WHERE
    l.leave_start = DATE_ADD(p.promotion_date, INTERVAL 1 DAY);



--write a sql query to find which user whose transactons is breached their credit limit
use SALES;
CREATE TABLE users (
    user_id INT PRIMARY KEY,
    user_name VARCHAR(50),
    credit_limit INT
);

INSERT INTO users (user_id, user_name, credit_limit)
VALUES
    (1, 'Peter', 100),
    (2, 'Roger', 200),
    (3, 'Jack', 10000),
    (4, 'John', 800);

CREATE TABLE transactions (
    trans_id INT PRIMARY KEY,
    paid_by INT,
    paid_to INT,
    amount INT,
    trans_date DATE
);

INSERT INTO transactions (trans_id,paid_by,paid_to,amount,trans_date)
VALUES
    (1,1,3, 400,'01-01-2024'),
    (2,3,2, 400,'01-01-2024'),
    (3,2, 1, 400, '01-01-2024');
    

SELECT u.user_name, SUM(t.amount) AS total_transactions, u.credit_limit
FROM users u
JOIN transactions t ON u.user_id = t.paid_by
GROUP BY u.user_id, u.user_name, u.credit_limit
HAVING SUM(t.amount) > u.credit_limit;

--by using cte
WITH UserTransactions AS (
    SELECT u.user_name, SUM(t.amount) AS total_transactions
    FROM users u
    JOIN transactions t ON u.user_id = t.paid_by
    GROUP BY u.user_id, u.user_name
)
SELECT user_name, total_transactions
FROM UserTransactions
WHERE total_transactions > (SELECT credit_limit FROM users WHERE user_name = UserTransactions.user_name);