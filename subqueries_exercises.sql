USE employees;

# Find all the employees with the same hire date as employee 101010 using a subquery.
# 69 Rows

SELECT e.first_name, e.last_name
FROM employees e
WHERE hire_date IN (
    SELECT hire_date
    FROM employees
    WHERE employees.employees.emp_no = 101010
)