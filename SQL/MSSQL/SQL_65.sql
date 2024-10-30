--From the login_details table, fetch the users who logged in consecutively 3 or more times.

use OTHERS;

CREATE TABLE login_details (
    login_id INTEGER PRIMARY KEY,
    user_name CHARACTER VARYING(50),
    login_date DATE
);

INSERT INTO login_details (login_id, user_name, login_date) VALUES
(1, 'Michael', '2021-08-21'),
(2, 'James', '2021-08-21'),
(3, 'Stewart', '2021-08-22'),
(4, 'Stewart', '2021-08-22'),
(5, 'Stewart', '2021-08-22'),
(6, 'Michael', '2021-08-23'),
(7, 'Michael', '2021-08-23'),
(8, 'Stewart', '2021-08-24'),
(9, 'Stewart', '2021-08-24'),
(10, 'James', '2021-08-25'),
(11, 'James', '2021-08-25'),
(12, 'James', '2021-08-26'),
(13, 'James', '2021-08-27');

SELECT * FROM login_details;

SELECT user_name, login_date, COUNT(*) AS consecutive_logins
FROM login_details
GROUP BY user_name, login_date
HAVING COUNT(*) >= 3
ORDER BY user_name, login_date;


SELECT login_id,user_name, login_date from 
(
SELECT *, 
CASE WHEN user_name = LEAD(user_name) OVER (ORDER BY login_id) AND 
         user_name = LEAD(user_name, 2) OVER (ORDER BY login_date) 
         THEN  user_name
         ELSE NULL 
         END AS repeated_users
FROM login_details) x
WHERE x.repeated_users is not NULL
