# addition_function()

def addition(a, b):
    c = a + b
    return c

result = addition(a, b)
print("The addition of " + str(a) + " and " + str(b) + " is:", result)




# Exponent_function()

def exponent(a,b):
    if b == 0:
        return 1
    else:
        c= a**b
        return c
    
output = exponent(a,b)
print("The exponent of " + str(a) + " and " + str(b) + " is:", output)


# Multiplication_function()

def Multiplication(a,b):
    if b == 0:
        return 1
    else:
        c= a*b
        return c
    
output = Multiplication(a,b)
print("The Multiplication of " + str(a) + " and " + str(b) + " is:", output)