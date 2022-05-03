USE employees;



SELECT first_name, last_name FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name, last_name Like 'Pelz%'  DESC;


SELECT first_name, last_name FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name ASC , last_name ASC ;



SELECT first_name, last_name FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY Last_name ASC , first_name DESC ;




SELECT first_name FROM employees
WHERE last_name LIKE 'E%'
ORDER BY emp_no ASC;




SELECT last_name FROM employees
WHERE last_name LIKE '%E'
   OR last_name LIKE 'E%'
ORDER BY emp_no ASC;


SELECT last_name FROM employees
WHERE last_name LIKE '%E'
  AND last_name LIKE 'E%'
ORDER BY emp_no ASC;
