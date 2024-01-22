def roman_numbers(num):
    if num>3999:
        print("Enter number less than 3999!")
        return
    value = [1000,900,500,400,100,90,50,40,10,9,5,4,1]
    symbol = ["M","CM","D","CD","D","XD","L","XL","X","IX","V","IV","I"]
    roman =""
    i=0
    while num>0:
        div = num//value[i]
        num= num%value[i]
        while div:
            roman=roman+symbol[i]
            div= div-1
        i = i+1
    return roman

num= int(input("Enter the integer number: "))
print("roman numerals of",num,"is:",roman_numbers(num))



num = int(input("Enter the integer number: "))

