USE less_06;

DELIMITER //
CREATE PROCEDURE input_chetn (num INT)
	BEGIN
		DECLARE i INT DEFAULT 0;
        CREATE TABLE chet_table (ii INT);
		WHILE i < num DO
			SET i = i + 2;
            INSERT INTO chet_table (ii) VALUES (i);
		END while;
		SELECT * FROM chet_table;
	END //
DELIMITER ;

CALL input_chetn(10);