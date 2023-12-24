import random

# random function generates the number in between 0 & 1.
print(random.random())

# randint function 
print(random.randint(1,100))


# randrange function
print(random.randrange(1,100,3))

# seed function
random.seed(10)
print(random.randrange(0,100))

