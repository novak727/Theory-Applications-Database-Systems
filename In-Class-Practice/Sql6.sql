CREATE DATABASE Sql6;
USE Sql6;

SELECT * FROM company;
# com_id, name, city
SELECT * FROM orders;
# order_id, order_date, com_id, sales_id, amount
SELECT * FROM salesperson;
# sales_id, name, salary, commission_rate, hire_date

SELECT name FROM salesperson
WHERE name NOT IN
(SELECT salesperson.name from salesperson
LEFT JOIN orders ON salesperson.sales_id = orders.sales_id
LEFT JOIN company ON orders.com_id = company.com_id
WHERE company.name = 'RED');
