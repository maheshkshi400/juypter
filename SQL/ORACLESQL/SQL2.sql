CREATE TABLE MASTER_SLAVE
(
NODE_SLAVE VARCHAR(10),
NODE_MASTER VARCHAR(10)
);

INSERT INTO MASTER_SLAVE VALUES ('1','2');
INSERT INTO MASTER_SLAVE VALUES ('3','2');
INSERT INTO MASTER_SLAVE VALUES ('6','8');
INSERT INTO MASTER_SLAVE VALUES ('9','8');
INSERT INTO MASTER_SLAVE VALUES ('2','5');
INSERT INTO MASTER_SLAVE VALUES ('8','5');
INSERT INTO MASTER_SLAVE VALUES ('5',NULL);

COMMIT;

SELECT * FROM MASTER_SLAVE;

SELECT NODE_SLAVE , 
CASE WHEN NODE_SLAVE NOT IN (SELECT NODE_MASTER FROM MASTER_SLAVE WHERE NODE_MASTER IS NOT NULL) THEN 'LEAF'
WHEN NODE_MASTER IS NULL THEN 'ROOT' 
ELSE 'INNER' END AS DESCRIPTION
FROM MASTER_SLAVE
ORDER BY NODE_SLAVE