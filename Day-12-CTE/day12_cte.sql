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
WITH employee_cte AS
(
    SELECT *
    FROM employee
)
SELECT *
FROM employee_cte;

-- Practice 2
WITH avg_salary AS
(
    SELECT AVG(salary) AS avg_sal
    FROM employee
)
SELECT employee_name,
salary
FROM employee
WHERE salary >
(
    SELECT avg_sal
    FROM avg_salary
);

-- Practice 3
WITH dept_max AS
(
    SELECT
        department,
        MAX(salary) AS max_salary
    FROM employee
    GROUP BY department
)
SELECT e.*
FROM employee e
JOIN dept_max d
ON e.department = d.department
AND e.salary = d.max_salary;

-- Practice 4
WITH high_salary AS
(
    SELECT *
    FROM employee
    WHERE salary >= 70000
)
SELECT *
FROM high_salary;
