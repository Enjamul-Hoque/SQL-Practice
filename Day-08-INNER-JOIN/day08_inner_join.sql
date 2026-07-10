CREATE TABLE customers
(
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(30)
);

INSERT INTO customers
VALUES
(1,'Rahul','Delhi'),
(2,'Priya','Mumbai'),
(3,'Amit','Kolkata'),
(4,'Sara','Chennai');

CREATE TABLE orders
(
    order_id INT PRIMARY KEY,
    customer_id INT,
    amount INT
);

INSERT INTO orders
VALUES
(101,1,5000),
(102,2,3500),
(103,1,7000),
(104,3,2500);

-- Practice 1
SELECT *
FROM customers;

-- Practice 2
SELECT *
FROM orders;

-- Practice 3
SELECT
c.customer_name,
o.order_id,
o.amount
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id;

-- Practice 4
SELECT
c.customer_name,
c.city,
o.amount
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id;

-- Practice 5
SELECT
c.customer_id,
c.customer_name,
o.order_id,
o.amount
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id;
