 # check the numer ispositive,negative or zero

def compute_factorial(num):
    factorial =1 
    if num <0 :
        print("sorry,factorial does nott exist for negative numbers")
    elif num==0:
        print("the factorial of 0 is 1")
    else:
        for i in range(1,num + 1):
            factorial= factorial *i
        print("The factorial of",num,"is",factorial)

# take input from the user
compute_factorial(int(input("Enter a number:   ")))




