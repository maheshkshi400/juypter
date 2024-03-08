
Create Table Travel_Table(
Start_Location Varchar(30),
End_Location Varchar(30),
Distance int)

Insert into Travel_Table Values('Delhi','Pune',1400);
Insert into Travel_Table Values('Pune','Delhi',1400);
Insert into Travel_Table Values('Bangalore','Chennai',350);
Insert into Travel_Table Values('Mumbai','Ahmedabad',500);
Insert into Travel_Table Values('Chennai','Bangalore',350);
Insert into Travel_Table Values('Patna','Ranchi',300);


SELECT * FROM dbo.Travel_Table;

--WRITE SQL QUERY TO GET UNIQUE COMBINATION OF TWO COLUMNS SOURCE AND DESTINATION IRRESPECTIVE 
-- OF ORDER OF COLUMNS 


SELECT DISTINCT LEAST(Start_Location, End_Location) AS Source,
                GREATEST(Start_Location, End_Location) AS Destination
FROM Travel_Table ;


SELECT * FROM dbo.Travel_Table WHERE Start_Location < End_Location
UNION
SELECT * FROM dbo.Travel_Table A WHERE NOT EXISTS
(SELECT 1 FROM  dbo.Travel_Table B WHERE A.Start_Location=B.End_Location)

