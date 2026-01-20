CREATE DATABASE Sql12;
USE Sql12;

SELECT employee_id FROM
(SELECT employees.employee_id FROM employees
LEFT JOIN salaries ON salaries.employee_id = employees.employee_id
WHERE salaries.employee_id IS NULL
UNION
SELECT salaries.employee_id FROM salaries
LEFT JOIN employees ON salaries.employee_id = employees.employee_id
WHERE employees.employee_id IS NULL)
AS unmatched_ones
ORDER BY employee_id ASC;
