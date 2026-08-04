create database Mercado;

use mercado;

create table usuarios (
id_usuario int primary key auto_increment,
nome varchar(30),
cidade varchar(30)
);

insert into usuarios(nome,cidade)
values
("Felipe", "ribeirao preto"),
("victor", "ribeirao preto"),
("ana", "ribeirao preto"),
("joao", "ribeirao preto"),
("giovana", "ribeirao preto"),
("lucas", "ribeirao preto");

use mercado;

select * from usuarios;

delete from usuarios
where id_usuario = 6

