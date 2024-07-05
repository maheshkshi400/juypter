IF EXISTS(SELECT 1 FROM sysobjects with (nolock) WHERE ID = OBJECT_ID(N'tblCountry') AND type = (N'U'))    
drop table tblCountry
create table tblCountry(Id int identity, County varchar(100))
go
insert into tblCountry values ('America'),('America'),('Amerika'),('India'),('India'),('Indiya'),('Australia'),('Australia'),('Australi')
go
IF EXISTS(SELECT 1 FROM sysobjects with (nolock) WHERE ID = OBJECT_ID(N'FuzzyGroupingOutput') AND type = (N'U'))    
drop table FuzzyGroupingOutput
CREATE TABLE [dbo].[FuzzyGroupingOutput](
	[_key_in] [int] NULL,
	[_key_out] [int] NULL,
	[_score] [real] NULL,
	[Id] [int] NULL,
	[County] [varchar](100) NULL,
	[County_clean] [varchar](100) NULL,
	[_Similarity_County] [real] NULL
) ON [PRIMARY]
