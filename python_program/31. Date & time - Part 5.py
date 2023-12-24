import datetime as dt
x = dt.datetime(2022,9,6,8,45,23)
print(x)

# year 
yr = x.strftime("%Y")
print(yr)

# Month
mn = x.strftime("%m")
print(mn)

 # day
da = x.strftime("%d")
print(da)

# all year,month,day

z = x.strftime("%d-%m-%Y")
print(z)

# print hour ,minute,second
p = x.strftime("%H:%M:%S")
print(p)
# all year,month,day,hour,min,sec

c = x.strftime("%A,%d-%b-%Y" "%H:%M:%S")
print(c)


# conversion or formatting the datetime

q = "21-10-1974"
print(type(q))

E = dt.datetime.strptime(q,"%d-%m-%Y")
print(E)


