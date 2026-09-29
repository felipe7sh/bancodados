create database loja;
use loja;

create table produtos (
	id int primary key auto_increment,
    nome varchar(100),
    categoria varchar(50),
    preco decimal(10,2),
    estoque int,
    data_cadastro date
);

insert into produtos (nome, categoria, preco, estoque, data_cadastro) values
("Notebook Dell", "Informatica", 3500 , 0, '2026-01-15'),
("Mouse Logitech", "Informatica", 120 , 25, '2026-02-10'),
("Teclado Mecanico", "Informatica", 350 , 12, '2026-02-18'),
("Monitor Lg 24", "Informatica", 950 , 6, '2026-03-05'),
("Cadeira Gamer", "Móveis", 1200 , 4, '2026-03-20'),
("Mesa Escritorio", "Móveis", 850 , 10, '2026-04-02'),
("Smartphone Samsung", "Celular", 2300 , 15, '2026-04-15'),
("Carregador USB-C", "Celular", 90 , 30, '2026-05-01'),
("Fone Bluetooth", "Audio", 280 , 18, '2026-05-12'),
("Caixa de Som", "Audio", 450 , 7, '2026-05-10');

-- 1
select nome, preco, (preco * 1.10) as preco_ajustado from produtos;

-- 2
select nome, categoria, estoque from produtos where estoque < 10;
select nome, categoria, estoque from produtos where estoque >= 15;

-- 3
select nome, preco, estoque from produtos where preco > 500 and estoque < 10;
select nome, preco, categoria from produtos where categoria = "Informatica" or preco > 2000;

-- 4
select nome, categoria from produtos where categoria = "Informatica" or categoria = "Audio"