Create DATABASE if not exists Aula1;
Use Aula1;

Create TABLE if not exists Usuario(
Nome varchar(50),
Idade int,
Cidade varchar(50),
Celular varchar(50),
TotalGasto float
);

insert into Usuario(Nome,Idade,Cidade,Celular,TotalGasto) VALUES('Mateus',21,'Santa Rita de Caldas','35998131973',1550.50);
insert into Usuario(Nome,Idade,Cidade,Celular,TotalGasto) VALUES('Jeferson Caminhões', 47, 'Capixaba','2499692469',300453.12);
insert into Usuario(Nome,Idade,Cidade,Celular,TotalGasto) VALUES('Vinicin piroquinha', 27, 'Rio De Janeiro', 123456789, 25346.80);


UPDATE Usuario set Nome = 'Jeefinho' WHERE Nome = 'Mateus';
SELECT * FROM Usuario;