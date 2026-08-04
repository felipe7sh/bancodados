create database clinica_vet;

use clinica_vet;

create table Veterinário (
id_vet int primary key auto_increment,
nome varchar(20),
especialidade varchar(25)
);

create table Animal  (
id_animal int primary key auto_increment,
nome varchar(20),
especie varchar(25)
);

insert into Veterinário(nome,especialidade)
values
("Roberto", "Grande porte"),
("Julio", "Grande porte"),
("Ana", "Cirurgia"),
("Giovana", "Reabilitaçao"),
("Sabrina","Pequeno porte");

insert into Animal(nome,especie)
values
("Simba", "Gato"),
("Thor", "Cachorro"),
("Nina", "Cachorro"),
("Luna", "Gato"),
("Sansão","Coelho"),
("Bob", "Cachorro"),
("Maia", "Gato"),
("Lola", "Gato"),
("Zeus", "Cachorro"),
("Chico", "Passaro");

select * from Veterinário;
select * from Animal;