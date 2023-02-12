CREATE DATABASE dz1;

USE dz1;

CREATE TABLE phone
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    ProductName VARCHAR(30) NOT NULL,
    Manufacturer VARCHAR(30),
    ProductCount INT,
    Price INT
);

INSERT phone(ProductName, Manufacturer, ProductCount, Price)
VALUES
	("iPhone X", "Apple", 3, 76000),
	("iPhone 8", "Apple", 2, 51000),
    ("Galaxy S9", "Samsung", 2, 56000),
    ("Galaxy S8", "Samsung", 1, 41000),
    ("P20 Pro", "Huawei", 5, 36000);
    
SELECT ProductName, Manufacturer, Price -- вывести название, производителя и цену, название я подумал, что отдельно столбец названия продукта вывести надо
FROM phone
WHERE  ProductCount > 2;

SELECT * 
FROM phone 
WHERE Manufacturer = "Samsung";

SELECT * 
FROM phone 
WHERE ProductCount*Price > 100000 AND ProductCount*Price < 145000;

SELECT * 
FROM phone 
WHERE ProductName REGEXP 'iPhone+';

SELECT * 
FROM phone 
WHERE ProductName REGEXP 'Galaxy*';

SELECT * 
FROM phone 
WHERE ProductName REGEXP '[0-9]';

SELECT * 
FROM phone 
WHERE ProductName REGEXP '8';


