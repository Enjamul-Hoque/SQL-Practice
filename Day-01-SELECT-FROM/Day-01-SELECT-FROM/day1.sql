CREATE TABLE employee (
    emp_id INT GENERATED ALWAYS AS IDENTITY,
    employee_name VARCHAR(50),
    department VARCHAR(30),
    salary NUMERIC
);

INSERT INTO employee(employee_name, department, salary)
VALUES
('Rahul','IT',75000),
('Priya','HR',50000),
('Amit','Sales',65000),
('Sara','Finance',90000),
('John','Sales',45000);

SELECT * FROM employee;

SELECT employee_name, salary
FROM employee;

SELECT department
FROM employee;
