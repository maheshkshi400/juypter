# adition_function()

a = int(input("Enter a number1: "))
b = int(input("Enter a number2: "))

def addition(a, b):
    c = a + b
    return c

result = addition(a, b)
print("The addition of " + str(a) + " and " + str(b) + " is:", result)



# exponent_function()

a = int(input("Enter first number: "))
b = int(input("Enter second number: "))

def exponent(a,b):
    if b == 0:
        return 1
    else:
        c= a**b
        return c
    
output = exponent(a,b)
print("The exponent of " + str(a) + " and " + str(b) + " is:", output)



# Multiplication_function()

a = int(input("Enter first number: "))
b = int(input("Enter second number: "))

def Multiplication(a,b):
    if b == 0:
        return 1
    else:
        c= a*b
        return c
    
output = Multiplication(a,b)
print("The Multiplication of " + str(a) + " and " + str(b) + " is:", output)