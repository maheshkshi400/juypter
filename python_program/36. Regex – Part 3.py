import re

# ". " finds all patteren 
patteren = "."
strg1 = "2a$"

a = re.search(patteren,strg1)
print(a)

# "Behaviour of dots
patteren = ".."
strg1 = "2a$"

z = re.search(patteren,strg1)
print(z)


# "Behaviour of dots search with find all
patteren = ".."
strg1 = "2a$"

t = re.findall(patteren,strg1)
print(t)


# "Behaviour of dots search with find all 
patteren = "..."
strg1 = "2a$"

t = re.search(patteren,strg1)
print(t)
v = re.findall(patteren,strg1)
print(v)


# "Behaviour of dots search with find all 
patteren = ".."
strg1 = "2a$b"

i = re.search(patteren,strg1)
print(i)
c = re.findall(patteren,strg1)
print(c)

# "Behaviour of dots search with find all 
patteren = "."
strg1 = "hello.world"

s = re.search(patteren,strg1)
print(s)
b = re.findall(patteren,strg1)
print(b)