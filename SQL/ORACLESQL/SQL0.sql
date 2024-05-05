--write an sql query to get the quarter from date

SELECT TO_CHAR (TO_DATE('3/31/2016','MM/DD/YYYY'),'Q') AS quarter FROM DUAL;