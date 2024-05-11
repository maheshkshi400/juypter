create table currency_To_Expot(CurrencyName varchar(100))
insert into currency_To_Expot 
values ('Ruble'),('Dollar'),('Peso')
select * from currency_To_Expot

exec [dbo].[sp_readCurrency] 'Dollar'