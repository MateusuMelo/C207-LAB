drop database if exists storedprocedures;
create database storedprocedures;
use storedprocedures;

create table Aluno(
id int not null auto_increment primary key,
nome varchar(50),
idade int,
email varchar(100),
matricula varchar(50),
estado varchar(50)
);

set @idadeTotal = 0;

DELIMITER $$

drop PROCEDURE if exists cadaluno $$

create procedure cadaluno(in nome varchar(50), in idade int, in email varchar(100), in matricula varchar(50), in estado varchar(50))

begin 
insert into Aluno(nome, idade,email,matricula,estado)
values (nome,idade,email,matricula,estado);

if idade >= 17 and estado = 'SP' 
THEN SET @idadeTotal = @idadeTotal + idade;
END IF;

end $$
DELIMITER ; 


call cadaluno('bart',17,'bart@gmail.com',1234,'SP');
call cadaluno('Millhouse',18,'Millhouse@gmail.com',1696,'MG');
call cadaluno('Moe',40,'MoesBar@gmail.com',0001,'RJ');

select * from aluno;
select @idadeTotal;


drop view if exists cadaluno;
create view cadaluno as(select nome, idade, email from Aluno);
select * from cadaluno;