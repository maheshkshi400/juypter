s= 'python'
r = s.isidentifier()
print(r)


s= '2python'
r = s.isidentifier()
print(r)

s= '2p@ython'
r = s.isidentifier()
print(r)

s= 'python'
r = s.isprintable()
print(r)

s= ''
r = s.isidentifier()
print(r)

s= 'python'
r = s.isspace()
print(r)

s= '\t'
r = s.isidentifier()
print(r)

s= '\n'
r = s.isidentifier()
print(r)

s= 'this is my python program'
r = s.title()
print(r)

s= "Mahesh's car"
r = s.title()
print(r)

s= '  this is python   '
r = s.strip()
print(r)

s= '  this is python   '
r = s.rstrip()
print(r)

s= '  this is python   '
r = s.lstrip()
print(r)

s= 'This is Python'
r = s.partition(' is')
print(r)

s= 'This is Python'
r = s.rpartition(' is')
print(r)

s= 'I Love Python'
r = s.split()
print(r)
















