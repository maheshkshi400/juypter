import re

help(re.match)

# find patteren "A"

c = re.match("A","Allow")
print(c)

# ceck case sesetive

g = re.match("A","allow")
print(g)

# result check by using ignorecase
f =  re.match("A","allow",re.IGNORECASE)
print(f)

#search patteren

d = re.search("ae","maerl")
print(d)

# ceck case sesetive

g = re.search("l","allow",re.IGNORECASE)
print(g)


# find patteren "A"

i = re.match("^a","Allow")
print(i)

# ceck case sesetive
i = re.match("^a","Allow")
print(i)


# tgnore case sesetive

g = re.search("^a","Allow",re.IGNORECASE)
print(g)

# by using search 

g = re.search("^A","allow",re.IGNORECASE)
print(g)

# ends with the characters 

z = re.search("l$","maerl")
print(z)

# with match
z = re.match("l$","maerl")
print(z)

# serch the patteren 

patteren = "ae"
strg = "anamiaaeghilmae"
z = re.search(patteren,strg)
print(z)
