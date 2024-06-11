create database Service
use Service

-- Create the customers table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    email VARCHAR(100),
    city VARCHAR(50)
);

-- Insert 10 rows of data
INSERT INTO customers (customer_id, customer_name, email, city) VALUES
(1, 'John Doe', 'john.doe@example.com', 'New York'),
(2, 'Jane Smith', 'jane.smith@example.com', 'Los Angeles'),
(3, 'Robert Brown', 'robert.brown@example.com', 'Chicago'),
(4, 'Emily Davis', 'emily.davis@example.com', 'Houston'),
(5, 'Michael Wilson', 'michael.wilson@example.com', 'Phoenix'),
(6, 'Sarah Johnson', 'sarah.johnson@example.com', 'Philadelphia'),
(7, 'David Lee', 'david.lee@example.com', 'San Antonio'),
(8, 'Laura Martin', 'laura.martin@example.com', 'San Diego'),
(9, 'James White', 'james.white@example.com', 'Dallas'),
(10, 'Linda Harris', 'linda.harris@example.com', 'San Jose');


select * from customers

-- for specific cities 

-- SELECT customer_name, email FROM customers WHERE city = 'SpecificCity';

SELECT customer_name, email FROM customers WHERE city = 'New York';

