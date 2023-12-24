import re

# search patteren
patteren = "[e]"
strg = "approvalofselection"

x = re.search(patteren,strg)
print(x)

# search patteren
patteren = "[ae]"
strg = "approvalofselection"

x = re.search(patteren,strg)
print(x)


# search patteren of the string
patteren = "[orsen]"
strg = "approvalofselection"

d = re.search(patteren,strg)
print(d)

# find the numbers
patteren = "[3]"
strg1 = "123456789102233445566778899"

z = re.search(patteren,strg1)
print(z)

# Find all strings
patteren = "[329]"
strg1 = "123456789102233445566778899"

x = re.findall(patteren,strg1)
print(x)

# Find all strings and numbers 
patteren = "[3ml2jz9]"
strg1 = "123sv45678910t22u3vb3n4m45jk5lm66o778899"

w = re.findall(patteren,strg1)
print(w)


# Find all strings and numbers 
patteren = "[^v]"
strg1 = "vn"

g = re.search(patteren,strg1)
print(g)


# search patteren in the range  of the string
patteren = "[a-p]"
strg2 = "approvalofselection"

s = re.search(patteren,strg2)
print(s)

# search patteren in the range  of the string(ignorecase)
patteren = "[A-Z]"
strg2 = "between"

t = re.search(patteren,strg2,re.IGNORECASE)
print(t)

patteren = "[A-Za-z]"
strg2 = "between"

c = re.search(patteren,strg2)
print(c)

# Find all strings and numbers 
patteren = "[0-9]"
strg1 = "123sv45678910t22u3vb3n4m45jk5lm66o778899"

a = re.findall(patteren,strg1)
print(a)

# Find all strings and numbers 
patteren = "[^0-9]"
strg1 = "123sv45678910t22u3vb3n4m45jk5lm66o778899"

a = re.findall(patteren,strg1)
print(a)