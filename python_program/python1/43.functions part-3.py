def myfunction4(empid,empname,city="Mumbai"):
    print("empid:",empid)
    print("empname:",empname)
    print("city:",city)
   
myfunction4(empid = 1,empname = "john")


# keyword arguments

def myfunction5(**kwargs):
    print(kwargs)
   
myfunction5(empid = 1,empname = "john",city="Bangalore")

def myfunction6(**kwargs):
    print(kwargs.keys())
   
myfunction6(empid = 1,empname = "john",city="Bangalore")


def myfunction7(**kwargs):
    print(kwargs.values())
   
myfunction7(empid = 1,empname = "john",city="Bangalore")

def myfunction8(**kwargs):
    print(kwargs.items())
   
myfunction8(empid = 1,empname = "john",city="Bangalore")

