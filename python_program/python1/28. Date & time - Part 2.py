import datetime

tdy =datetime.datetime.today()
print(tdy)

# timestamp
t_stamp = tdy.timestamp()
print(t_stamp)

# convert to date and time
ds = datetime.datetime.fromtimestamp(1694177910.153543)
print(ds)


# convert to date and time
ds = datetime.datetime.fromtimestamp(1)
print(ds)

# use timedela

t1 = tdy + datetime.timedelta(5)
print(t1)

    # adding hoursand minutes

t1 = tdy + datetime.timedelta(days=10,hours=7,minutes=7,weeks=6)
print(t1)



