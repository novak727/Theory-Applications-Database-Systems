# CREATE DATABASE Sql3;
# USE Sql3;

# SELECT * FROM department;
# id, name (dept)

# SELECT * FROM employee;
# id, name (employee), salary, departmentid


SELECT department.name as Department, employee.name as Employee, salary as Salary from employee
INNER JOIN department ON department.id = employee.departmentId
WHERE salary = (SELECT MAX(salary) FROM employee WHERE departmentId = department.id)
ORDER BY Salary DESC;
