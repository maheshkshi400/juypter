def is_prime(num):
    # check the number is less than 2
    if num < 2:
        return False
    # check for the facors from 2 to the square rot of the number
    for i in range(2, int(num**0.5)+1):
        if num %i == 0:
            return False
        
    # if facor not found,number is prime
    return True


# inpt from the user
num = int(input("enter a number:   "))

# check if the number is prime and print result
if is_prime(num):
    print(f" {num} is a prime number")
else:
    print(f" {num} is a not a prime number")