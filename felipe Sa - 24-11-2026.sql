create database felipeSa;

create table clientes (
id_cliente int primary key auto_increment,
nome varchar(100),
email varchar(100),
telefone varchar(100)
);

create table pedido (
id_pedido int primary key auto_increment,
data_pedido date,
id_cliente int,
id_funcionario int
);

create table item_pedido (
id_item int primary key auto_increment,
id_pedido date,
id_produto int,
quantidade int
);

create table produto (
id_produto int primary key auto_increment,
descricao varchar(100),
preco decimal(10,2)
);

create table funcionarios (
id_funcionario int primary key auto_increment,
nome varchar(100),
cargo varchar(100)
);

insert into clientes value 
("João Silva","joao@email.com","(11) 9999-1111"),
("Maria Santos","maria@email.com","(11) 9888-2222");

insert into funcionarios value 
("Carlos Lima","Vendedor"),
("Ana Costa","Gerente");

insert into funcionarios value 
("Notebook",3500.00)
("Mouse",120.00