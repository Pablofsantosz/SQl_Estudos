DELIMITER //
CREATE PROCEDURE calcular_fatorial(IN NUM INT, OUT resultado INT)
BEGIN
	DECLARE i INT;
    DECLARE soma INT;
    SET soma := 1;
    SET i := 1;
    IF NUM <= 0 then
		SET resultado := 0;
	ELSE
		while NUM >= i DO
			set soma := soma* i;
			set i :=  i+1;
		END WHILE;
    SET resultado := soma;
	END IF;
 END
 //
 DELIMITER ;
 
 call calcular_fatorial(2,@resultado);
 select @resultado; 