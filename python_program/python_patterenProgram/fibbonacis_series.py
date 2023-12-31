n= int(input("Enter the nos you want:"))
first=0
second=1
for i in range(n):
    print(first)
    temp= first
    first=second
    second=second+temp
    print(second)