USE dz5;
DROP FUNCTION IF EXISTS two_next;
delimiter $$ 
CREATE FUNCTION two_next()
RETURNS VARCHAR(30)
DETERMINISTIC
BEGIN
	DECLARE i INT DEFAULT 2;
	DECLARE result VARCHAR(30) DEFAULT '';
	WHILE i < 11 DO
		SET result = CONCAT(result, ' ', i);
		SET i = i + 2;
	END WHILE;
	RETURN result;
END $$
delimiter ;

SELECT two_next();