CREATE TABLE regional_sales
(
    order_id SERIAL PRIMARY KEY,
    region VARCHAR(30),
    city VARCHAR(30),
    product_name VARCHAR(50),
    sales NUMERIC(10,2)
);

INSERT INTO regional_sales(region, city, product_name, sales)
VALUES
('North','Delhi','Laptop',75000),
('North','Lucknow','Mobile',35000),
('South','Bangalore','Monitor',22000),
('South','Chennai','Keyboard',5000),
('East','Kolkata','Chair',18000),
('East','Bhubaneswar','Table',12000),
('West','Mumbai','Sofa',45000),
('West','Pune','Headphone',8000),
('North','Chandigarh','Printer',15000),
('South','Hyderabad','Mouse',3000);

-- Practice 1
SELECT *
FROM regional_sales;

-- Practice 2
SELECT
region,
SUM(sales) AS total_sales
FROM regional_sales
GROUP BY region
ORDER BY total_sales DESC;

-- Practice 3
SELECT
region,
ROUND(AVG(sales),2) AS average_sales
FROM regional_sales
GROUP BY region
ORDER BY average_sales DESC;

-- Practice 4
SELECT
region,
COUNT(*) AS total_orders
FROM regional_sales
GROUP BY region
ORDER BY total_orders DESC;

-- Practice 5
SELECT
region,
SUM(sales) AS total_sales
FROM regional_sales
GROUP BY region
ORDER BY total_sales DESC
LIMIT 1;
