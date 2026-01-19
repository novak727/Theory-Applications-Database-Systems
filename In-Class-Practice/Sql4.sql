# CREATE DATABASE Sql4;
# USE Sql4;

# SELECT * FROM bonus;
# id & bonus

# SELECT * from employee;
# id, name, supervisor, salary

SELECT name, bonus FROM employee LEFT JOIN bonus ON bonus.id = employee.id WHERE bonus < 1000 OR bonus IS NULL;
 
