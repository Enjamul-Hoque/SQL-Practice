CREATE TABLE employee
(
    emp_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(50),
    department VARCHAR(30),
    salary INT
);

INSERT INTO employee(employee_name,department,salary)
VALUES
('Rahul','IT',85000),
('Priya','HR',50000),
('Amit','Sales',65000),
('Sara','Finance',95000),
('John','Sales',45000),
('Neha','IT',78000);

-- Display Table
SELECT *
FROM employee;

-- Practice 1
SELECT
employee_name,
salary,
CASE
WHEN salary >= 80000 THEN 'High Salary'
ELSE 'Normal Salary'
END AS salary_status
FROM employee;

-- Practice 2
SELECT
employee_name,
department,
CASE
WHEN department='IT' THEN 'Technical Team'
WHEN department='HR' THEN 'Human Resources'
WHEN department='Finance' THEN 'Finance Team'
ELSE 'Business Team'
END AS department_type
FROM employee;

-- Practice 3
SELECT
employee_name,
salary,
CASE
WHEN salary>=90000 THEN 'Excellent'
WHEN salary>=70000 THEN 'Good'
WHEN salary>=50000 THEN 'Average'
ELSE 'Needs Improvement'
END AS performance_level
FROM employee;
