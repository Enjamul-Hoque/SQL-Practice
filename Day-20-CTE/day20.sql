CREATE TABLE employee_sales
(
    emp_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    department VARCHAR(30),
    city VARCHAR(30),
    salary NUMERIC,
    sales NUMERIC
);

INSERT INTO employee_sales
VALUES
(1,'Rahul','IT','Delhi',75000,120000),
(2,'Priya','HR','Kolkata',50000,45000),
(3,'Amit','Sales','Mumbai',65000,98000),
(4,'Sara','Finance','Delhi',90000,150000),
(5,'John','Sales','Mumbai',45000,65000),
(6,'Neha','IT','Bangalore',82000,130000),
(7,'David','Marketing','Hyderabad',55000,60000),
(8,'Anita','HR','Kolkata',48000,42000),
(9,'Rohan','IT','Delhi',68000,105000),
(10,'Kiran','Finance','Pune',71000,115000);

SELECT *
FROM employee_sales;

--practice 1 Display all employees using CTE.
WITH employee_cte AS
(
    SELECT *
    FROM employee_sales
)
SELECT *
FROM employee_cte;

---practice 2 Show employees whose salary is greater than 70000 using CTE.	

with emm as
(
	select employee_name, salary
	from employee_sales
	
)
	select * from emm
	where salary>70000


--practice 3 Show employees from IT department using CTE.
with IT_dep as
(
	select employee_name,department,salary
	from employee_sales
)
	select * from IT_dep
	where department='IT'




----Show employees whose sales are greater than 100000 using CTE.
 with emp_sales as
 (
	select employee_name, salary
	from employee_sales
 )
 	select * from emp_sales
	 where salary>10000


--Show employees from Delhi using CTE.

with emp_delhi as
(
	select employee_name, city
	from employee_sales
)
	select * from emp_delhi
	where city='Delhi'
	

--
