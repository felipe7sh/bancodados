create database cantina_escolar;
use cantina_escolar;

create table estoque (
id int primary key,
produto varchar(100),
quantidade int,
preco decimal(10,2)
);

create table vendas (
id int primary key,
produto_id int,
quantidade int,
valor_total decimal (10,2),
foreign key (produto_id) references estoque(id)
);
insert into estoque values 
(1, "Sanduiche", 50, 12.00),
(2, "Suco", 40, 5.00),
(3, "Refrigerante", 30, 7.00);

-- 1. Inicie uma transação
start transaction; 

-- 2. Registre a venda de dois sanduiches
insert into vendas values (1, 1, 2, 24.00 );

-- 3 Crie um savepoint chamando ponto_sanduiche
savepoint ponto_sanduiche; 

-- 4. Registre a venda de um suco
insert into vendas values (2, 2, 1, 5.00 );

-- 5 Crie um savepoint chamando ponto_suco
savepoint ponto_suco;

-- 6. Registre a venda de um refrigerante
insert into vendas values (3, 3, 1, 7.00 );

-- 7. Execute o rollback to savepoint ponto_suco
rollback to savepoint ponto_suco; 

 -- 8 Consulte os registros da tabela vendas
select * from vendas;

-- 9 confirme a venda dos produtos restantes com commit
commit; 
