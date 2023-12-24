

n =int(input("enter the no. of rows:"))

for row in range(n,0,-1):
    for col in range(1,row+1):
        print(col,end="")
    print()


n =int(input("enter the no. of rows:"))

for row in range(n,0,-1):
    for col in range(1,row+1):
        print(row,end="")
    print()