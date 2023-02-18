REATE DATABASE IF NOT EXISTS dz2;

USE dz2;
DROP TABLE IF EXISTS orders;
CREATE TABLE IF NOT EXISTS orders
(
	id INT PRIMARY KEY AUTO_INCREMENT,
	employee_id VARCHAR(4),
    amount DECIMAL(5,2),
    order_status VARCHAR(10)
);

INSERT INTO orders(employee_id, amount, order_status)
VALUES
	('e03', 15.00, 'OPEN'),
    ('e01', 25.50, 'OPEN'),
    ('e05', 100.70, 'CLOSED'),
    ('e02', 22.18, 'OPEN'),
    ('e04', 9.50, 'CANCELLED');

SELECT 
CASE
	WHEN order_status = "OPEN" THEN "Order is in open state"
    WHEN order_status = "CLOSED" THEN "Order is closed"
    WHEN order_status = "CANCELLED" THEN "Orderis cancelled"
    ELSE "Не определено"
    END AS full_order_status
FROM orders;

SELECT 
    IF (order_status = "OPEN", "Order is in open state", 
		IF (order_status = "CLOSED", "Order is closed", 
        IF (order_status = "CANCELLED", "Orderis cancelled", "Не определено"))) 
        AS "full_order_status" 
FROM orders;