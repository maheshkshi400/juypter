CREATE TABLE CITY(CITY_ID NUMBER,CITY_NAME VARCHAR(15));

INSERT INTO CITY VALUES(1,'DELHI');
INSERT INTO CITY VALUES(2,'CHENNAI');
INSERT INTO CITY VALUES(3,'MUMBAI');
INSERT INTO CITY VALUES(4,'KOLKATA');



-- POSSIBLE WAYS OF TRAVELLING 

-- METHOD 1
SELECT * FROM CITY A,CITY B WHERE A.CITY_ID < B.CITY_ID;

--METHOD 2

SELECT DISTINCT GREATEST(A.CITY_NAME,B.CITY_NAME) AS CITY_1,
                LEAST(A.CITY_NAME,B.CITY_NAME) AS CITY_2
FROM CITY A,CITY B 
WHERE A.CITY_NAME <> B.CITY_NAME;















