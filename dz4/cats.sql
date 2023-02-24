DROP DATABASE dz4;
CREATE DATABASE dz4;
USE dz4;

CREATE TABLE `shops` (
	`id` INT,
    `shopname` VARCHAR (100),
    PRIMARY KEY (id)
);
CREATE TABLE `cats` (
	`name` VARCHAR (100),
    `id` INT,
    PRIMARY KEY (id),
    shops_id INT,
    CONSTRAINT fk_cats_shops_id FOREIGN KEY (shops_id)
        REFERENCES `shops` (id)
);

INSERT INTO `shops`
VALUES 
		(1, "Четыре лапы"),
        (2, "Мистер Зоо"),
        (3, "МурзиЛЛа"),
        (4, "Кошки и собаки");

INSERT INTO `cats`
VALUES 
		("Murzik",1,1),
        ("Nemo",2,2),
        ("Vicont",3,1),
        ("Zuza",4,3);
        
SELECT c.name, s.shopname
FROM cats c
JOIN shops s
ON c.shops_id = s.id;

SELECT s.shopname
FROM cats c
JOIN shops s
ON c.shops_id = s.id
WHERE c.name = "Murzik";

SELECT s.shopname
FROM cats c, shops s
WHERE c.shops_id = s.id AND c.name = "Murzik";

SELECT c.name, s.shopname
FROM cats c
JOIN shops s
ON c.shops_id = s.id
WHERE c.name != "Murzik" AND c.name != "Zuza";