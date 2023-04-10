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

#Create users
create user hermione@localhost identified by 'usuario';
create user dumbloedore@localhost identified by 'usuario2';
create user ministro@localhost identified by 'usuario3';
create user hagrid@localhost identified by 'usuario4';
create user mcgonagall@localhost identified by 'usuario5';
create user snape@localhost identified by 'usuario6';
create user dolores@localhost identified by 'usuario7';
create user harry@localhost identified by 'usuario8';

#Granting privileges 

# 1 - garantir o acesso de um usuario de nome hermione apenas para uso em qualquer banco de dados
grant usage on *.* to hermione;

#2 - garantindo todos os privilegios no bd hogwarts para o Dumbloedore
grant all on hogwarts.* to dumbloedore;

#3 - Retirando o privilegio do usuario ministro de criar tabelas no bd hogwarts
revoke create table from ministro;

#4 - Permitir ao usuario hagrid de adicionar e alterar os dados da tabela animal e que harry possa dar privilegios a outros usuarios
grant insert, update on hogwarts.animal to hagrid;
grant grant option on hogwarts.* to harry;

#5 - De aos usuarios mcgonagall e sname o poder de alterar o nome e o sobrenome dos bruxos e buscar quaisquer informacoes
grant update(nomeBruxo, sobrenome) on hogwarts.bruxo to snape, mcgonagall;

#6 - Retire todos os privilegios da dolores, incluseve o poder de dar privilegios a outros usuarios
revoke all, grant option from dolores;

#7 - Retirar privilegios do usuario harry de adicionar e remover priviliegiso
revoke insert, delete on hogwarts.animal from hagrid;

#8 - Mostrar os privilegios do harry
show grants for harry;