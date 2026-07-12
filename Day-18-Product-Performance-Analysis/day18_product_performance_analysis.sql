CREATE TABLE product_sales
(
    order_id SERIAL PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(30),
    quantity INT,
    sales NUMERIC(10,2)
);

INSERT INTO product_sales(product_name, category, quantity, sales)
VALUES
('Laptop','Electronics',5,375000),
('Mobile','Electronics',8,280000),
('Headphone','Electronics',12,60000),
('Chair','Furniture',10,120000),
('Table','Furniture',6,108000),
('Sofa','Furniture',4,180000),
('Rice','Grocery',20,50000),
('Oil','Grocery',18,45000),
('Sugar','Grocery',15,30000),
('Monitor','Electronics',7,154000);

-- Practice 1
SELECT *
FROM product_sales;

-- Practice 2
SELECT
product_name,
SUM(sales) AS total_sales
FROM product_sales
GROUP BY product_name
ORDER BY total_sales DESC;

-- Practice 3
SELECT
product_name,
ROUND(AVG(sales),2) AS average_sales
FROM product_sales
GROUP BY product_name;

-- Practice 4
SELECT
product_name,
COUNT(order_id) AS total_orders
FROM product_sales
GROUP BY product_name;

-- Practice 5
SELECT
product_name,
category,
sales
FROM product_sales
ORDER BY sales DESC
LIMIT 1;
