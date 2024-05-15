

WITH D AS (
    SELECT 'MAHE.KSHI.GANGA@GMAIL.COM' AS M FROM DUAL
)
, DS AS (
    SELECT 
        SUBSTR(M, 1, INSTR(M, '@') - 1) AS n,
        SUBSTR(M, INSTR(M, '@') + 1) AS d
    FROM 
        D
)
SELECT 
    SUBSTR(n, 1, INSTR(n, '.', 1, 1) - 1) AS first_name,
    SUBSTR(n, INSTR(n, '.', 1, 1) + 1, INSTR(n, '.', 1, 2) - INSTR(n, '.', 1, 1) - 1) AS middle_name,
    SUBSTR(n, INSTR(n, '.', 1, 2) + 1) AS last_name,
    d AS domain_name
FROM 
    DS;



DROP TABLE EMAIL

CREATE TABLE EMAIL(MAIL_ID VARCHAR2(50));

INSERT INTO EMAIL VALUES('RAKE.SHRI.MANU@YAHOO.COM');
INSERT INTO EMAIL VALUES('MAHE.KSHI.GANGA@GMAIL.COM');
INSERT INTO EMAIL VALUES('RAJANI.SHIVA.RAGINI@QUICKER.COM');
INSERT INTO EMAIL VALUES('MARUTI.KAMIYA.SRIDHAR@OUTLOOK.COM');
INSERT INTO EMAIL VALUES('SAJ.SHRI.GANU@REDIFF.COM');


WITH D AS (

    SELECT MAIL_ID AS M,
           SUBSTR(MAIL_ID, 1, INSTR(MAIL_ID, '@') - 1) AS n,
           SUBSTR(MAIL_ID, INSTR(MAIL_ID, '@') + 1) AS d
    FROM 
        EMAIL
)
SELECT M,
    SUBSTR(n, 1, INSTR(n, '.', 1, 1) - 1) AS first_name,
    SUBSTR(n, INSTR(n, '.', 1, 1) + 1, INSTR(n, '.', 1, 2) - INSTR(n, '.', 1, 1) - 1) AS middle_name,
    SUBSTR(n, INSTR(n, '.', 1, 2) + 1) AS last_name,
    d AS domain_name
FROM 
    D;












