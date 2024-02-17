x = ['A','E','I','O','U','a','e','i','o','u']


# Consonant removal

def consonantremoval(d):
    for char in d:
        if char in x:
            print(char,end='')

consonantremoval('my girlfriend is beautiful')


# 

def consonantremoval(d):
    for char in d:
        if char not in x:
            print(char,end='')

consonantremoval('my girlfriend is beautiful')

    