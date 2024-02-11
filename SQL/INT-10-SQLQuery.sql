

--Extract Numbers and Alphabets from an alphanumeric string

CREATE TABLE UserData1 (
    id INT PRIMARY KEY,
    username VARCHAR(50)
);

select * from UserData1

drop table UserData1;

INSERT INTO UserData1 VALUES (1, 'john123')
insert into UserData1 values(2,'04888KELLY59')
insert into UserData1 values(3, 'bob456')
insert into UserData1 values(4, 'charlie23')
insert into UserData1 values(5, 'sarah45')
insert into UserData1 values(6, 'david007')
insert into UserData1 values(7, 'emily1234')
insert into UserData1 values(8, '9945AMODA')
insert into UserData1 values(9, 'linda2015')
insert into UserData1 values(10, 'kevin12')
insert into UserData1 values(11, 'natalie34')
insert into UserData1 values(12, 'peter45')
insert into UserData1 values(13, 'olivia56')
insert into UserData1 values(14, 'jack128')
insert into UserData1 values(15, 'grace999')
insert into UserData1 values(16,'0488JENELIA')
insert into UserData1 values(17,'PETER23467')
insert into UserData1 values(18,'0488jenny')
insert into UserData1 values(19,'1234josh')
insert into UserData1 values(20,'PLATO345')

--to seprate username 

SELECT
    TRIM(TRANSLATE(username,'0123456789','          ')) AS USER_NAME,
    username
FROM
    UserData1;

--to seprate USERID 

SELECT
    TRIM(TRANSLATE(username,'0123456789','          ')) AS USER_NAME,
    TRANSLATE(username,TRANSLATE(username,'0123456789','          '), 
    SPACE(LEN(TRANSLATE(username,TRANSLATE(username,'0123456789','          '))))) AS USER_ID,
    username
FROM
    UserData1;


SELECT
TRIM(TRANSLATE(username, '0123456789', '          ')) AS USER_NAME,
TRANSLATE(username,
TRANSLATE(username, '0123456789', '          '),
SPACE(LEN(TRANSLATE(username, TRANSLATE(username,'0123456789', '          ')))))AS USER_ID,
    username
FROM
    UserData1;




