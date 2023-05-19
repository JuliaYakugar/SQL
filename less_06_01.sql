USE less_06;

DELIMITER //
CREATE PROCEDURE sec (s INT)
	BEGIN
		SELECT
			DATE_FORMAT(date('1970-12-31 23:59:59') 
            + interval s second,'%j days %Hh:%im:%ss') as result;
	END //
DELIMITER ;

CALL sec(101603);