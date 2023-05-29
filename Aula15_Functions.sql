CREATE DATABASE IF NOT exists Loja;
use Loja;

SET GLOBAL log_bin_trust_function_creators = 1; #Confia na função pae

CREATE TABLE compra(
id int not null auto_increment primary key,
preco float,
pagamento float
);

INSERT INTO compra values(id, 9.5, 10.25);
INSERT INTO compra values(id, 18.99, 25);
INSERT INTO compra values(id, 8.85, 8.89);
INSERT INTO compra values(id, 19.49, 20);

DELIMITER $$
Drop function if exists Troco $$
create function Troco(ppreco Double, ppagamento DOUBLE)
returns varchar(20)
deterministic

BEGIN
DECLARE SITUACAO VARCHAR(20);
DECLARE CHANGES DOUBLE;

SET CHANGES  = (ppagamento - ppreco);

IF CHANGES <= 0.05 THEN
	SET SITUACAO = 'Nao tem troco';

ELSEIF CHANGES <= 1 THEN
	SET SITUACAO = 'balinhas';

ELSE 
	SET SITUACAO = 'Dinheiro';
    
END IF;
RETURN(SITUACAO);

END$$
DELIMITER ;

SELECT id, preco, pagamento, TROCO(preco, pagamento) as 'TROCO' from compra;
