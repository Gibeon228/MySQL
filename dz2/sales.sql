CREATE DATABASE IF NOT EXISTS dz2;

USE dz2;
DROP TABLE IF EXISTS sales;
CREATE TABLE IF NOT EXISTS sales
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    order_date DATE NOT NULL,
    count_product INT NOT NULL
);

INSERT INTO sales(order_date, count_product)
VALUES
	(20220101, 156),
    (20220102, 180),
    (20220103, 21),
    (20220104, 124),
    (20220105, 341);

SELECT id as id_заказа,
CASE
	WHEN count_product > 300 THEN "Большой заказ"
    WHEN count_product  < 300 AND count_product > 100  THEN "Средний заказ"
    WHEN count_product < 100 THEN "Маленький заказ"
    ELSE "Не определено"
    END AS Тип_заказа
FROM sales;

SELECT 
	id AS "id_заказа", 
    IF (count_product  < 100, "Маленький заказ", 
		IF (count_product > 300, "Большой заказ", 
        IF (count_product  < 300 AND count_product > 100, "Средний заказ", "Не определено"))) 
        AS "Тип заказа" 
FROM sales;