create database if not exists hogwarts;
use hogwarts;

create table if not exists escola(
idescola INT NOT NULL,
nomeEscola VARCHAR(45),
localizacao VARCHAr(45),
anoFundacao DATE,
PRIMARY KEY	(idescola)
);

create table if not exists animal(
idanimal INT NOT NULL,
nomeAnimal VARCHAR(45),
especie VARCHAr(45),
PRIMARY KEY	(idanimal)
);

create table if not exists bruxo(
idmatricula INT NOT NULL,
sobrenome VARCHAR(45),
nomeBruxo VARCHAR(45),
casa VARCHAr(45),
PRIMARY KEY	(idmatricula)
);

#alter

ALTER table bruxo add pais VARCHAR(45) not null;
ALTER table bruxo add idade INT not null;

#alterando coluna;
ALTER table bruxo change pais parents VARCHAR(45) not null;

select * from bruxo;

#Drop

ALTER table escola drop column localizacao;
select * from escola;