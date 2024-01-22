num = int(input("Enter the integer number: "))
i = 0
res = 0
while res<num:
    res = 1<<i
    if res==num:
        print("yes  number if power of 2!:2 power",i)           
        break
    i = i+1
else:
    print("No entered number is not power of 2")
