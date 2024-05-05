--Problem Statement : 
--Brands Table has three columns namely Years, Brand and Amount. 
--Write a Query to fetch the Brand whose Price is Increasing Every Year.



Create table Brands
(
 Years int,
 Brand varchar(20),
 Amount int
);

insert into brands values (2018, 'Apple', 45000);
insert into brands values (2019, 'Apple', 35000);
insert into brands values (2020, 'Apple', 75000);
insert into brands values (2018, 'Samsung', 15000);
insert into brands values (2019, 'Samsung', 20000);
insert into brands values (2020, 'Samsung', 25000);
insert into brands values (2018, 'Nokia', 21000);
insert into brands values (2019, 'Nokia', 17000);
insert into brands values (2020, 'Nokia', 14000);

SELECT * FROM Brands;


WITH CTE_A AS (
    SELECT Years,Brand, Amount,
    ROW_NUMBER() OVER (PARTITION BY Brand ORDER BY Years) AS YR_RANK,
    DENSE_RANK() OVER (PARTITION BY Brand ORDER BY Amount) AS Amt_RANK
    FROM Brands
),
CTE_B AS(
    SELECT Brand 
    FROM CTE_A
    WHERE YR_RANK <= Amt_RANK
    GROUP BY Brand
    HAVING COUNT(YR_RANK) = MAX(Amt_RANK)
)
SELECT * FROM Brands WHERE Brand IN(SELECT Brand FROM CTE_B);