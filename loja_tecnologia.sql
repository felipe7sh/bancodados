create database loja_tecnologia;
use loja_tecnologia;
 
create table produtos (
    id int primary key,
    produto varchar(100),
    preco decimal(10,2)
);
 
create table compras (
    id int primary key,
    produto_id int,
    quantidade int,
    valor_total varchar(30),
    foreign key (produto_id) references produtos(id)
);
 
insert into produtos values 
(1, 'Teclado Gamer', 180.00),
(2, 'Mouse Gamer', 90.00),
(3, 'Headset', 250.00);
 
-- 1. Inicie uma transação
start transaction;
 
-- 2. Registre a compra de um teclado gamer
insert into compras values
(1, 1, 1, 180);
 
-- 3. Crie um savepoint chamado compra_teclado
savepoint compra_teclado;
 
-- 4. Registre a compra de um mouse gamer
insert into compras values
(2, 2, 1, 90);

-- 5. Crie um savepoint chamado compra_mouse
savepoint compra_mouse;

-- 6 Registre a compra de um headset
insert into compras values
(3, 3, 1, 250);

-- 7. Execute rollback to savepoint compra_mouse
rollback to savepoint compra_mouse;
 
-- 8. Consulte as tabela compras
select * from compras;

-- 9. Confirme as operaões restantes utilizando commit
commit;