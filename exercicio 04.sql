create database cafeteria_db;

use cafeteria_db;

create table pedidos (
id_pedido int primary key,
cliente varchar(80),
produto varchar(80),
categoria varchar(40),
preco_unitario decimal(10,2),
quantidade int
);

insert into pedidos (id_pedido, cliente, produto, categoria, preco_unitario, quantidade)
values
(1, 'Ana Souza', 'Cappuccino', 'Bebidas', 12.00, 2),
(2, 'Bruno Lima', 'Sanduiche Natural', 'Lanches', 18.50, 3),
(3, 'Carla Mendes', 'Suco de Laranja', 'Bebidas', 9.00, 4),
(4, 'Daniel Rocha', 'Bolo de Chocolate', 'Doces', 14.00, 2),
(5, 'Eduardo Alves', 'Café Expresso', 'Bebidas', 7.00, 5),
(6, 'Fernanda Costa', 'Croissant', 'Lanches', 11.50, 2),
(7, 'Gabriel Santos', 'Combo Café + Bolo', 'Combos', 22.00, 3),
(8, 'Helena Martins', 'Chá Gelado', 'Bebidas', 8.50, 1),
(9, 'Igor Oliveira', 'Sanduiche Natural', 'Lanches', 18.50, 4),
(10, 'Juliana Ferreira', 'Torta de Limão', 'Doces', 16.00, 3);

select cliente, produto, categoria, preco_unitario, quantidade, (preco_unitario * quantidade) as total_pedidos from pedidos;

select  cliente, produto, categoria, preco_unitario, quantidade, (preco_unitario * quantidade) as total_pedidos from pedidos where (preco_unitario * quantidade) > 50.00;

select produto, categoria, preco_unitario, quantidade from pedidos where categoria = 'Bebidas' and quantidade > 2;

select cliente, produto, (preco_unitario * quantidade) as total_pedido from pedidos where  (preco_unitario * quantidade) > 60;
