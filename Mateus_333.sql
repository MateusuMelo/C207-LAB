#Questão 1
#Resposta : C)
CREATE DATABASE IF NOT EXISTS Avaliacao;
USE Avaliacao;
CREATE TABLE IF NOT EXISTS colaboradores(
id int not null primary key auto_increment,
CPF Varchar(45),
Nome Varchar(45),
Idade int,
Salario Int,
Cargo Varchar(45)
);

INSERT INTO colaboradores(CPF,Nome,Idade,Salario,Cargo) VALUES ('145.897.543-17','Bruno',45,4000,'Contador');
INSERT INTO colaboradores(CPF,Nome,Idade,Salario,Cargo) VALUES ('134.786.908-67','Paulo',37,4500,'Vendedor');
INSERT INTO colaboradores(CPF,Nome,Idade,Salario,Cargo) VALUES ('346.890.135-76','Pedro',50,7000,'Gerente');
INSERT INTO colaboradores(CPF,Nome,Idade,Salario,Cargo) VALUES ('456.762.907-31','Ana',27,1500,'Estagiária');
INSERT INTO colaboradores(CPF,Nome,Idade,Salario,Cargo) VALUES ('752.975.783-12','Júlia',42,4000,'Contador');
INSERT INTO colaboradores(CPF,Nome,Idade,Salario,Cargo) VALUES ('180.665.233-18','Bernardo',47,6500,'Gerente');

UPDATE colaboradores SET Idade = 44 WHERE Nome = 'Bruno';
DELETE FROM colaboradores WHERE Nome = 'Júlia';

SELECT * FROM colaboradores WHERE Nome like 'P%';
SELECT * FROM colaboradores WHERE Nome like 'B%o%'; #Aqui voce me quebrou :\
SELECT * FROM colaboradores LIMIT 2;
SELECT DISTINCT cargo FROM colaboradores;
