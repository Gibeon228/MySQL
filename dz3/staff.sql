CREATE DATABASE IF NOT EXISTS d3;
USE dz3;
DROP TABLE IF EXISTS staff;
CREATE TABLE IF NOT EXISTS staff
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    firstname VARCHAR(35) NOT NULL,
    lastname VARCHAR(35) NOT NULL,
    post VARCHAR(20) NOT NULL,
    seniority INT NOT NULL,
    salary INT NOT NULL,
    age INT NOT NULL
);

INSERT INTO staff(firstname, lastname, post, seniority, salary, age)
VALUES
	("Вася", "Петров", "Начальник", 40, 100000, 60),
    ("Петр", "Власов", "Начальник", 8, 70000, 30),
    ("Катя", "Катина", "Инженер", 2, 70000, 25),
    ("Саша", "Сасин", "Инженер", 12, 50000, 35),
    ("Иван", "Иванов", "Рабочий", 40, 30000, 59),
    ("Петр", "Петров", "Рабочий", 20, 25000, 40),
    ("Сидр", "Сидоров", "Рабочий", 10, 20000, 35),
    ("Антон", "Антонов", "Рабочий", 8, 19000, 28),
    ("Юрий", "Юрков", "Рабочий", 5, 15000, 25),
    ("Максим", "Максимов", "Рабочий", 2, 11000, 22),
    ("Юрий", "Галкин", "Рабочий", 3, 12000, 24),
    ("Людмила", "Маркина", "Уборщик", 10, 10000, 49);

SELECT * FROM staff -- задание 1
ORDER BY salary;

SELECT * FROM staff -- задание 1
ORDER BY salary DESC;

SELECT salary -- задание 2 
FROM staff 
ORDER BY salary DESC
LIMIT 5;

SELECT * -- задание 2 
FROM staff 
WHERE post = "Рабочий"
ORDER BY salary DESC
LIMIT 2;

SELECT post, SUM(salary) -- задание 3  
FROM staff
GROUP BY post;

SELECT COUNT(post) -- Задание 4
FROM staff
WHERE (post = "Рабочий") AND (age >= 24) AND (age <= 49);

SELECT COUNT(DISTINCT post)  -- задание 5, если неуникальные
FROM staff;

SELECT post FROM staff -- задание 6. если неуникальные
WHERE age < 30;

SELECT DISTINCT post FROM staff -- задание 6. если уникальные
WHERE age < 30;
