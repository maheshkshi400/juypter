countries = ["india","USA","uk","Italy","Germany"]


# Replace the item
countries[3] = "new zealand"
print(countries)


# add the item in the list
countries.append("romania")
print(countries)

# Delete the last items form the list
countries.pop()
print(countries)



# Delete any item form list 
del countries[2]
print(countries)


for  i in countries:
    print(i)

# find out the item in the list
countries = ["india","USA","uk","Italy","Germany"]


# find out the item in the list #

if "Germany" in countries:
    print("true-found item")
else:
    print("False- item not found")


# Total count of items int he list
len(countries)
print()

# copy list in another list
countries2 = countries.copy()
print(countries2,end=" ")


# concatenate two list - Method 1
countries = ["india","USA","uk","Italy","Germany"]
countries3 = ["Russia","ukraine","bulgeria","canada","fiji"]
state = countries + countries3
print(state)


lst = [1,2,3,4,5,6,7]
lst2 = [61,62,63,64,65,66,67]
lst3 = lst+lst2
print(lst3)

# concatenate two list - Method 2
lst.extend(lst2)
print(lst)

# concatenate two list - Method 3
list3 = [51,52,53,54,55,56]
list4 = [71,72,73,74,75,76]
for i in list4:
    list3.append(i)
print(list3)

# list constriction
sche1 = list((101,102,103,104))
print(sche1)

# find out count of occourences in the list

s1 = [10,201,10,30,40,10,30,20]
print(s1)
s1.count(20)

# reverse the list 
list3.reverse()
print(list3)


# sort the list in ascending and descending order
# Asending order
countries.sort()
print(countries)

# Descnding order
countries.sort(reverse=True)
print(countries)



