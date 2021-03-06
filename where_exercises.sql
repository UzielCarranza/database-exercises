USE employees;

SELECT first_name FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');


SELECT first_name FROM employees
WHERE last_name LIKE 'E%';


SELECT last_name FROM employees
WHERE last_name LIKE '%q%';


# SECOND PART

SELECT first_name FROM employees
WHERE first_name = 'IRENA' OR first_name = 'Vidya' OR first_name = 'Maya';



SELECT first_name FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
AND gender = 'M';


SELECT last_name FROM employees
WHERE last_name LIKE '%E'
OR last_name LIKE 'E%';


SELECT last_name FROM employees
WHERE last_name LIKE '%E'
   AND last_name LIKE 'E%';


SELECT last_name FROM employees
WHERE NOT last_name LIKE '%qu%'
AND last_name LIKE '%q%'