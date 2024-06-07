--Fetch the number of Weekends in the current month


SELECT count(*) as weekends  
FROM (
        SELECT TRUNC(GETDATE(),'mm')+level-1current_dt 
        FROM DualCONNECT 
        BY LEVEL <= last_day(GETDATE())–TRUNC(GETDATE(),’mm’)+1
     )
WHERE TO_CHAR(current_dt,'dy') IN ('sat','sun');




SELECT



