CREATE TABLE EM(EID INT,MID INT);

INSERT INTO EM VALUES(1,2);
INSERT INTO EM VALUES(2, 5);
INSERT INTO EM VALUES(3, 2);
INSERT INTO EM VALUES(4,5);
INSERT INTO EM VALUES(5, NULL);

SELECT a.*,b* FROM EM AS  a LEFT JOIN EM AS b ON a.EID=b.MID;



SELECT a.<em>, b.</em><br>FROM EM AS a<br>LEFT JOIN EM AS b<br>ON a.EID = b.MID;<br>
