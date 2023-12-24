
from functools import reduce
lst = [1,2,3,4,5,6,7,8,9]

def sumnumbers(x,y):
    return x + y

c = reduce(sumnumbers,lst)
print(c)
d = reduce(lambda x,y :x + y ,lst)
print(d)

lstn = [101,22,34,67,98,9,98,77,54,23,45,66,32,60]
def getminvalue(x,y):
    if x < y :
        return x
    else:
        return y

e = reduce(getminvalue,lstn)
print(e)

f = reduce(lambda x,y : x if (x < y) else y ,lstn)
print(f)



