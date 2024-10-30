--Find the top 2 accounts with the maximum number of unique patients on a monthly basis.

CREATE TABLE patients_logs (
    account_id INTEGER,
    date DATE,
    patient_id INTEGER
);

INSERT INTO patients_logs (account_id, date, patient_id) VALUES
(1, '2020-01-02', 100),
(1, '2020-01-27', 200),
(2, '2020-01-01', 300),
(2, '2020-01-21', 400),
(2, '2020-01-21', 300),
(2, '2020-01-01', 500),
(3, '2020-01-20', 400),
(1, '2020-03-04', 500),
(3, '2020-01-20', 450);

SELECT * FROM patients_logs;




SELECT month, account_id, NO_OF_PATIENTS
FROM (

SELECT *,
        RANK() OVER(PARTITION BY month ORDER BY NO_OF_PATIENTS DESC ,account_id) AS RANKING
    FROM
        (SELECT month, account_id, COUNT(1) AS NO_OF_PATIENTS
        FROM(
            SELECT DISTINCT DATENAME(month,date) AS month, account_id, patient_id
            from patients_logs
    ) PL
        GROUP BY month,account_id)
x
)TEMP 
WHERE TEMP.RANKING IN (1,2)





