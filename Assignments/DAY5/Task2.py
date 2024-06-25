# Create a list comprehension to generate squares of even numbers between 1 to 10
squares = [x**2 for x in range(1, 11) if x % 2 == 0]

print("Squares of even numbers between 1 to 10:", squares)

#OUTPUT
#Squares of even numbers between 1 to 10: [4, 16, 36, 64, 100]