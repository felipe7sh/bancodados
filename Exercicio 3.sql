create database loja;

use loja;
create table produtos (
id_produto int primary key auto_increment,
nome varchar(20) not null,
categoria varchar(20) not null,
preco double not null,
quantidade_estoque int
);

insert into produtos (nome, categoria, preco, quantidade_estoque) values
('Notebook', 'Eletronicos', 3500, 10),
('Smartphone', 'Eletronicos', 1999.90, 25),
('Teclado', 'Perifericos', 250, 15),
('Mouse', 'Perifericos', 120.50, 30),
('Monitor', 'Eletronicos', 899, 8),
('Cadeira', 'Moveis', 1200, 5),
('Mesa', 'Moveis', 450, 12),
('Fone', 'Audio', 150, 40),
('Caixa de Som', 'Audio', 299.90, 18),
('Impressora', 'Escritorio', 799, 6);

select * from produtos where quantidade_estoque < 10;
select * from produtos where preco >= 1000;