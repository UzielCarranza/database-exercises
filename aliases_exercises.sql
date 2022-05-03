USE employees;


SELECT CONCAT(emp_no, ' - ', last_name, ', ', first_name) AS full_name, employees.employees.birth_date AS DOB
FROM employees
LIMIT 10
