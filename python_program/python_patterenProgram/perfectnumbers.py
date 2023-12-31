num = int(input("Enter the no to check it perfect or not: "))
result=0
for i in range (1,num):
    if num%i==0:
        result= result+i
if result==num:
    print(num,"is the perfect number")
else:
    print(num,"is not the perect number")