USE employees;

# Find all the employees with the same hire date as employee 101010 using a subquery.
# 69 Rows

SELECT e.first_name, e.last_name
FROM employees e
WHERE hire_date IN (
    SELECT hire_date
    FROM employees
    WHERE employees.employees.emp_no = 101010
);


# Find all the titles held by all employees with the first name Aamod.
# 314 total titles, 6 unique titles


SELECT t.title AS Title, COUNT(t.title) AS titles_hold_by_employees_Aamod
FROM titles t
WHERE emp_no IN (
    SELECT e.emp_no
    FROM employees e
    WHERE first_name LIKE 'Aamod'
)
GROUP BY title;


# Find all the current department managers that are female.


SELECT CONCAT(e.first_name, ', ', e.last_name) AS Female_Manager
FROM employees e
WHERE e.gender = 'F'
  AND e.emp_no IN (
    SELECT dept_manager.emp_no
    FROM dept_manager
    WHERE to_date > curdate()
);


# Find all the department names that currently have female managers.

SELECT CONCAT(e.first_name, ', ', e.last_name) AS Female_Manager
FROM employees e
WHERE e.gender = 'F'
  AND e.emp_no IN (
    SELECT dept_manager.emp_no
    FROM dept_manager
    WHERE to_date > curdate()
);



SELECT d.dept_name AS department
FROM departments d,
     dept_manager e
WHERE e.to_date > curdate()
  AND e.emp_no IN (
    SELECT em.emp_no
    FROM employees em
    WHERE em.gender = 'F'
)
GROUP BY dept_name;





