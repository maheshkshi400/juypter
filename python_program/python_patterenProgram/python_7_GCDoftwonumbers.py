import math


def computeGCCD(a,b):
    if b==0:
        return a
    else:
        return computeGCCD(b,a%b)
    
num1 = int(input("Enter the first number: "))
num2 = int(input("Enter the second number: "))
print(computeGCCD(num1,num2))