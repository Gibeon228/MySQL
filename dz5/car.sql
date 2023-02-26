DROP DATABASE IF EXISTS dz5;
CREATE DATABASE dz5;
USE dz5;

CREATE TABLE cars
(
	id INT NOT NULL PRIMARY KEY,
    name VARCHAR(45),
    cost INT
);

INSERT cars
VALUES
	(1, "Audi", 52642),
    (2, "Mercedes", 57127 ),
    (3, "Skoda", 9000 ),
    (4, "Volvo", 29000),
	(5, "Bentley", 350000),
    (6, "Citroen ", 21000 ), 
    (7, "Hummer", 41400), 
    (8, "Volkswagen ", 21600);
 
CREATE OR REPLACE VIEW auto_car AS
SELECT *
FROM cars
WHERE cost < 25000;

SELECT * 
FROM auto_car;

ALTER VIEW auto_car AS 
SELECT *
FROM cars
WHERE cost < 30000;

SELECT * 
FROM auto_car;

CREATE OR REPLACE VIEW name_car AS
SELECT *
FROM cars
WHERE `name` = "Audi" OR `name` = "Skoda";

SELECT * 
FROM name_car;



