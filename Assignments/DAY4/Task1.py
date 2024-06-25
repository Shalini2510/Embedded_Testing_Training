# Open the file in read mode
with open("example.txt", "r") as file:
    # Read the file line by line
    for line in file:
        # Print the line
        print(line.strip())

'''with open("example.txt", "r") as file: opens a file named "example.txt" in read mode ("r"). 
The with statement ensures that the file is properly closed when we're done with it.
for line in file: reads the file line by line. The file object is an iterator that yields each line of the file as a string.
print(line.strip()) prints each line, using the strip() method to remove any trailing newlines (\n) or whitespace.'''