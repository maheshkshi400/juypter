create table customer_orders (
order_id integer,
customer_id integer,
order_date date,
order_amount integer
);



insert into customer_orders values(1,100,cast('2022-01-01' as date),2000);
insert into customer_orders values(2,200,cast('2022-01-01' as date),2500);
insert into customer_orders values(3,300,cast('2022-01-01' as date),2100);
insert into customer_orders values(4,100,cast('2022-01-02' as date),2000);
insert into customer_orders values(5,400,cast('2022-01-02' as date),2200);
insert into customer_orders values(6,500,cast('2022-01-02' as date),2700);
insert into customer_orders values(7,100,cast('2022-01-03' as date),3000);
insert into customer_orders values(8,400,cast('2022-01-03' as date),1000);
insert into customer_orders values(9,600,cast('2022-01-03' as date),3000);


select * from customer_orders


WITH FIRST_VISIT AS (
    SELECT customer_id, MIN(order_date) AS FIRST_VISIT_DATE 
    FROM customer_orders 
    GROUP BY customer_id
),
VISIT_FLAG AS (
    SELECT 
        C.*, 
        F.FIRST_VISIT_DATE,
        CASE WHEN C.order_date = F.FIRST_VISIT_DATE THEN 1 ELSE 0 END AS FIRST_VISIT_FLAG,
        CASE WHEN C.order_date != F.FIRST_VISIT_DATE THEN 1 ELSE 0 END AS REPEAT_VISIT_FLAG
    FROM 
        customer_orders AS C 
    LEFT JOIN 
        FIRST_VISIT AS F ON C.customer_id = F.customer_id
)
SELECT 
    order_date,
    SUM(FIRST_VISIT_FLAG) AS NO_OF_CUSTOMERS,
    SUM(REPEAT_VISIT_FLAG) AS NO_OF_REPEAT_CUSTOMER
FROM 
    VISIT_FLAG
GROUP BY 
    order_date;

------

WITH FIRST_VISIT AS (
    SELECT customer_id, MIN(order_date) AS FIRST_VISIT_DATE 
    FROM customer_orders 
    GROUP BY customer_id
)
SELECT C.order_date,
        SUM(CASE WHEN C.order_date = F.FIRST_VISIT_DATE THEN 1 ELSE 0 END) AS FIRST_VISIT_FLAG,
        SUM(CASE WHEN C.order_date != F.FIRST_VISIT_DATE THEN 1 ELSE 0 END) AS REPEAT_VISIT_FLAG
    FROM 
        customer_orders AS C 
    INNER JOIN 
        FIRST_VISIT AS F ON C.customer_id = F.customer_id GROUP BY C.order_date;


---------
Select a.order_date,
Sum(Case when a.order_date = a.first_order_date then 1 else 0 end) as new_customer,
Sum(Case when a.order_date != a.first_order_date then 1 else 0 end) as repeat_customer
from(
Select customer_id, order_date, min(order_date) over(partition by customer_id) as first_order_date from customer_orders) a 
group by a.order_date;



------

WITH cte AS (
    SELECT  
        order_date,
        order_amount,
        ROW_NUMBER() OVER(PARTITION BY customer_id ORDER BY order_date ASC) AS rn 
    FROM 
        customer_orders
)
SELECT 
    order_date,
    SUM(CASE WHEN rn = 1 THEN 1 ELSE 0 END) AS new_customers,
    SUM(CASE WHEN rn > 1 THEN 1 ELSE 0 END) AS repeat_customers,
    SUM(CASE WHEN rn = 1 THEN order_amount ELSE 0 END) AS new_customers_order_amount,
    SUM(CASE WHEN rn > 1 THEN order_amount ELSE 0 END) AS repeat_customers_order_amount
FROM 
    cte
GROUP BY 
    order_date;








