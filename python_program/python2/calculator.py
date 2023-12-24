num1 =int(input("Enter a num1:  "))

opr =input("Enter the operation (+,-,*,/):  ")

num2 =int(input("Enter a num2:  "))

if (opr=="+"):
    print(num1+num2)
elif (opr=="-"):
    print(num1-num2)
elif (opr=="*"):
    print(num1*num2)
elif(opr=="/"):
    if (num1>num2):
        print(round(num1/num2))
    else:
        print("invalid operation")
else:
    print("invalid operation ")
 