list1 = [138,40,44,56,90,22,10,41,127]
for i in range(len(list1)-1):
    min_val=min(list1[i: ])
    min_ind= list1.index(min_val,i)
    if list1[i]!=list1[min_ind]:
        list1[i],list1[min_ind] = list1[min_ind],list1[i]
print(list1)