CREATE TABLE EMP2 (
  empno decimal(4,0) NOT NULL,
  ename varchar(10) default NULL,
  job varchar(9) default NULL,
  mgr decimal(4,0) default NULL,
  hiredate date default NULL,
  sal decimal(7,2) default NULL,
  comm decimal(7,2) default NULL,
  deptno decimal(2,0) default NULL
);



CREATE TABLE DEPT (
  deptno decimal(2,0) default NULL,
  dname varchar(14) default NULL,
  loc varchar(13) default NULL
);





INSERT INTO EMP2 VALUES ('7369','SMITH','CLERK','7902','1980-12-17','800.00',NULL,'20');
INSERT INTO EMP2 VALUES ('7499','ALLEN','SALESMAN','7698','1981-02-20','1600.00','300.00','30');
INSERT INTO EMP2 VALUES ('7521','WARD','SALESMAN','7698','1981-02-22','1250.00','500.00','30');
INSERT INTO EMP2 VALUES ('7566','JONES','MANAGER','7839','1981-04-02','2975.00',NULL,'20');
INSERT INTO EMP2 VALUES ('7654','MARTIN','SALESMAN','7698','1981-09-28','1250.00','1400.00','30');
INSERT INTO EMP2 VALUES ('7698','BLAKE','MANAGER','7839','1981-05-01','2850.00',NULL,'30');
INSERT INTO EMP2 VALUES ('7782','CLARK','MANAGER','7839','1981-06-09','2450.00',NULL,'10');
INSERT INTO EMP2 VALUES ('7788','SCOTT','ANALYST','7566','1982-12-09','3000.00',NULL,'20');
INSERT INTO EMP2 VALUES ('7839','KING','PRESIDENT',NULL,'1981-11-17','5000.00',NULL,'10');
INSERT INTO EMP2 VALUES ('7844','TURNER','SALESMAN','7698','1981-09-08','1500.00','0.00','30');
INSERT INTO EMP2 VALUES ('7876','ADAMS','CLERK','7788','1983-01-12','1100.00',NULL,'20');
INSERT INTO EMP2 VALUES ('7900','JAMES','CLERK','7698','1981-12-03','950.00',NULL,'30');
INSERT INTO EMP2 VALUES ('7902','FORD','ANALYST','7566','1981-12-03','3000.00',NULL,'20');
INSERT INTO EMP2 VALUES ('7934','MILLER','CLERK','7782','1982-01-23','1300.00',NULL,'10');


SELECT * FROM EMP2;

INSERT INTO DEPT VALUES ('10','ACCOUNTING','NEW YORK');
INSERT INTO DEPT VALUES ('20','RESEARCH','DALLAS');
INSERT INTO DEPT VALUES ('30','SALES','CHICAGO');
INSERT INTO DEPT VALUES ('40','OPERATIONS','BOSTON');

SELECT * FROM EMP2;
SELECT * FROM DEPT

SELECT E.empno,E.ename,E.deptno,E.sal,D.dname FROM EMP2 E 
INNER JOIN DEPT D ON E.deptno=D.deptno AND 



-- HIGHEST SALARY

SELECT MAX(Sal) FROM EMP2;

-- 2nd highest salary

SELECT MAX(Sal) FROM EMP2 WHERE sal< (SELECT MAX(Sal) FROM EMP2);

-- nth highest salary


SELECT TOP 1 Sal FROM
(SELECT DISTINCT TOP 4 Sal
FROM EMP2
ORDER BY sal DESC) 
RESULT
ORDER BY sal


--BY USING CTE

SELECT * FROM EMP2;

WITH RESULT AS
(SELECT Sal,DENSE_RANK() OVER(ORDER BY Sal DESC) 
AS DENSE_RANK FROM EMP2
)
SELECT TOP 1 Sal 
FROM RESULT
WHERE RESULT.DENSE_RANK=11