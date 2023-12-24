def myfunction():
    print("hello world")
myfunction()


# 

def myfunction2(empname):
    print("hello",empname)
myfunction2(empname="Manoj")


#
def myfunction3(empid,empname,salary):
    print("empid: ",empid)
    print("empname: ",empname)
    print("salary: ",salary)
myfunction3(empid="1",empname="Manoj",salary="70000")
myfunction3(1,"shatish",6000)


# add two numbers
def addtwonumbers(x,y):
    print(x + y)
z = addtwonumbers(10,20)
print (z)

def addtwonumbers(x,y):
    return(x + y)
z = addtwonumbers(10,20)
print (z)

