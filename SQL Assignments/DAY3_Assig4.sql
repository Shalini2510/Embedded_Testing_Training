create database Service
use Service

-- Create the customers table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    email VARCHAR(100),
    city VARCHAR(50),
    region VARCHAR(50)
);

-- Insert 10 rows of data
INSERT INTO customers (customer_id, customer_name, email, city, region) VALUES
(1, 'John Doe', 'john.doe@example.com', 'New York','Northeast'),
(2, 'Jane Smith', 'jane.smith@example.com', 'Los Angeles','west'),
(3, 'Robert Brown', 'robert.brown@example.com', 'Chicago','Midwest'),
(4, 'Emily Davis', 'emily.davis@example.com', 'Houston','South'),
(5, 'Michael Wilson', 'michael.wilson@example.com', 'Phoenix','West'),
(6, 'Sarah Johnson', 'sarah.johnson@example.com', 'Philadelphia','Northeast'),
(7, 'David Lee', 'david.lee@example.com', 'San Antonio','South'),
(8, 'Laura Martin', 'laura.martin@example.com', 'San Diego','West'),
(9, 'James White', 'james.white@example.com', 'Dallas','South'),
(10, 'Linda Harris', 'linda.harris@example.com', 'San Jose','West');


-- Create the orders table
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    order_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- Insert 10 rows of data into the orders table
INSERT INTO orders (order_id, customer_id, order_date, order_amount) VALUES
(1, 1, '2024-01-15', 150.00),
(2, 2, '2024-02-20', 200.00),
(3, 1, '2024-03-25', 300.00),
(4, 3, '2024-04-05', 120.00),
(5, 5, '2024-05-10', 450.00),
(6, 6, '2024-06-15', 250.00),
(7, 4, '2024-07-20', 350.00),
(8, 8, '2024-08-25', 400.00),
(9, 1, '2024-09-30', 500.00),
(10, 7, '2024-10-05', 220.00);

create table products(product_id int primary key, product_name varchar(100), price decimal(10,2));

INSERT INTO products(product_id,product_name, price) values 
(1,'PRODUCT A',50.00),
(2,'PRODUCT B',75.00),
(3,'PRODUCT C',100.00),
(4,'PRODUCT D',120.00),
(5,'PRODUCT E',150.00),
(6,'PRODUCT F',200.00),
(7,'PRODUCT G',250.00),
(8,'PRODUCT H',300.00),
(9,'PRODUCT I',350.00),
(10,'PRODUCT J',400.00);

-- Begin the transaction
START TRANSACTION;

-- Insert a new record into the orders table
INSERT INTO orders (order_id, customer_id, order_date, order_amount) VALUES
(11, 3, '2024-11-01', 275.00);

-- Commit the transaction
COMMIT;

-- Begin the transaction
START TRANSACTION;

-- Update a record in the products table
UPDATE products
SET price = price * 1.1 -- Assuming you are increasing the price by 10%
WHERE product_id = 5;

select * from products
-- Rollback the transaction
ROLLBACK;


