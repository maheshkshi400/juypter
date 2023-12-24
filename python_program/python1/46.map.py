mylst = [10,20,30,40]
print(mylst)

def double(x):
    return x*3
print(list(map(double,mylst)))

print(list(map(lambda x : x * 3,mylst)))

# convert to upper by using map function
countries =["bharat","china","russia","belarus"]
def converttupper(a):
    return a.upper()
print(list(map(converttupper,countries)))


# convert to upper by using lambda function
countries =["bharat","china","russia","belarus"]
def converttupper(a):
    return a.upper()
print(list(map(lambda x : x.upper(),countries)))