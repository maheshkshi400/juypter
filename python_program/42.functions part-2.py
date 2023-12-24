def s():
    x= 100
print(s)


def myfun(*args):
    print(sum(args))
myfun(10)
myfun(10,20)
myfun(10,40,50,90 )


lst = [50,60,70]
myfun(*lst)


def fun(x,*args):
    y =x*2
    print(y+ sum(args))

fun(10,30,40,50)


def function(**kwargs):
    print(kwargs)
function(empid = 1,empname = "john",city = "mumbai",salary = 5000)


def myfunction1(**kwargs):
    print(kwargs.keys())
    print(kwargs.values())
myfunction1(empid = 1,empname = "john",city = "mumbai",salary = 5000)


def myfunction2(**kwargs):
    print(kwargs.keys())
    print(kwargs.items())
myfunction2(empid = 1,empname = "john",city = "mumbai",salary = 5000)

