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
('iphone','brand',5000),
('tv','watch2',300),
('tv2','watch3',1000),
('tv3','watch',5000),
('Mobile2','watch',500),
('cycle','no1',500),
('cenamatic','watchly',600),
('Interesting Product','watchly',6000),
('Mobile5','watch4',5000);
