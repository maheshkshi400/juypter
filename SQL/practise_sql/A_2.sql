create table customer_orders (
order_id integer,
customer_id integer,
order_date date,
order_amount integer
);

insert into customer_orders values(1,100,cast('2022-01-01' as date),2000),(2,200,cast('2022-01-01' as date),2500),(3,300,cast('2022-01-01' as date),2100)
,(4,100,cast('2022-01-02' as date),2000),(5,400,cast('2022-01-02' as date),2200),(6,500,cast('2022-01-02' as date),2700)
,(7,100,cast('2022-01-03' as date),3000),(8,400,cast('2022-01-03' as date),1000),(9,600,cast('2022-01-03' as date),3000)
;

select * from customer_orders;


WITH
    FIRST_VISIT
    AS
    
    (
        SELECT customer_id, MIN(order_date) as first_visit_date
        FROM customer_orders
        GROUP BY customer_id
    )
,
    VISIT_FLAG
    AS
    
    (
        SELECT CO.*, FV.first_visit_date,
            CASE WHEN CO.order_date=FV.first_visit_date THEN 1 ELSE 0 END AS first_visit_flag,
            CASE WHEN CO.order_date!=FV.first_visit_date THEN 1 ELSE 0 END AS repeat_visit_flag
        FROM customer_orders CO
            INNER JOIN FIRST_VISIT FV ON CO.customer_id=FV.customer_id 
        
    )

SELECT order_date, SUM(first_visit_flag) AS no_of_new_customers, SUM(repeat_visit_flag) AS no_of_repeat_customers
FROM VISIT_FLAG
GROUP BY order_date;


--REDUCED QUERYY SIZE

WITH
    FIRST_VISIT AS
    (
        SELECT customer_id, MIN(order_date) as first_visit_date
        FROM customer_orders
        GROUP BY customer_id
    )
SELECT CO.order_date,
    SUM(CASE WHEN CO.order_date=FV.first_visit_date THEN 1 ELSE 0 END) AS first_visit_flag,
    SUM(CASE WHEN CO.order_date!=FV.first_visit_date THEN 1 ELSE 0 END) AS repeat_visit_flag
FROM customer_orders CO
INNER JOIN FIRST_VISIT FV ON CO.customer_id=FV.customer_id 
GROUP BY  CO.order_date;
    




