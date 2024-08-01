--Write a query to provide the date of nth occournceof sunday in future from given date


DECLARE @today_date DATE;
DECLARE @n int;
SET @today_date='2022-01-01';
SET @n=3;

SELECT DATEADD(WEEK,@n-1,DATEADD(DAY,8-DATEPART(WEEKDAY,@today_date),@today_date))

