USE employees;


SELECT d.dept_name,  CONCAT(m.first_name, ' ', m.last_name) AS department_manager
FROM employees as m
         JOIN dept_manager as de
              ON de.emp_no = m.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
WHERE to_date LIKE '9%'
ORDER BY dept_name;



SELECT dept_name AS Department_Name, CONCAT(first_name, ' ', last_name) AS Department_Manager
FROM departments d
         JOIN dept_manager AS dm
              on d.dept_no = dm.dept_no
         JOIN employees AS e
              on e.emp_no = dm.emp_no
WHERE to_date LIKE '9%'
ORDER BY dept_name;

