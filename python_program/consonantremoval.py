x = ['A','E','I','O','U','a','e','i','o','u']

def consonantremoval(d):
    for char in d:
        if char in x:
            print(char,end='')

consonantremoval('my girlfriend is beautiful')
    