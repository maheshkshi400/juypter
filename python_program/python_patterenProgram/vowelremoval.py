x = ['A','E','I','O','U','a','e','i','o','u']

def vowelremoval(b):
    for char in b:
        if char not in x:
            print(char,end='')

vowelremoval('i love you')
vowelremoval('my dad name is mohan')