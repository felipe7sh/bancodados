create database loja_digital;

use loja_digital;

create table clientes (
id_cliente int primary key auto_increment,
nome varchar(30) not null,
telefone varchar(20),
email varchar(50),
cidade varchar(30)
);

insert into clientes(nome,telefone,email,cidade)
values
("Ana souza", "(16) 99123-9191", "AnaSouza@gmail.com", "Ribeirao Preto"),
("Giovana", "(16) 99899-1234", "Giovana@gmail.com", "Ribeirao Preto");

select * from clientes;
