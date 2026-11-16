create database delivery_app;
use delivery_app;
 
create table pedidos (
    id int primary key,
    cliente varchar(100),
    valor_total decimal(10,2),
    status varchar(30)
);
 
create table pagamentos (
    id int primary key,
    pedido_id int,
    valor decimal(10,2),
    status varchar(30),
    foreign key (pedido_id) references pedidos(id)
);
 
insert into pedidos values 
(1, 'Lucas', 73.00, 'Pendente'),
(2, 'Mariana', 55.00, 'Pendente');
 
-- 1. Inicie uma transação
start transaction;
 
-- 2. Atualize o pedido de lucas para o status Em processamento
update pedidos 
set status = 'Em processamento' 
where id = 1;
 
-- 3. Crie um savepoint chamado pedido_iniciado
savepoint pedido_iniciado;
 
-- 4. Insira um registro na tabela pagamentos, com o valor de R$ 73,00 e status Processando
insert into pagamentos VALUES (1, 1, 73.00, 'Processando');
 
-- 5. Simule uma falha no pagamento.
insert into pagamentos  VALUES (2, 2, 555.00, 'Finalizado'); -- Simulei um pagamento errado

-- 6. Execute rollback para cancelar todas as operações da transação
rollback;
 
-- 7. Consulte as tabelas pedidos e pagamentos
select * from pedidos;
select * from pagamentos;

-- 8. Inicie uma nova transação
start transaction;
 
-- 9. Atualize o pedido para o status Pago
update pedidos 
set status = 'Pago' 
where id = 1;
 
-- 10. Insira um novo registro de pagamento com status Aprovado
insert into pagamentos 
values (2, 1, 73.00, 'Aprovado');
 
-- 11. Utilize commit para confirmar as operações
commit;