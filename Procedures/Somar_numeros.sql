DELIMITER //

CREATE PROCEDURE somar_numeros(parametro1 INT, parametro2 INT, out resultado INT)
BEGIN
    DECLARE total INT;
    SET total = parametro1 + parametro2;
    set resultado = total;
    
END;
//

DELIMITER ;

 call somar_numeros(5,3040,@resultado);
 select @resultado ;