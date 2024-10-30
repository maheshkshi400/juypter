CREATE TABLE doctors (
    id INTEGER PRIMARY KEY,
    name CHARACTER VARYING(50),
    specialty CHARACTER VARYING(100),
    hospital CHARACTER VARYING(50),
    city CHARACTER VARYING(50),
    consultation_fee INTEGER
);


INSERT INTO doctors (id, name, specialty, hospital, city, consultation_fee) VALUES
(1, 'Dr. Shashank', 'Ayurveda', 'Apollo Hospital', 'Bangalore', 2500),
(2, 'Dr. Abdul', 'Homeopathy', 'Fortis Hospital', 'Bangalore', 2000),
(3, 'Dr. Shwetha', 'Homeopathy', 'KMC Hospital', 'Manipal', 1000),
(4, 'Dr. Murphy', 'Dermatology', 'KMC Hospital', 'Manipal', 1500),
(5, 'Dr. Farhana', 'Physician', 'Gleneagles Hospital', 'Bangalore', 1700),
(6, 'Dr. Maryam', 'Physician', 'Gleneagles Hospital', 'Bangalore', 1500);

--
SELECT  d1.* FROM doctors d1 join doctors d2 on  d1.id <> d2.id where  
d1.hospital=d2.hospital and d1.specialty <> d2.specialty;
