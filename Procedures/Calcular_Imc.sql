DELIMITER //
CREATE PROCEDURE calcular_imc(IN peso DOUBLE , IN altura DOUBLE , OUT resultado VARCHAR(20))
BEGIN
	DECLARE calculo DOUBLE;
    SET calculo := peso/(altura*altura);
    
    IF calculo <= 19.0 THEN
		SET resultado = 'Subpeso';
        
	ELSEIF calculo <= 25.0 THEN
		SET resultado = 'Peso Normal';
        
	ELSEIF calculo <= 29.9 THEN
		SET resultado ='SobrePeso';
        
	ELSE 
		SET resultado = 'Obseidade';
	END IF;
END
//
DELIMITER ;

call calcular_imc(100.0,1.75,@resultado);
select @resultado;

