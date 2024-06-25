import re

text = "I love programming in Python. Python is a great language for data science."

# Use the re module to find all occurrences of the word "Python"
matches = re.findall(r"Python", text)

print("Found", len(matches), "occurrences of the word 'Python':")
for match in matches:
    print(match)

#OUTPUT:
# Found 2 occurrences of the word 'Python':
# Python
# Python