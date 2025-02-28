SELECT * FROM employees;
SELECT first_name, last_name, email FROM employees;
SELECT DISTINCT job_title FROM jobs;
SELECT COUNT(*) AS total_employees FROM employees;
SELECT * FROM employees WHERE hire_date > '2015-01-01';

SELECT * FROM employees WHERE salary > 5000;
SELECT * FROM employees WHERE job_title LIKE '%Manager%';
SELECT * FROM employees WHERE first_name LIKE 'A%n';
SELECT * FROM employees WHERE commissiocommission_pct = 0;
SELECT * FROM employees ORDER BY salary DESC LIMIT 5;

SELECT AVG(salary) AS average_salary FROM employees;
SELECT department_id, COUNT(*) AS total_employees 
FROM employees 
GROUP BY department_id;
SELECT first_name, LENGTH(first_name) AS name_length FROM employees;
SELECT first_name, last_name, YEAR(hire_date) AS hire_year FROM employees;
SELECT job_title, MIN(salary) AS min_salary, MAX(salary) AS max_salary 
FROM employees 
GROUP BY job_title;


SELECT e.first_name, e.last_name, d.department_name 
FROM employees e 
JOIN departments d ON e.department_id = d.department_id;
SELECT e.first_name, e.last_name, j.job_title, d.location 
FROM employees e 
JOIN jobs j ON e.job_id = j.job_id 
JOIN departments d ON e.department_id = d.department_id;
SELECT d.department_name, COUNT(e.employee_id) AS employee_count 
FROM departments d 
LEFT JOIN employees e ON d.department_id = e.department_id 
GROUP BY d.department_name;
SELECT e.first_name, e.last_name, e.job_id 
FROM employees e 
JOIN employees m ON e.manager_id = m.employee_id 
WHERE e.job_id = m.job_id;
SELECT DISTINCT e.first_name, e.last_name 
FROM employees e 
JOIN job_history jh ON e.employee_id = jh.employee_id;