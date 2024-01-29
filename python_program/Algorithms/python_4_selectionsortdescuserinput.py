
num= int(input("How many numbers you want to enter? : "))

list1 = [int(input("Enter number: ")) for x in range(num)]
print("unsorted list",list1)


for i in range(len(list1)-1):
    m_ind=i
    for j in range (i+1,len(list1)):
        if list1[j] > list1[m_ind]:
            m_ind= j

    
    if list1[i]!=list1[m_ind]:
        list1[i],list1[m_ind] = list1[m_ind],list1[i]
print(list1)


