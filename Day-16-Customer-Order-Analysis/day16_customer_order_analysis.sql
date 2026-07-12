CREATE TABLE customer_orders
(
    order_id SERIAL PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(30),
    product VARCHAR(40),
    sales NUMERIC(10,2)
);

INSERT INTO customer_orders(customer_name, city, product, sales)
VALUES
('Rahul','Delhi','Laptop',75000),
('Rahul','Delhi','Mouse',1500),
('Priya','Mumbai','Chair',12000),
('Priya','Mumbai','Table',18000),
('Amit','Kolkata','Mobile',35000),
('Amit','Kolkata','Earbuds',4000),
('Sara','Bangalore','Sofa',45000),
('Sara','Bangalore','TV',52000),
('John','Hyderabad','Rice',5000),
('John','Hyderabad','Oil',2500);

-- Practice 1
SELECT *
FROM customer_orders;

-- Practice 2
SELECT
customer_name,
COUNT(order_id) AS total_orders
FROM customer_orders
GROUP BY customer_name;

-- Practice 3
SELECT
customer_name,
SUM(sales) AS total_sales
FROM customer_orders
GROUP BY customer_name;

-- Practice 4
SELECT
customer_name,
ROUND(AVG(sales),2) AS average_order_value
FROM customer_orders
GROUP BY customer_name;

-- Practice 5
SELECT
customer_name,
SUM(sales) AS total_sales
FROM customer_orders
GROUP BY customer_name
ORDER BY total_sales DESC;
