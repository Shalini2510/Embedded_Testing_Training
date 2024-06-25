# DAY 4 TASK2
#Create a Python class named Rectangle with attributes length and breadth and methods
#to calculate area and perimeter.


class Rectangle:
    def __init__(self, length, breadth):
        """Initialize the Rectangle with length and breadth."""
        self.length = length
        self.breadth = breadth

    def area(self):
        """Calculate and return the area of the Rectangle."""
        return self.length * self.breadth

    def perimeter(self):
        """Calculate and return the perimeter of the Rectangle."""
        return 2 * (self.length + self.breadth)

# Example usage
rectangle = Rectangle(5, 3)
print(f"Length: {rectangle.length}")
print(f"Breadth: {rectangle.breadth}")
print(f"Area: {rectangle.area()}")
print(f"Perimeter: {rectangle.perimeter()}")

