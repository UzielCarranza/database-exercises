USE employees;

SELECT DISTINCT title
FROM employees.titles
GROUP BY title;


SELECT last_name
FROM employees e
WHERE e.last_name LIKE 'E%'
  AND e.last_name LIKE '%E'
group by last_name
ORDER BY last_name ASC;


SELECT last_name, first_name
FROM employees e
WHERE e.last_name LIKE 'E%'
  AND e.last_name LIKE '%E'
GROUP BY last_name, first_name;




SELECT last_name FROM employees
WHERE NOT last_name LIKE '%qu%'
  AND last_name LIKE '%q%'
GROUP BY last_name;


SELECT COUNT(last_name), last_name AS 'employees whose unusual name is shared with others'
FROM employees
WHERE NOT last_name LIKE '%qu%'
  AND last_name LIKE '%q%'
GROUP BY last_name;



SELECT COUNT(first_name) AS 'number of employees', gender AS 'with names Irena, Vidya, and Maya'
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender;
