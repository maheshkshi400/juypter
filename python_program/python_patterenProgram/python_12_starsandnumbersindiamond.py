n = int(input("Enter the nmber of rows: "))

for i in range(n):
    m=i+1
    for j in range(n-i-1):
        print("",end=" ")
    for j in range(i+1):
        print("*",end="")
    
    for j in range(i+1):
        print(m,end="")
        m=m+1
    print()

for i in range(0,2*n,2):
    k=i//2
    for j in range(k):
        print(" ",end="")
    for j in range(n-k):
        print(n-j,end="")
    
    for j in range(i,2*n,2):
        print(j+1,end="")
        m=m+1
    print()

