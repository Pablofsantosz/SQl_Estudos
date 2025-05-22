CREATE DATABASE  IF NOT exists teste_procedure;
use teste_procedure;

-- Criei a tabela padrao 
create table locais (
Cidade VARCHAR(100),
Estado VARCHAR(3),
Regiao VARCHAR(20)
);
-- Dei select para ver se estava tudo certo !!
select * from locais;

-- Inserção dos dados padrao

INSERT   INTO locais VALUES("Rio de Janeiro","RJ","Sudeste ");
INSERT   INTO locais VALUES("Belo Horizonte","MG","Sudeste ");

INSERT   INTO locais VALUES("Salvador","BA","Nordeste ");
INSERT   INTO locais VALUES("Curitiba","PR","Sul ");
INSERT   INTO locais VALUES("Fortaleza","CE","Nordeste ");
INSERT   INTO locais VALUES("São Paulo","SP","Sudeste ");
INSERT   INTO locais VALUES("Niteroi","RJ","Sudeste ");
INSERT   INTO locais VALUES("Goiania","GO","Centro-Oeste ");


--Procedure!!
delimiter $$
create procedure insere_locais( c varchar(100), e VARCHAR(3), r VARCHAR(20))

BEGIN -- começo do codigo
	-- insert into locais
    
		INSERT INTO locais(Cidade,Estado,Regiao) -- Aqui no insert  vai ESPECIFICAR as colunas da table:Cidade ,Estado,Regiao
        VALUES ( c,e,r); -- valores
        Select * from locais; -- depois de inserir quero ver os dados da tabela locais:
        
END $$ -- fim do codigo

delimiter ;

call insere_locais("Santos", 'SP','Sudeste');


--RemoverLocais

DELIMITER $$
create procedure remover_locais(c VARCHAR(100))
BEGIN 
	delete from locais
    where Cidade = c;
    
    select * from locais;
	
END
$$ DELIMITER 