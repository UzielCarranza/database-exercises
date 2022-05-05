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
