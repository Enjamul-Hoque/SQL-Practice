CREATE TABLE customer_sales
(
    customer_id SERIAL PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(30),
    purchase_amount NUMERIC(10,2)
);

INSERT INTO customer_sales(customer_name, city, purchase_amount)
VALUES
('Rahul','Delhi',85000),
('Rahul','Delhi',25000),
('Priya','Mumbai',42000),
('Priya','Mumbai',18000),
('Amit','Kolkata',95000),
('Sara','Bangalore',55000),
('John','Hyderabad',22000),
('Neha','Pune',68000),
('David','Chennai',12000),
('Anjali','Jaipur',105000);

-- Practice 1
SELECT *
FROM customer_sales;

-- Practice 2
SELECT
customer_name,
SUM(purchase_amount) AS total_purchase
FROM customer_sales
GROUP BY customer_name
ORDER BY total_purchase DESC;

-- Practice 3
SELECT
customer_name,
SUM(purchase_amount) AS total_purchase,
CASE
WHEN SUM(purchase_amount) >= 100000 THEN 'Platinum'
WHEN SUM(purchase_amount) >= 70000 THEN 'Gold'
WHEN SUM(purchase_amount) >= 40000 THEN 'Silver'
ELSE 'Bronze'
END AS customer_segment
FROM customer_sales
GROUP BY customer_name
ORDER BY total_purchase DESC;

-- Practice 4
SELECT
customer_name,
SUM(purchase_amount) AS total_purchase
FROM customer_sales
GROUP BY customer_name
HAVING SUM(purchase_amount) >= 70000;

-- Practice 5
SELECT
customer_name,
city,
purchase_amount
FROM customer_sales
ORDER BY purchase_amount DESC
LIMIT 5;
