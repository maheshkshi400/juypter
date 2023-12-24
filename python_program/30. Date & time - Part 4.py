# importing dateutil module
import dateutil.relativedelta as rel
import datetime as dt

# difference between two dates

x = dt.datetime(2000,8,10)
y = dt.datetime.today()
print(y-x)


y = rel.relativedelta(y,x)
print(y)

# adding 1 year 
z = x + rel.relativedelta(year=1)
print(z)

# adding months
c= x + rel.relativedelta(months=3)
print(c)

# adding years,months,days in the date
d = x + rel.relativedelta(years=5,months=3,days=5)
print(d)

# add 

f = dt.datetime.today + rel.relativedelta(day=1)
print(f)