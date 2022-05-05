USE employees;


SELECT d.dept_name, CONCAT(m.first_name, ' ', m.last_name) AS department_manager
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



USE employees;


SELECT d.dept_name, CONCAT(m.first_name, ' ', m.last_name) AS department_manager_Women
FROM employees as m
         JOIN dept_manager as de
              ON de.emp_no = m.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
WHERE gender = 'F'
  AND to_date LIKE '9%'
ORDER BY dept_name;



SELECT title, COUNT(title) AS total
FROM titles t
         JOIN dept_emp de
              ON t.emp_no = de.emp_no
WHERE dept_no = 'd009'
  AND t.to_date LIKE '9%'
  AND de.to_date LIKE '9%'
GROUP BY title;


SELECT dept_name                          AS department,
       CONCAT(first_name, ' ', last_name) AS Full_Name,
       salary                             AS salary
FROM employees e
         JOIN dept_manager as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
         JOIN salaries s on e.emp_no = s.emp_no
WHERE de.to_date LIKE '9%'
  AND s.to_date LIKE '9%'
ORDER BY dept_name;



SELECT CONCAT(e.first_name, ', ', e.last_name)   AS Employee_Name,
       dept_name                                 AS Department,
       dm.emp_no                                 AS Manager_Employee_Number,
       CONCAT(e2.first_name, ', ', e2.last_name) AS Manager_Full_Name
FROM employees e
         JOIN dept_emp de on e.emp_no = de.emp_no
         JOIN departments d on d.dept_no = de.dept_no
         JOIN dept_manager dm on de.dept_no = dm.dept_no
         JOIN employees e2 on e2.emp_no = dm.emp_no
where dm.to_date > curdate()
AND de.to_date > curdate()
ORDER BY dept_name, e.emp_no;

