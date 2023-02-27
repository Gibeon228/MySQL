USE dz5;
DROP FUNCTION IF EXISTS get_time ;
delimiter $$ 
CREATE FUNCTION get_time(sec INT)
RETURNS VARCHAR(30)
DETERMINISTIC
BEGIN
	DECLARE days INT DEFAULT 0;
    DECLARE hours INT DEFAULT 0;
    DECLARE min INT DEFAULT 0;
	DECLARE result VARCHAR(30) DEFAULT '0 days 0 hours 0 minutes 0 sec';
	
	IF sec < 0 THEN 
		RETURN 'Incorrect data entered';
	ELSEIF sec = 0 THEN 
		RETURN result;
	ELSE
		WHILE sec > 59 DO
			SET sec = sec - 60;
            SET min = min + 1;
		END WHILE;
		WHILE min > 59 DO
			SET min = min - 60;
            SET hours = hours + 1;
		END WHILE;
		WHILE hours > 23 DO
			SET hours = hours - 24;
            SET days = days + 1;
		END WHILE;
        SET result = CONCAT(days, ' days ', hours, ' horse ', min, ' min ', sec, ' sec');
        RETURN result;
	END IF;
END $$
delimiter ;

SELECT get_time(123456); 