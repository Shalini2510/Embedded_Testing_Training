# DAY 3 TASK1

n=5
def factorial(n):
    #Calculate and return the factorial of a number
    if n == 0:
        return 1
    else:
        result = 1
        for i in range(1, n + 1):
            result *= i
        return result

# Example usage
print(f"The factorial of {n} is {factorial(n)}")
