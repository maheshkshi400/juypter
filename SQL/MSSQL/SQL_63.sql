CREATE TABLE users (
    user_id INTEGER PRIMARY KEY,
    user_name CHARACTER VARYING(30),
    email CHARACTER VARYING(50)
);


INSERT INTO users (user_id, user_name, email) VALUES
(1, 'Sumit', 'sumit@gmail.com'),
(2, 'Reshma', 'reshma@gmail.com'),
(3, 'Farhana', 'farhana@gmail.com'),
(4, 'Robin', 'robin@gmail.com'),
(5, 'Robin', 'robin@gmail.com');


-- FIND OUT DUPLICATE 

SELECT user_name, COUNT(user_name) FROM users GROUP BY user_name HAVING COUNT(user_name) > 1;

--DELETE DUPLCATE BY USING CTE

WITH CTE AS (
    SELECT user_name, COUNT(user_name) FROM users GROUP BY user_name HAVING COUNT(user_name) > 1
)
DELETE FROM users WHERE user_name IN (SELECT user_name FROM CTE);