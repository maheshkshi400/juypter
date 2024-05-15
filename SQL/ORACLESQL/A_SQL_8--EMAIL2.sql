CREATE TABLE EMAIL1(MAIL_ID VARCHAR2(50));

INSERT INTO EMAIL1 VALUES('RAJA.SHIVA.RANJAN@GOOGLE.COM');
INSERT INTO EMAIL1 VALUES('RAJ@OUTLOOK.COM');
INSERT INTO EMAIL1 VALUES('GANESH.123@YAHOO.COM');


WITH D1 AS (
    SELECT MAIL_ID AS M,
           SUBSTR(MAIL_ID, 1, INSTR(MAIL_ID, '@') - 1) AS n,
           SUBSTR(MAIL_ID, INSTR(MAIL_ID, '@') + 1) AS d
    FROM EMAIL1
),
D2 AS (
    SELECT M,
           n,
           d,
           INSTR(n, '.', 1, 1) AS f_dot,
           INSTR(n, '.', 1, 2) AS s_dot
    FROM D1
),
D3 AS (
    SELECT M,
           n,
           d,
           f_dot,
           s_dot,
           SUBSTR(n, 1, DECODE(f_dot, 0, LENGTH(n), f_dot - 1)) AS f_name,
           DECODE(s_dot, 0, NULL, SUBSTR(n, f_dot + 1, s_dot - f_dot - 1)) AS m_name,
           DECODE(f_dot + s_dot, 0, NULL, SUBSTR(n, DECODE(s_dot, 0, f_dot, s_dot) + 1)) AS l_name
    FROM D2
)
SELECT f_name, m_name, l_name 
FROM D3;





    

