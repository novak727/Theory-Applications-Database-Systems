CREATE DATABASE Sql5;
USE Sql5;

SELECT * FROM cinema;

SELECT * FROM cinema
WHERE NOT description = "boring"
AND id mod 2 = 1
ORDER BY rating DESC;
