CREATE TABLE products
(
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(50),
    price INT
);

INSERT INTO products
(product_name,category,price)

VALUES
('Mobile','watch',5000),
('iPhone','brand',5000),
('TV','watch2',300),
('TV2','watch3',1000),
('TV3','watch',5000),
('Mobile2','watch',500),
('Cycle','no1',500),
('Camera','watchly',600),
('Laptop','watchly',6000),
('Mobile5','watch4',5000);

-- Question 1
SELECT *
FROM products
WHERE price > 1000;

-- Question 2
SELECT *
FROM products
WHERE price < 1000;

-- Question 3
SELECT *
FROM products
WHERE price >= 5000;

-- Question 4
SELECT *
FROM products
WHERE price <= 600;

-- Question 5
SELECT *
FROM products
WHERE category <> 'watch';
