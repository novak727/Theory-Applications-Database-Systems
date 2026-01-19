#CREATE DATABASE Sql7;
#USE Sql7;

#SELECT * FROM article_view;

SELECT DISTINCT author_id as id FROM article_view
WHERE author_id = viewer_id
ORDER BY author_id;