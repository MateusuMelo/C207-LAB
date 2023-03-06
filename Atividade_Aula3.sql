CREATE DATABASE IF NOT EXISTS Atividade_aula3;
USE Atividade_aula3;

CREATE TABLE IF NOT EXISTS Usuario(
id int not null primary key auto_increment,
Nome VARCHAR(45),
Email VARCHAR(45),
Senha VARCHAR(45)
);

INSERT INTO Usuario(Nome,Email,Senha) VALUES ('Alexandre','alexandre@email.com','12345');
INSERT INTO Usuario(Nome,Email,Senha) VALUES ('Natanael','natanael12@email.com','ABCDE');
INSERT INTO Usuario(Nome,Email,Senha) VALUES ('Júlia','julia 09@email.com','98765');
INSERT INTO Usuario(Nome,Email,Senha) VALUES ('Fernanda','fernanda@email.com','EFGHI');


UPDATE Usuario SET Senha  = '54321' WHERE Nome = 'Alexandre'; 

DELETE FROM Usuario WHERE Nome = 'Fernanda';

SELECT * FROM Usuario;

SELECT * FROM Usuario WHERE Nome LIKE 'N%';
