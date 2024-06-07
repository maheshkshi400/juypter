CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(20),
    sal INT,
    joining_date DATE,
    dept_id INT FOREIGN KEY_ REFERENCES Department(dept_id)
);

Department - dept_id(PK), dept_name


emp_id(PK),
dpet_id(FK)
 dept_id(PK)


 CREATE TABLE Department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(20)
);

select * from emp5;

SELECT *
FROM EMP5
WHERE DEPTNO = 10
AND EMPNO NOT IN (
    SELECT EMPNO
    FROM EMP5
    GROUP BY EMPNO
    HAVING COUNT(EMPNO) = 1
);


TABLE A	 	TABLE B
ID	 	ID
1	 	1
1	 	2
2	 	3
3	 	3
4	 	Null
Null	 	 
Null

USE OTHER
CREATE table TABLE_A(
    id INT 
);

CREATE table TABLE_B(
    id INT 
);
drop table TABLE_A;
drop table TABLE_B;

insert into TABLE_A VALUES (1);
insert into TABLE_A VALUES (1);
insert into TABLE_A VALUES (2);
insert into TABLE_A VALUES (3);
insert into TABLE_A VALUES (4);
insert into TABLE_A VALUES (NULL);
insert into TABLE_A VALUES (NULL);

insert into TABLE_B VALUES (1);
insert into TABLE_B VALUES (2);
insert into TABLE_B VALUES (3);
insert into TABLE_B VALUES (3);
insert into TABLE_B VALUES (NULL);

SELECT * FROM TABLE_A A INNER JOIN TABLE_B B ON A.ID = B.ID;

SELECT * FROM TABLE_A A LEFT OUTER JOIN TABLE_B B ON A.ID = B.ID;

SELECT * FROM TABLE_A A RIGHT OUTER JOIN TABLE_B B ON A.ID = B.ID;

SELECT * FROM TABLE_A A FULL OUTER JOIN TABLE_B B ON A.ID = B.ID;


udent_id	student_name	score
1	            Alice	    85
2	            Bob	        90
3	            Carol	    85
4	            David	    78
5	            Emily	    92

USE STUDENTS;
CREATE TABLE student_5 (
    student_id INT ,
    student_name VARCHAR(20),
    score INT
);

INSERT INTO student_5 VALUES (1, 'Alice', 85);
INSERT INTO student_5 VALUES (2, 'Bob', 90);
INSERT INTO student_5 VALUES (3, 'Carol', 85);
INSERT INTO student_5 VALUES (4, 'David', 78);
INSERT INTO student_5 VALUES (5, 'Emily', 92);

SELECT * FROM(SELECT student_5.*,DENSE_RANK() over (order by score desc)as rnk from student_5 ) 
ranked_students where rnk <=5;








