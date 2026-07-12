CREATE TABLE sales
(
    order_id SERIAL PRIMARY KEY,
    category VARCHAR(30),
    product_name VARCHAR(50),
    sales NUMERIC(10,2)
);

INSERT INTO sales(category, product_name, sales)
VALUES
('Electronics','Laptop',75000),
('Electronics','Mobile',35000),
('Furniture','Chair',12000),
('Furniture','Table',18000),
('Grocery','Rice',5000),
('Grocery','Oil',3500),
('Electronics','Headphone',5000),
('Furniture','Sofa',45000),
('Grocery','Sugar',2500),
('Electronics','Monitor',22000);

-- Practice 1
SELECT *
FROM sales;

-- Practice 2
SELECT
category,
SUM(sales) AS total_sales
FROM sales
GROUP BY category;

-- Practice 3
SELECT
category,
ROUND(AVG(sales),2) AS average_sales
FROM sales
GROUP BY category;

-- Practice 4
SELECT
category,
COUNT(*) AS total_orders
FROM sales
GROUP BY category;

-- Practice 5
SELECT
category,
SUM(sales) AS total_sales
FROM sales
GROUP BY category
ORDER BY total_sales DESC;
