--Problem Statement:

--For pairs of brands in the same year (e.g. apple/samsung/2020 and samsung/apple/2020)

--if custom1 = custom3 and custom2 = custom4: then keep only one pairFor pairs of brands in the same year

--if custom1 != custom3 OR custom2 != custom4: then keep both pairs
--For brands that do not have pairs in the same year: keep those rows as well


use OTHERS;

CREATE TABLE brands (
    BRAND1 VARCHAR(255),
    BRAND2 VARCHAR(255),
    YEAR INT,
    CUSTOM1 INT,
    CUSTOM2 INT,
    CUSTOM3 INT,
    CUSTOM4 INT
);

INSERT INTO brands (BRAND1, BRAND2, YEAR, CUSTOM1, CUSTOM2, CUSTOM3, CUSTOM4)
VALUES
('apple', 'samsung', 2020, 1, 2, 1, 2),
('samsung', 'apple', 2020, 1, 2, 1, 2),
('apple', 'samsung', 2021, 1, 2, 5, 3),
('samsung', 'apple', 2021, 5, 3, 1, 2),
('google', 'nothing', 2020, 5, 9, 6, 3),
('oneplus', 'nothing', 2020, 5, 9, 6, 3);


SELECT * FROM brands;


WITH
    CTE AS
    (
SELECT *,
    CASE when  BRAND1 < BRAND2 then CONCAT(BRAND1,BRAND2,YEAR)
    ELSE CONCAT(BRAND2, BRAND1, YEAR) END as pair_id
FROM brands
),
    CTE_RN AS
(
        SELECT *,
    ROW_NUMBER() OVER (PARTITION BY pair_id ORDER BY pair_id) as rn
FROM CTE
    )
SELECT BRAND1,BRAND2,YEAR,CUSTOM1,CUSTOM2,CUSTOM3,CUSTOM4
FROM CTE_RN 
WHERE rn = 1 OR (CUSTOM1 <> CUSTOM3 AND CUSTOM2 <> CUSTOM4)


      