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
('Neha','IT',82000),
('Rohan','IT',68000),
('Sara','Finance',90000),
('Kiran','Finance',71000),
('Amit','Sales',65000),
('John','Sales',45000),
('Priya','HR',50000),
('Anita','HR',48000),
('David','Marketing',55000);

-- Practice 1
SELECT *
FROM employee_salary;

-- Practice 2
SELECT
department,
SUM(salary) AS total_salary
FROM employee_salary
GROUP BY department;

-- Practice 3
SELECT
department,
AVG(salary) AS average_salary
FROM employee_salary
GROUP BY department;

-- Practice 4
SELECT
department,
COUNT(*) AS total_employees
FROM employee_salary
GROUP BY department;

-- Practice 5
SELECT
department,
SUM(salary) AS total_salary
FROM employee_salary
GROUP BY department
HAVING SUM(salary) > 150000;

-- Practice 6
SELECT
department,
ROUND(AVG(salary)) AS average_salary
FROM employee_salary
GROUP BY department
HAVING AVG(salary) > 70000;
