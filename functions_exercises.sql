USE employees;


#
# SELECT first_name, last_name FROM employees
# WHERE first_name IN ('Irena', 'Vidya', 'Maya')
# ORDER BY first_name, last_name Like 'Pelz%'  DESC;
#
#
# SELECT first_name, last_name FROM employees
# WHERE first_name IN ('Irena', 'Vidya', 'Maya')
# ORDER BY first_name ASC , last_name ASC ;
#
#
#
# SELECT first_name, last_name FROM employees
# WHERE first_name IN ('Irena', 'Vidya', 'Maya')
# ORDER BY Last_name ASC , first_name DESC ;
#
#
#
#
# SELECT first_name FROM employees
# WHERE last_name LIKE 'E%'
# ORDER BY emp_no ASC;
#
#
#
#
# SELECT last_name FROM employees
# WHERE last_name LIKE '%E'
#    OR last_name LIKE 'E%'
# ORDER BY emp_no ASC;
#
#
# SELECT last_name FROM employees
# WHERE last_name LIKE '%E'
#   AND last_name LIKE 'E%'
# ORDER BY emp_no ASC;


SELECT CONCAT(first_name, ' ', last_name) AS 'Full Name'
FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%E'
ORDER BY emp_no;



SELECT *
FROM employees e
WHERE DAY(e.birth_date) = 25
  AND MONTH(e.birth_date) = 12;



SELECT *
FROM employees e
WHERE DAY(e.birth_date) = 25
  AND MONTH(e.birth_date) = 12
  AND YEAR(e.hire_date) > 1989
  AND YEAR(e.hire_date) < 2000;

SELECT *
FROM employees e
WHERE DAY(e.birth_date) = 25
  AND MONTH(e.birth_date) = 12
  AND YEAR(e.hire_date) > 1989
  AND YEAR(e.hire_date) < 2000
ORDER BY e.birth_date ASC, e.hire_date DESC;



SELECT e.emp_no, DATEDIFF(NOW(), e.hire_date) AS 'Days worked'
FROM employees e
WHERE DAY(e.birth_date) = 25
  AND MONTH(e.birth_date) = 12
  AND YEAR(e.hire_date) > 1989
  AND YEAR(e.hire_date) < 2000
ORDER BY e.birth_date ASC, e.hire_date DESC;






