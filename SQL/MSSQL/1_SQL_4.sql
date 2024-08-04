use OTHERS

create table customer7(cust_id INT, cust_name varchar(20), city varchar(20),
salesman_id INT ,order_id INT);

drop table customer7;

create table salesman(salesman_id INT, salesman_name varchar(20),city VARCHAR(20));

SELECT * FROM customer7;

drop table salesman;


-- Sample records for customer7 table
INSERT INTO customer7 (cust_id, cust_name, city, salesman_id, order_id) VALUES(1001, 'John Doe', 'New York', 5001, 101);
INSERT INTO customer7 (cust_id, cust_name, city, salesman_id, order_id) VALUES(1002, 'Jane Smith', 'Los Angeles', 5002, 102);
INSERT INTO customer7 (cust_id, cust_name, city, salesman_id, order_id) VALUES(1003, 'Bob Johnson', 'Chicago', 5003, 103);
INSERT INTO customer7 (cust_id, cust_name, city, salesman_id, order_id) VALUES(1004, 'Samantha Lee', 'Houston', 5004, 104);
INSERT INTO customer7 (cust_id, cust_name, city, salesman_id, order_id) VALUES(1005, 'Michael Brown', 'Miami', 5005, 105);


-- Sample records for salesman table  
INSERT INTO salesman (salesman_id, salesman_name, city) VALUES(5001, 'Tom Williams', 'New York');
INSERT INTO salesman (salesman_id, salesman_name, city) VALUES(5002, 'Sarah Davis', 'Los Angeles');
INSERT INTO salesman (salesman_id, salesman_name, city) VALUES(5003, 'David Patel', 'Chicago');
INSERT INTO salesman (salesman_id, salesman_name, city) VALUES(5004, 'Emily Nguyen', 'Houston');
INSERT INTO salesman (salesman_id, salesman_name, city) VALUES(5005, 'Juan Hernandez', 'canada');


SELECT * FROM customer7;

SELECT * FROM salesman;

-- Write a query to find the salesman who works not in the city of customer


select c.cust_id, c.cust_name, c.city, s.salesman_id 
from customer7 c
inner join salesman s on c.salesman_id = s.salesman_id
and c.city != s.city;


select c.cust_id, c.cust_name, c.city, s.salesman_id 
from customer7 c
inner join salesman s on c.salesman_id = s.salesman_id
and c.city <> s.city;



