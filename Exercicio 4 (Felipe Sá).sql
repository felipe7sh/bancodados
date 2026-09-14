create database loja_eletronicos;

use loja_eletronicos;

create table clientes (
id_cliente int primary key auto_increment,
nome varchar(20) not null,
cpf varchar(30) not null,
telefone varchar(30) not null,
email varchar(20) not null,
cidade varchar(40) not null
);


create table produtos (
id_produto int primary key auto_increment,
nome_produto varchar(20) not null,
categoria varchar(20) not null,
preco double not null,
estoque int
);

create table pedidos (
id_pedido int primary key auto_increment,
data_pedido date not null,
id_cliente int not null,
id_produto int not null,
FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
);

insert into clientes (nome, cpf, telefone, email, cidade) values
("felipe", "464-025-478-40", "(16) 99123-3232", "felipe@gmail.com", "Ribeirao Preto"),
("victor", "232-952-321-84", "(16) 99423-3643", "victor@gmail.com", "Ribeirao Preto"),
("ana", "457-474-345-56", "(16) 99865-9472", "ana@gmail.com", "Ribeirao Preto"),
("maria", "321-561-612-34", "(16) 99552-6432", "maria@gmail.com", "Ribeirao Preto"),
("rafael", "564-554-467-89", "(16) 99975-5643", "rafael@gmail.com", "Ribeirao Preto");

insert into produtos (nome_produto, categoria, preco, estoque) values
('Teclado', 'Informatica', 250, 15),
('Monitor', 'Eletronicos', 899, 8),
('Fone', 'Audio', 150, 40),
('Caixa de Som', 'Audio', 299.90, 18),
('Impressora', 'Informatica', 799, 6);

insert into pedidos (data_pedido, id_cliente, id_produto) values
("2026-09-24", 2, 3),
("2026-09-24", 5, 2),
("2026-09-25", 2, 2),
("2026-09-21", 1, 1),
("2026-09-21", 5, 4),
("2026-09-29", 1, 5),
("2026-09-27", 4, 3),
("2026-09-23", 3, 3);

select * from clientes;
select * from produtos;
select * from produtos where categoria = "Informatica";
