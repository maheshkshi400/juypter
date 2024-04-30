 create proc sp_readCurrency(@currencyName varchar(100))
  as
  begin 
  select * from [SSIS].[dbo].[sample_data] where  Currency = @currencyName
  end

