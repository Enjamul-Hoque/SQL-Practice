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
('David','Marketing',55000);

-- Practice 1
SELECT *
FROM employee;

-- Practice 2
SELECT
employee_name,
salary,
CASE
WHEN salary >= 70000 THEN 'Eligible'
ELSE 'Not Eligible'
END AS promotion_status
FROM employee
WHERE salary >= 50000;

-- Practice 3
SELECT
employee_name,
department,
salary,
CASE
WHEN department='IT' THEN 'Technical'
WHEN department='Finance' THEN 'Finance'
ELSE 'Other'
END AS team
FROM employee
WHERE salary >= 60000;

-- Practice 4
SELECT
employee_name,
salary,
CASE
WHEN salary >= 90000 THEN 'Excellent'
WHEN salary >=70000 THEN 'Good'
ELSE 'Average'
END AS performance
FROM employee
WHERE department <> 'HR';
