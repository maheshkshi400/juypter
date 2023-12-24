import datetime,monthdelta

# todays date
td = datetime.datetime.today()
print(td)

# adding months in todays date
s = td + monthdelta.monthdelta(5)
print(s)

# find out difference between two months

x = datetime.datetime(2022,9,24)
y= datetime.datetime(2027,10,21)

z = monthdelta.monthmod(x,y)
print(z)
print(type(z))