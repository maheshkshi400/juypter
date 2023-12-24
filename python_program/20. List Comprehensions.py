# create the string

strg= "hello"
print(strg)

# for loop for string

for i in strg:
    print(i)


# create list
lst = [1,2,3,4,5,6,7]
print(lst)


# Create list by using for loop
lst2 = [i for i in strg]
print(lst2)


# convert ht estirn to upper case by using for loop (list comprehesion)
strgupp = [i.upper() for i in strg]
print(strgupp)


# create list of numbers

numbers = [51,52,53,54,55,56,57,58,59,60]
print(numbers)

# duuble the numbers by using list comprehensions
numbers2 = [i*2 for i in numbers]
print(numbers2)


# find out the even numbers fro list

evenlst = [i for i in numbers if i%2==0]
print(evenlst)


# find out the odd numbers fro list

oddlst = [i for i in numbers if i%2==1]
print(oddlst)


# list creation by using range

lst3 = [ i for i in range(71,90)]
print(lst3)


# square of the numbers by using range

lst3 = [ i**2 for i in range(71,90)]
print(lst3)

# range conding with starts and ends

lst4 = [i for i in range(100) if i >11 and i< 41]
print(lst4)


# separate alphabets and numbers seprately 

lst5 = 'mbk8thu45klm34567'
lst6 = [i for i in lst5 if i.isalpha()]
print(lst6)


# output convert to string by using join

lst5 = 'mbk8thu45klm34567'
lst7 = ''.join([ i for i in lst5 if i.isalpha()])
print(lst7)

# output convert to string by using join

lst5 = 'mbk8thu45klm34567'
lst8 = ''.join([ i for i in lst5 if i.isdigit()])
print(lst8)