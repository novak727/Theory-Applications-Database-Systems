CREATE DATABASE Sql10;
USE Sql10;

SELECT user_id, CONCAT(UPPER(LEFT(name, 1)), LOWER(RIGHT(name, LENGTH(name) - 1))) AS name FROM users;
