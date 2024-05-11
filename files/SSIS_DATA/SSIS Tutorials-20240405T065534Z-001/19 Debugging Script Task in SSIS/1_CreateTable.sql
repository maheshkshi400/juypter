IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'FileInfo')
CREATE TABLE FileInfo(Id int identity, FilePath varchar(200), [FileName] varchar(100), RecordCount int, Dated datetime)
go
SELECT * FROM FileInfo
