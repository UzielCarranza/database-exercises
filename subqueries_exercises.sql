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

SELECT dept_name AS departmentds
FROM employees e,
     departments
WHERE e.gender = 'F'
  AND e.emp_no IN (
    SELECT DISTINCT dept_manager.emp_no
    FROM dept_manager
    WHERE to_date > curdate()
)
GROUP BY dept_name;

SELECT *
FROM employees,
     departments
WHERE first_name = 'Isamu'
  AND last_name = 'Legleitner';


#     Find the first and last name of the employee with the highest salary.

SELECT e.first_name, e.last_name AS Name, salary as salary
FROM employees e,
     salaries
where salary IN (
    SELECT salary
    FROM salaries
    ORDER BY salaries.salary ASC
)
LIMIT 2;

