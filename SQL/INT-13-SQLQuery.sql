
CREATE TABLE EMP4(
EMPKEY INT,
FIRST_NAME VARCHAR(20),
LAST_NAME VARCHAR(20),
EMP_DEPT VARCHAR(10),
EMP_SALARY INT
)

SELECT * FROM EMP4

DROP TABLE EMP4

INSERT INTO EMP4 VALUES(1, 'John', 'Doe', 'HR', 50000)
INSERT INTO EMP4 VALUES(2, 'Jane', 'Smith', 'Marketing', 60000)
INSERT INTO EMP4 VALUES(3, 'Michael', 'Johnson', 'Sales', 55000)

INSERT INTO EMP4 VALUES(4, 'Emily', 'Brown', 'Finance', 65000)
INSERT INTO EMP4 VALUES(5, 'David', 'Williams', 'IT', 70000)
INSERT INTO EMP4 VALUES(6, 'Sarah', 'Jones', 'HR', 48000)

INSERT INTO EMP4 VALUES(7, 'Christopher', 'Wilson', 'Marketing', 62000)
INSERT INTO EMP4 VALUES(8, 'Jennifer', 'Martinez', 'Sales', 58000)
INSERT INTO EMP4 VALUES(9, 'Matthew', 'Taylor', 'Finance', 68000)

INSERT INTO EMP4 VALUES(10, 'Jessica', 'Anderson', 'IT', 72000)
INSERT INTO EMP4 VALUES(11, 'Andrew', 'Thomas', 'HR', 52000)
INSERT INTO EMP4 VALUES(12, 'Elizabeth', 'Hernandez', 'Marketing', 61000)

INSERT INTO EMP4 VALUES(13, 'Daniel', 'Young', 'Sales', 57000)
INSERT INTO EMP4 VALUES(14, 'Linda', 'King', 'Finance', 66000)
INSERT INTO EMP4 VALUES(15, 'Mark', 'Garcia', 'IT', 74000)

INSERT INTO EMP4 VALUES(16, 'Karen', 'Lee', 'HR', 49000)
INSERT INTO EMP4 VALUES(17, 'Steven', 'Lopez', 'Marketing', 63000)
INSERT INTO EMP4 VALUES(18, 'Amanda', 'Perez', 'Sales', 59000)

INSERT INTO EMP4 VALUES(19, 'Jason', 'Scott', 'Finance', 67000)
INSERT INTO EMP4 VALUES(20, 'Michelle', 'Nguyen', 'IT', 76000)
INSERT INTO EMP4 VALUES(21, 'Ryan', 'Rodriguez', 'HR', 53000)

INSERT INTO EMP4 VALUES(22, 'Melissa', 'Mills', 'Marketing', 64000)
INSERT INTO EMP4 VALUES(23, 'Kevin', 'Lee', 'Sales', 60000)
INSERT INTO EMP4 VALUES(24, 'Patricia', 'Gonzalez', 'Finance', 69000)

INSERT INTO EMP4 VALUES(25, 'Brian', 'Baker', 'IT', 78000)


--Query-employees having less than avg. slary 
--of the depatement but greater than the avg. salary of the anyother dept.

SELECT EMPKEY,FIRST_NAME,LAST_NAME,EMP_DEPT,EMP_SALARY FROM EMP4 AS EM

INNER JOIN

(SELECT AVG(EMP_SALARY) AS AVG_SAL FROM EMP4 GROUP BY EMP_DEPT) AS AVGEMPSAL
ON
EM.EMP_DEPT=AVGEMPSAL.AVG_SAL AND

EM.EMP_SALARY < AVGEMPSAL.AVG_SAL

WHERE 

EM.EMP_SALARY > ANY(SELECT AVG(EMP_SALARY) FROM EMP4 GROUP BY EMP_DEPT)

---

SELECT EM.EMPKEY, EM.FIRST_NAME, EM.LAST_NAME, EM.EMP_DEPT, EM.EMP_SALARY 
FROM EMP4 AS EM
INNER JOIN 
    (SELECT EMP_DEPT, AVG(EMP_SALARY) AS AVG_SAL FROM EMP4 GROUP BY EMP_DEPT)
AS AVGEMPSAL 
ON 
EM.EMP_DEPT = AVGEMPSAL.EMP_DEPT
WHERE EM.EMP_SALARY < (AVGEMPSAL.AVG_SAL)





----
SELECT EM.EMPKEY, EM.FIRST_NAME, EM.LAST_NAME, EM.EMP_DEPT, EM.EMP_SALARY
FROM EMP4 AS EM
INNER JOIN (
    SELECT EMP_DEPT, AVG(EMP_SALARY) AS AVG_SAL 
    FROM EMP4 
    GROUP BY EMP_DEPT
) AS AVGEMPSAL_CURRENT_DEPT ON EM.EMP_DEPT = AVGEMPSAL_CURRENT_DEPT.EMP_DEPT
INNER JOIN (
    SELECT AVG(EMP_SALARY) AS AVG_SAL 
    FROM EMP4 
    GROUP BY EMP_DEPT
) AS AVGEMPSAL_OTHER_DEPTS ON 
EM.EMP_SALARY > AVGEMPSAL_OTHER_DEPTS.AVG_SAL
WHERE EM.EMP_SALARY < AVGEMPSAL_CURRENT_DEPT.AVG_SAL;





