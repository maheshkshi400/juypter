a = int(input("Enter the value of a: "))
b = int(input("Enter the value of b: "))
temp = a
a = b
b = temp
print("after swapping: ")
print("Value of a: ",a)
print("Value of b: ",b)



# Method 2:
a = int(input("Enter the value of a: "))
b = int(input("Enter the value of b: "))

a = a+b
b= a-b
a = a-b
print("after swapping: ")
print("Value of a: ",a)
print("Value of b: ",b)




