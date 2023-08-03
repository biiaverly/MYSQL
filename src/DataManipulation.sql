USE bookstore;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS departments;

CREATE TABLE employees (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100),
  department VARCHAR(50),
  salary DECIMAL(10, 2)
);

CREATE TABLE departments(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50)
);

INSERT INTO departments (name)
VALUES
  ('HR'),
  ('IT'),
  ('Finance'),
  ('Marketing');

INSERT INTO employees (name, department, salary)
VALUES
  ('John Smith', 'HR', 55000),
  ('Alice Johnson', 'IT', 65000),
  ('Bob Williams', 'Finance', 60000),
  ('Mary Brown', 'HR', 52000);

SELECT "-- SELECT statement";

SELECT * FROM employees;

SELECT '-- ORDER BY clause';
SELECT * FROM employees ORDER BY salary DESC;

SELECT'--  WHERE clause';
SELECT * FROM employees WHERE department = 'HR';
SELECT '-- SELECT DISTINCT';
SELECT DISTINCT department FROM employees;

SELECT '-- AND operator';
SELECT * FROM employees WHERE department = 'HR' AND salary > 50000;

SELECT '-- OR operator';
SELECT * FROM employees WHERE department = 'HR' OR department = 'IT';

SELECT '-- IN operator';
SELECT * FROM employees WHERE department IN ('HR', 'IT');

SELECT '-- BETWEEN operator';
SELECT * FROM employees WHERE salary BETWEEN 40000 AND 60000;

SELECT '-- LIKE operator ';

SELECT * FROM employees WHERE name LIKE '%John%';

-- LIMIT clause
SELECT * FROM employees LIMIT 5;

-- IS NULL operator
SELECT * FROM employees WHERE department IS NULL;
