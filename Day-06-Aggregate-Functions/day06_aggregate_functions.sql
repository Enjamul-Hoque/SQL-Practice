CREATE TABLE employee_salary
(
    emp_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(50),
    department VARCHAR(30),
    salary INT
);

INSERT INTO employee_salary(employee_name, department, salary)
VALUES
('Rahul','IT',75000),
('Priya','HR',50000),
('Amit','Sales',65000),
('Sara','Finance',90000),
('John','Sales',45000);

-- Count Employees
SELECT COUNT(*) AS total_employees
FROM employee_salary;

-- Total Salary
SELECT SUM(salary) AS total_salary
FROM employee_salary;

-- Average Salary
SELECT ROUND(AVG(salary)) AS average_salary
FROM employee_salary;

-- Highest Salary
SELECT MAX(salary) AS highest_salary
FROM employee_salary;

-- Lowest Salary
SELECT MIN(salary) AS lowest_salary
FROM employee_salary;
