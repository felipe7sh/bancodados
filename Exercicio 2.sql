create database empresa;
use empresa;
create table clientes (
id_cliente int primary key auto_increment,
nome varchar(20) not null,
email varchar(20) not null,
telefone varchar(20) not null
);

create table pedidos (
id_pedido int primary key auto_increment,
data_pedido date not null,
valor_total double not null,
id_cliente int not null,
FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

insert into clientes (nome, email, telefone) values
("felipe","felipe@gmail.com","(16) 99999-1010"),
("ana","ana@gmail.com","(16) 99999-1020"),
("jose","jose@gmail.com","(16) 99999-1030"),
("victor","victor@gmail.com","(16) 99999-1040"),
("maria","maria@gmail.com","(16) 99999-1050"),
("vitoria","vitoria@gmail.com","(16) 99999-1060"),
("rafael","rafael@gmail.com","(16) 99999-1070"),
("marlon","marlon@gmail.com","(16) 99999-1080"),
("daniel","daniel@gmail.com","(16) 99999-1090"),
("giovana","giovana@gmail.com","(16) 99999-1210");

insert into pedidos (data_pedido, valor_total, id_cliente) values
("2026-09-01", "302", 1),
("2026-09-01", "312", 2),
("2026-09-01", "5433", 3),
("2026-09-01", "2454", 4),
("2026-09-01", "435", 5),
("2026-09-01", "690", 6),
("2026-09-01", "6476",7 ),
("2026-09-01", "1234", 8),
("2026-09-01", "9878", 9),
("2026-09-01", "3702", 10),
("2026-09-01", "753", 1),
("2026-09-01", "2360", 2),
("2026-09-01", "9543", 3),
("2026-09-01", "3578", 4),
("2026-09-01", "4732", 5);

SELECT 
    clientes.nome AS nome_cliente,
    pedidos.id_pedido AS numero_pedido,
    pedidos.data_pedido AS data,
    pedidos.valor_total AS valor
FROM pedidos INNER JOIN clientes ON pedidos.id_cliente = clientes.id_cliente;