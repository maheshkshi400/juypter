import re
teststring ="b"
patteren = "a*b"
result = re.search(patteren,teststring)
print(result)



test ="b"
patt = "a+b"
res = re.search(patt,test)
print(res)





tes ="ab"
pat = "a?b"
rest = re.search(pat,tes)
print(rest)