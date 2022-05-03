USE employees;

SELECT emp_no FROM employees.salaries
ORDER BY salary DESC
LIMIT 5;

SELECT DISTINCT e.last_name
FROM employees e
ORDER BY e.last_name DESC
LIMIT 10;


SELECT emp_no FROM employees.salaries
ORDER BY salary DESC
LIMIT 4 OFFSET 46;

SELECT * FROM employees.salaries s
ORDER BY s.salary DESC
LIMIT 5 OFFSET 50;
