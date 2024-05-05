--Problem Statement :  Device Table  consists of Device_id and Locations.

Create Table Device(
Device_id int,
Locations Varchar(25)
)

Insert into Device (Device_id,Locations) values
(12,'Bangalore'), 
(12,'Bangalore'),
(12,'Bangalore'), 
(12,'Bangalore'),
(12,'Hosur'),
(12,'Hosur'),
(13,'Hyderabad'), 
(13,'Hyderabad'), 
(13, 'Secunderabad'), 
(13, 'Secunderabad'), 
(13, 'Secunderabad')

SELECT * FROM Device;

WITH CTE_DEVICE AS (
SELECT Device_id,
       COUNT(DISTINCT Locations) AS NO_OF_LOCATIONS,
       COUNT(Locations) AS NO_OF_SIGNALS
FROM Device
GROUP BY Device_id
),
CTE_SIGNAL AS(
    SELECT  DISTINCT Device_id,
           FIRST_VALUE(Locations) OVER (PARTITION BY Device_id ORDER BY COUNT(1) DESC) AS MAX_SIGNAL_LOCATION
    FROM Device
    GROUP BY Device_id,Locations
)
SELECT  D.Device_id,
        D.NO_OF_LOCATIONS,
        D.NO_OF_SIGNALS,
        S.MAX_SIGNAL_LOCATION
FROM CTE_DEVICE AS D 
INNER JOIN CTE_SIGNAL AS S ON D.Device_id=S.Device_id


