
def filternmbers(x):
    if x>5:
        return x
a = filternmbers(2)
print(a)

lst = list(range(1,11))
print(lst)
def filternum(x):
    if x>5:
        return x
print(list(filter(filternmbers,lst)))

print(list(filter(lambda x : x >5,lst)))

# filter even numbers
def filtereven(x):
    if x%2==0:
        return x
lent= list(range(1,200))
print(lent)
print(list(filter(filtereven,lent)))
print(list(filter(lambda x : x%2==0,lent)))