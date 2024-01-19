num = int(input("Enter the number of rows: "))
n=1
for i in range(num):
    for j in range(i+1):
        print(format(n,"<4"),end="")
        n=n+1
    print()