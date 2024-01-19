num = int(input("Enter the number of rows: "))
n=1
for i in range(num):
    for j in range(num-i-1):
        print(format(" ","<3"),end="")
    for j in range(i+1):
        print(format(n,"<6"),end="")
        n=n+1
    print()