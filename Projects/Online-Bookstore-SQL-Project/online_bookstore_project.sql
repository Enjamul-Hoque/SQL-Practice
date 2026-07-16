-- Create Database
CREATE DATABASE OnlineBookstore;

-- Switch to the database
\c OnlineBookstore;

-- Create Tables
DROP TABLE IF EXISTS Books;
CREATE TABLE Books (
    Book_ID SERIAL PRIMARY KEY,
    Title VARCHAR(100),
    Author VARCHAR(100),
    Genre VARCHAR(50),
    Published_Year INT,
    Price NUMERIC(10, 2),
    Stock INT
);
DROP TABLE IF EXISTS customers;
CREATE TABLE Customers (
    Customer_ID SERIAL PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Phone VARCHAR(15),
    City VARCHAR(50),
    Country VARCHAR(150)
);
DROP TABLE IF EXISTS orders;
CREATE TABLE Orders (
    Order_ID SERIAL PRIMARY KEY,
    Customer_ID INT REFERENCES Customers(Customer_ID),
    Book_ID INT REFERENCES Books(Book_ID),
    Order_Date DATE,
    Quantity INT,
    Total_Amount NUMERIC(10, 2)
);

SELECT * FROM Books;
SELECT * FROM Customers;
SELECT * FROM Orders;


-- Import Data into Books Table
COPY Books(Book_ID, Title, Author, Genre, Published_Year, Price, Stock) 
FROM 'C:\Users\Enjamamul\Desktop\SQL Practice File\Practice Files SQL Projects\Books.csv' 
CSV HEADER;

-- Import Data into Customers Table
COPY Customers(Customer_ID, Name, Email, Phone, City, Country) 
FROM 'C:\Users\Enjamamul\Desktop\SQL Practice File\Practice Files SQL Projects\Customers.csv' 
CSV HEADER;

-- Import Data into Orders Table
COPY Orders(Order_ID, Customer_ID, Book_ID, Order_Date, Quantity, Total_Amount) 
FROM 'C:\Users\Enjamamul\Desktop\SQL Practice File\Practice Files SQL Projects\Orders.csv' 
CSV HEADER;


--RETRIVE ALL BOOKS IN THE 'FICTION ' GENRE

SELECT * FROM BOOKS
WHERE GENRE='Fiction';


--find books published after the year 1950

select * from books
where published_year> 1950;


--3 list all customers from the canada
select * from customers
where country='Canada'

--4) show orders placed in nevember 2023;
	select * from orders
	where order_date between '2023-11-1' and '2023-11-30'

--5 Retrieve the total stocks of books abailable
select sum(stock)as total_stock
 from books


--6) find the details of the most expensive books

Select * from books 
order by price desc
limit 1;


---7) show all customers who orderd more than 1 Quentity of book

	select * from orders
	where quantity>1

--Retrive all orders where the total amount exceeds $20:

	select * from orders
	where total_amount>20;


--9 list all genres abailable  in the books table

	select distinct genre from books

--10 find the book with the lowest stock

select * from books 
order by stock
limit 1;

--11 calculate the total revenue generated from all orders

select sum(total_amount) as revenue 
from orders


--advane questiong
--1) Retrive the total number of books sold for each genre

SELECT * FROM ORDERS;

SELECT B.GENRE, SUM(O.QUANTITY) AS TOTAL_BOOK_SOLD
FROM ORDERS O
JOIN BOOKS B ON O.BOOK_ID=B.BOOK_ID
GROUP BY B.GENRE;



--2) FIND THE AVARAGE PRICE OF BOOKS IN THE 'FANTASY' GENRE

SELECT AVG(PRICE) AS AVG_PRICE
FROM BOOKS
WHERE GENRE='Fantasy'



--3) list customers who have placed al least 2 orders:

select * from orders

select o.customer_id,c.name, count(order_id) as order_count
from orders o
join customers c on o.customer_id=c.customer_id
group by o.customer_id, c.name
having count(order_id)>=2



--4) find the most frequently orderd book:
 select o.book_id,b.title, count(order_id) as order_count
 from orders o
 join books b on o.book_id=b.book_id
 group by o.book_id,b.title
 order by order_count desc limit 1;



 --5) show the top 3 most expensive books of  'Fantasy' genre:
 
 select * from books
 where genre='Fantasy'
 order by price desc limit 3;



 --6) Retirive the total quentity of books sold by each author:
 select * from orders
 
 select b.author, sum(o.quantity) as total_quentity
 from orders o
 join books b on o.book_id=b.book_id
 group by b.author



-- 7) List the cities where customers who spent over $30 are located:
select c.city , total_amount
from orders o
join customers c on o.customer_id=c.customer_id
where o.total_amount>30




-- 8) Find the customer who spent the most on orders:
select c.customer_id, c.name, sum(o.total_amount) as total_spent
from orders o
join customers c on o.customer_id=c.customer_id
group by c.customer_id, c.Name
order by total_spent desc 
limit 1



-- 9) Calculate the stock remaining after fulfilling all orders:

select b.book_id, b.title, b.stock, coalesce (sum(quantity),0) as Order_Quantity,
	b.stock - coalesce (sum(quantity),0) as remaining_Quantity
from books b
left join orders o on b.book_id=o.book_id
group by b.book_id order by b.book_id;