CREATE TABLE employee
(
    emp_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(50),
    department VARCHAR(30),
    salary INT
);

-- Insert Records
INSERT INTO employee(employee_name, department, salary)
VALUES
('Rahul','IT',75000),
('Priya','HR',50000),
('Amit','Sales',65000),
('Sara','Finance',90000),
('John','Sales',45000);

-- Display Table
SELECT *
FROM employee;

-- Update Salary
UPDATE employee
SET salary = 80000
WHERE employee_name = 'Rahul';

-- Update Department
UPDATE employee
SET department = 'Marketing'
WHERE employee_name = 'John';

-- Delete Record
DELETE FROM employee
WHERE employee_name = 'Priya';

-- Final Output
SELECT *
FROM employee;
