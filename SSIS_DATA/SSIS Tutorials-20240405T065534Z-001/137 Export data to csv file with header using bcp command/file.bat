set BCP_EXPORT_SERVER=DESKTOP-EKJ1P64\SQL2019 
set BCP_EXPORT_DB=WORK
set BCP_EXPORT_TABLE=EMAIL_Sample

BCP "DECLARE @colnames VARCHAR(max);SELECT @colnames = COALESCE(@colnames + ',', '') + column_name from %BCP_EXPORT_DB%.INFORMATION_SCHEMA.COLUMNS where TABLE_NAME='%BCP_EXPORT_TABLE%'; select @colnames;" queryout EMAIL_Sample.csv -c -T -S%BCP_EXPORT_SERVER%

BCP %BCP_EXPORT_DB%.dbo.%BCP_EXPORT_TABLE% out EMAIL_Sample2.csv -c -t, -T -S%BCP_EXPORT_SERVER%

set BCP_EXPORT_SERVER=
set BCP_EXPORT_DB=
set BCP_EXPORT_TABLE=

copy /b EMAIL_Sample.csv+EMAIL_Sample2.csv TableData.csv

del EMAIL_Sample.csv
del EMAIL_Sample2.csv