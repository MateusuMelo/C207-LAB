# Questao - 1
set @pesoTotal = 0;
set @precoTotal = 0;

DELIMITER $$

drop PROCEDURE if exists insere_e_calcula_peso $$

create procedure insere_e_calcula_peso(in nomeProduto varchar(50),in precoKG float, in peso float, in idCliente int)

begin 
insert into Compra(nomeProduto, precoKG,peso,precoTotal,idCliente)
values (nomeProduto, precoKG,peso,precoTotal,idCliente);

if peso > 5.0

THEN SET @precoTotal = precoKG* peso;
	 SET @pesoTotal = @pesoTotal +1;
END IF;

end $$
DELIMITER ; 

call insere_e_calcula_peso('PicanhaFazoL', 20, 1.5, 3);

# Questao - 2

DELIMITER $$
Drop function if exists preco_total_com_desconto $$
create function preco_total_com_desconto(preco float, peso float)
returns varchar(20)
deterministic

BEGIN
DECLARE precoTotal float;
SET precoTotal  = (preco*peso)*0.10;

RETURN(precoTotal);

END$$
DELIMITER ;

# Questao - 3
drop view Cliente_Compra;
CREATE VIEW Cliente_Compra AS (SELECT nomeProduto, precoKG, peso, precoTotal FROM Compra, Cliente WHERE Cliente.id = Compra.idCliente and precoTotal > 500.0 and cidade = 'São Paulo' );
select * from Cliente_Compra;