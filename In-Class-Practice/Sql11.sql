#CREATE DATABASE Sql11;
#USE Sql11;

SELECT tweet_id FROM tweets
WHERE LENGTH(content) > 15;