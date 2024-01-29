# Ascending order

list1 =[ ]
num = int(input("How manay numbers you want to enter?: "))
print("Enter values: ")
for k in range(num):
    list1.append(int(input()))
print("Unsorted list: ",list1)
for j in range(len(list1)-1):
    for i in range(len(list1)-1-j):
        if list1[i] > list1[i+1]:
            list1[i],list1[i+1]=list1[i+1],list1[i]
            print(list1)
        else:
            print(list1)
    print()
print("Sorted list: ",list1)


# Desending order

list1 =[10,15,4,23,0]
print("Unsorted list: ",list1)
for j in range(len(list1)-1):
    for i in range(len(list1)-1):
        if list1[i] < list1[i+1]:
            list1[i],list1[i+1]=list1[i+1],list1[i]
print("Sorted list: ",list1)




