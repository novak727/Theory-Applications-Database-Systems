#CREATE DATABASE Sql8;
#USE Sql8;

SELECT prices.product_id, ROUND(SUM(units*price)/SUM(units), 2) AS avg_price from prices
LEFT JOIN UnitsSold ON Prices.product_id = UnitsSold.product_id
AND UnitsSold.purchase_date BETWEEN start_date AND end_date
GROUP BY product_id
;