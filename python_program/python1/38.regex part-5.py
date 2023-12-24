import re
teststring ="a*b"
patteren = "\*"
result = re.search(patteren,teststring)
print(result)


teststring ="a+b"
patteren = "\+"
result = re.search(patteren,teststring)
print(result)


teststring ="a?b"
patteren = "\?"
result = re.search(patteren,teststring)
print(result)


teststring ="hello world hellos"
patteren = "\Ahel"
result = re.search(patteren,teststring)
print(result)

teststring ="hello world hellos"
patteren = "\Ahel"
result = re.findall(patteren,teststring)
print(result)



teststring ="hello world hellos"
patteren = r"\bhel"
result = re.search(patteren,teststring)
print(result)

# b find out not start and in end
teststring ="hello world hellos"
patteren = r"\bhel"
result = re.findall(patteren,teststring)
print(result)


teststring ="hello worldel hellos"
patteren = r"\Bel"
result = re.findall(patteren,teststring)
print(result)

# d- for find out the numbers in strng

teststring ="98$76%07@5!$5"
patteren = r"\d"
result = re.findall(patteren,teststring)
x = ''.join(result)
print(x)


teststring ="98$76%07@5!$5"
patteren = r"\d+"
result = re.findall(patteren,teststring)
print(result)

# D - find out special characters

teststring ="98$76%07@5!$5"
patteren = "\D"
result = re.findall(patteren,teststring)
print(result)


# s - find out new line characters
teststring ="98$76%07@5\n!$5"
patteren = "\s"
result = re.findall(patteren,teststring)
print(result)


# S -find out all characters except new line
teststring ="98$76%07@5!$5_"
patteren = "\S"
result = re.findall(patteren,teststring)
print(result)

# w - find out all characters except special symbol
teststring ="98$76%07@5!$5_"
patteren = "\w"
result = re.findall(patteren,teststring)
print(result)

# W - find out only special characters
teststring ="98$76%07@5!$5_"
patteren = "\W"
result = re.findall(patteren,teststring)
print(result)

# Z -find ot the string ends with the string or not 
teststring ="hello worldz world"
patteren = "world\Z"
result = re.findall(patteren,teststring)
print(result)