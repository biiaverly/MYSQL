DROP DATABASE IF EXISTS bookstore;
CREATE DATABASE IF NOT EXISTS bookstore;

USE bookstore;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS products;
-- Sample tables for demonstration
-- Sample tables for demonstration
CREATE TABLE customers (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  phone VARCHAR(20),
  address VARCHAR(200)
);

CREATE TABLE orders (
  id INT PRIMARY KEY AUTO_INCREMENT,
  customer_id INT,
  order_date DATE,
  total_amount DECIMAL(10, 2),
  product_id INT
);

CREATE TABLE products (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  price DECIMAL(10, 2)
);

-- Insert data into the 'customers' table
INSERT INTO customers (name, email, phone, address)
VALUES
  ('John Smith', 'john@example.com', '+1 123-456-7890', '123 Main St'),
  ('Alice Johnson', 'alice@example.com', '+1 987-654-3210', '456 Oak Ave'),
  ('Bob Williams', 'bob@example.com', '+1 567-890-1234', '789 Elm Rd');

-- Insert data into the 'orders' table
INSERT INTO orders (customer_id, order_date, total_amount, product_id)
VALUES
  (1, '2023-08-01', 120.00, 1),
  (1, '2023-08-05', 75.50, 2),
  (2, '2023-08-03', 200.00, 1),
  (3, '2023-08-07', 50.25, 3);

-- Insert data into the 'products' table
INSERT INTO products (name, price)
VALUES
  ('Widget', 10.00),
  ('Gadget', 20.00),
  ('Doodad', 15.50);


-- Perform a JOIN to get customer names and their orders
SELECT c.name AS customer_name, o.id AS order_id, o.order_date, o.total_amount
FROM customers c
INNER JOIN orders o ON c.id = o.customer_id;

-- Perform a LEFT JOIN to get all products and their order details, including products without orders
SELECT p.name AS product_name, o.id AS order_id, o.order_date, o.total_amount
FROM products p
LEFT JOIN orders o ON p.id = o.product_id;


-- Perform a RIGHT JOIN to get all customers and their orders, including customers without orders
SELECT c.name AS customer_name, o.id AS order_id, o.order_date, o.total_amount
FROM customers c
RIGHT JOIN orders o ON c.id = o.customer_id;

-- Perform a CROSS JOIN to get all possible combinations of customers and products
SELECT c.name AS customer_name, p.name AS product_name
FROM customers c
CROSS JOIN products p;

-- Perform a SELF-JOIN to get customers who share the same address
SELECT c1.name AS customer1_name, c2.name AS customer2_name, c1.address
FROM customers c1
INNER JOIN customers c2 ON c1.address = c2.address AND c1.id <> c2.id;
