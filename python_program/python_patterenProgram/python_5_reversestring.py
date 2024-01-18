def reverse(string):
    reversed_string=" "
    for i in string:
        reversed_string=i+reversed_string
    print("Reversed string is:" ,reversed_string)


string=input("Enter a string : ")
print("Entered string ",string)
reverse(string)
