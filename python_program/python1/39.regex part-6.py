import re

# 
teststring ="p\c"
patteren = r"\\"
result = re.search(patteren,teststring)
print(result)

# 
teststring ="aeehhaaaaeehhffhee"
patteren = "a{2}"
result = re.findall(patteren,teststring)
print(result)


# split -
teststring ="aee hhaaaa eehh ffh ee"
patteren = "\s"
result = re.split(patteren,teststring)
print(result)


# sub -

teststring ="aee hhaaaa eehh ffh ee"
patteren = "\s"
result = re.sub(patteren,'&',teststring)
print(result)

# replace only one space 
teststring ="aee hhaaaa eehh ffh ee"
patteren = "\s"
result = re.sub(patteren,'&',teststring,1)
print(result)

# subn - 
teststring ="aee hhaaaa eehh ffh ee"
patteren = "\s"
result = re.subn(patteren,'&',teststring)
print(result)


teststring ="aee hhaaaa eehh ffh ee"
patteren = "\s"
result = re.search(patteren,teststring)
print(result)