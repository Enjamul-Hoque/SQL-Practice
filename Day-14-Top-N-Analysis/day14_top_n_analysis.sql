CREATE TABLE employee
(
    emp_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(50),
    department VARCHAR(30),
    salary INT
);

INSERT INTO employee(employee_name, department, salary)
VALUES
('Rahul','IT',85000),
('Priya','HR',50000),
('Amit','Sales',65000),
('Sara','Finance',95000),
('John','Sales',45000),
('Neha','IT',78000),
('David','Marketing',55000),
('Rohit','Finance',92000),
('Karan','IT',81000),
('Anjali','HR',72000);

-- Practice 1
SELECT *
FROM employee;

-- Practice 2
SELECT
employee_name,
salary
FROM employee
ORDER BY salary DESC
LIMIT 3;

-- Practice 3
SELECT
employee_name,
salary
FROM employee
ORDER BY salary DESC
LIMIT 5;

-- Practice 4
SELECT
employee_name,
department,
salary
FROM employee
ORDER BY salary DESC
LIMIT 1;

-- Practice 5
SELECT
department,
employee_name,
salary
FROM
(
SELECT
department,
employee_name,
salary,
ROW_NUMBER() OVER(PARTITION BY department ORDER BY salary DESC) AS rn
FROM employee
) t
WHERE rn = 1;
