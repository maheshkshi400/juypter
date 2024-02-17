n= int(input("Enter the nos you want:"))
first=0
second=1
for i in range(n):
    print(first)
    temp= first
    first=second
    second=second+temp
    print(second,end="")
    
    
    
def fibonacci(n):
    fib_series = [0, 1]  # Initialize Fibonacci series with first two numbers
    
    # Generate Fibonacci series up to the nth term
    while len(fib_series) < n:
        next_number = fib_series[-1] + fib_series[-2]
        fib_series.append(next_number)
    
    return fib_series[:n]

# Example usage:
num_terms = int(input("Enter the number of terms for Fibonacci series: "))
fibonacci_series = fibonacci(num_terms)
print("Fibonacci series up to", num_terms, "terms:", fibonacci_series)
