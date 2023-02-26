DROP TABLE IF EXISTS trains;
CREATE TABLE trains
(
train_id INT NOT NULL,
station VARCHAR(20),
station_time TIME # HH:MM:SS
);
INSERT trains VALUES
(110,'San Francisco','10:00:00'),
(110,'Redwood City', '10:54:00'),
(110,'Palo Alto', '11:02:00'),
(110,'San Jose', '12:35:00'),
(120,'San Francisco','11:00:00'),
(120,'Palo Alto', '12:49:00'),
(120,'San Jose', '13:30:00');

-- Проверка
SELECT * FROM trains;

SELECT 
	train_id, station, station_time, 
    timediff(LEAD(station_time) OVER(PARTITION BY train_id), station_time)
FROM trains;
