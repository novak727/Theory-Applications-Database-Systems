 CREATE DATABASE Sql1;
 USE Sql1;

 SELECT * FROM address;
 SELECT * FROM person;


 SELECT lastName, firstName, city, state FROM person LEFT JOIN address ON person.personId = address.personId

 SELECT lastName, firstName, city, state FROM person RIGHT JOIN address ON person.personId = address.personId

SELECT lastName, firstName, city, state FROM person LEFT JOIN address ON person.personId = address.personId
UNION
SELECT lastName, firstName, city, state FROM person RIGHT JOIN address ON person.personId = address.personId
