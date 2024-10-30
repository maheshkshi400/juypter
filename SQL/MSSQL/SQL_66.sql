--From the weather table, fetch all the records when London had extremely cold temperature for 3 consecutive days or more.
USE OTHERS;

CREATE TABLE weather (
    id INTEGER PRIMARY KEY,
    city CHARACTER VARYING(50),
    temperature INTEGER,
    day DATE
);


INSERT INTO weather (id, city, temperature, day) VALUES
(1, 'London', -1, '2021-01-01'),
(2, 'London', -2, '2021-01-02'),
(3, 'London', 4, '2021-01-03'),
(4, 'London', 1, '2021-01-04'),
(5, 'London', -2, '2021-01-05'),
(6, 'London', -5, '2021-01-06'),
(7, 'London', -7, '2021-01-07'),
(8, 'London', 5, '2021-01-08');

SELECT * FROM weather;

SELECT city, temperature, day FROM
(SELECT *, 
    CASE WHEN temperature < 0
                AND LEAD(temperature) OVER (ORDER BY day) < 0
                AND LEAD(temperature, 2) OVER (ORDER BY day) < 0
                THEN 'YES'
        WHEN temperature < 0
                AND LAG(temperature) OVER (ORDER BY day) < 0
                AND LEAD(temperature) OVER (ORDER BY day) < 0
                THEN 'YES'
        WHEN temperature < 0
                AND LAG(temperature) OVER (ORDER BY day) < 0
                AND LAG(temperature,2) OVER (ORDER BY day) < 0
                THEN 'YES'
                ELSE NULL
    END AS FLAG
    FROM weather) x
    WHERE x.FLAG ='YES'