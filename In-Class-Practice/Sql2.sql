# CREATE DATABASE Sql2
# USE Sql2

# SELECT * FROM customers;
# id=orders.CustomerId & name

# SELECT * FROM orders;
# id and CustomerId=customers.id

SELECT name as Customers FROM customers WHERE id NOT IN (SELECT customerId FROM orders);