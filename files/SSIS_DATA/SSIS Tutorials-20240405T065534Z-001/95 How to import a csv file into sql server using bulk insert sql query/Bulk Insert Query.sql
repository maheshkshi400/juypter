BULK INSERT email
FROM 'D:\Files\Email_Info.csv'
WITH (FORMAT = 'CSV'
     , FIRSTROW=2
      , FIELDTERMINATOR = ','
      , ROWTERMINATOR = '0x0a');