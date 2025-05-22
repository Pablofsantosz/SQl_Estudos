DELIMITER //


 
 
 CREATE PROCEDURE verificar_impar_par(IN numero INT, OUT resultado VARCHAR(5))
 BEGIN
	-- MOD (FUNÇÃO QUE RETORNA O RESTO DA DIVISAO TIPO (%) EM SQL) , MOD(dividendo, divisor) == dividendo % divisor
	IF MOD(numero,2) = 0 THEN
		SET resultado := 'par';
    ELSE
		SET resultado :='impar';
	END IF;
 
 END
 //

DELIMITER ;

call verificar_impar_par(15,@resultado);
SELECT @resultado;