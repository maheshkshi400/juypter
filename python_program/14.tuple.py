# tuple creation
# Method 1
tup = ("india","girish",2,"canada")
print(tup)

# Method 2
tupa = tuple(("shivaji","shankar",2,"mandira"))
print(tupa)

# update the tuple

mylist = list(tupa)
print(mylist)

mylist[2]="cassendra"
print(mylist)

tupa=tuple(mylist)
print(tupa)