list1 = [56,3,2,78,6,0]
for i in range(len(list1)):
    min_val=min(list1[i: ])
    min_ind= list1.index(min_val)
    list1[i],list1[min_ind] = list1[min_ind],list1[i]
print(list1)
