CREATE TABLE monthly_sales
(
    order_id SERIAL PRIMARY KEY,
    order_date DATE,
    category VARCHAR(30),
    sales NUMERIC(10,2)
);

INSERT INTO monthly_sales(order_date, category, sales)
VALUES
('2025-01-05','Electronics',75000),
('2025-01-15','Furniture',18000),
('2025-02-10','Electronics',35000),
('2025-02-18','Grocery',5000),
('2025-03-06','Furniture',45000),
('2025-03-20','Electronics',25000),
('2025-04-08','Grocery',6000),
('2025-04-15','Furniture',22000),
('2025-05-10','Electronics',52000),
('2025-05-25','Grocery',8000);

-- Practice 1
SELECT *
FROM monthly_sales;

-- Practice 2
SELECT
EXTRACT(MONTH FROM order_date) AS month,
SUM(sales) AS total_sales
FROM monthly_sales
GROUP BY month
ORDER BY month;

-- Practice 3
SELECT
EXTRACT(MONTH FROM order_date) AS month,
COUNT(*) AS total_orders
FROM monthly_sales
GROUP BY month
ORDER BY month;

-- Practice 4
SELECT
EXTRACT(MONTH FROM order_date) AS month,
ROUND(AVG(sales),2) AS average_sales
FROM monthly_sales
GROUP BY month
ORDER BY month;

-- Practice 5
SELECT
EXTRACT(MONTH FROM order_date) AS month,
SUM(sales) AS total_sales
FROM monthly_sales
GROUP BY month
ORDER BY total_sales DESC
LIMIT 1;
