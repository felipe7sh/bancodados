create database exercicios_db;

use exercicios_db;

create table clientes (
	id_cliente int primary key auto_increment,
	nome varchar(100) not null 
);

create table produtos (
	id_produto int primary key auto_increment,
	nome varchar(100),
	categoria varchar(50) 
);

create table vendedores (
	id_vendedor int primary key auto_increment,
	nome varchar(100) not null
);

create table regioes (
	id_regiao int primary key auto_increment,
	nome varchar(100) not null
);

create table pedidos (
	id_pedido int primary key auto_increment,
	id_cliente int,
	produto varchar(100) not null,
    foreign key (id_cliente) references clientes (id_cliente)
);

create table funcionarios (
	id_funcionario int primary key auto_increment,
	nome varchar(100) not null,
	salario decimal(10,2) not null,
	setor varchar(50) not null
);

create table alunos (
	id_aluno int primary key auto_increment,
	nome varchar(100) not null
);

create table cursos (
	id_curso int primary key auto_increment,
	nome varchar(100) not null
);

create table matriculas (
	id_matricula int primary key auto_increment,
	id_aluno int,
    id_curso int,
    foreign key (id_aluno) references alunos(id_aluno),
    foreign key (id_curso) references cursos(id_curso)
);

insert into clientes (id_cliente, nome) values
(1, "joao"),
(2, "Maria"),
(3, "Carlos"),
(4, "Ana");

insert into produtos (id_produto, nome, categoria) values
(10, "Notebook", "Informatica"),
(11, "Mouse", "Informatica"),
(12, "Mesa de Escritorio", "Moveis"),
(13, "Cadeira Ergonomica", "Moveis"),
(14, "Televisão", "Eletronicos");

insert into vendedores (nome) values
("Pedro"),
("Lucas"),
("Mariana");

insert into regioes (nome) values
("Norte"),
("Sul"),
("Leste"),
("Oeste");

insert into pedidos (id_pedido, id_cliente, produto) values
(101, 1, "Notebook"),
(102, 2, "Mouse"),
(103, 1, "Teclado"),
(104, 4, "Monitor"),
(105, null, "Teclado");

insert into funcionarios (id_funcionario, nome, salario, setor) values
(1, "Joao", 3000, "Ti"),
(2, "Maria", 4500, "Ti"),
(3, "Carlos", 2500, "RH"),
(4, "Ana", 6000, "Ti");

insert into alunos (nome) values
("Fernanda"),
("Gabriel"),
("Beatriz");

insert into cursos (nome) values
("Banco de Dados"),
("Programação Java"),
("Desing UX");

insert into matriculas (id_aluno, id_curso) values
(1,1),
(1,2),
(2,1);

select * from clientes cross join produtos;
select 
vendedores.nome, 
regioes.nome 
from vendedores cross join regioes;

select 
clientes.nome, 
pedidos.produto
from clientes
inner join pedidos
on clientes.id_cliente = pedidos.id_cliente;

select
clientes.nome,
pedidos.id_pedido,
pedidos.produto
from clientes
inner join pedidos
on clientes.id_cliente = pedidos.id_cliente;

select
alunos.nome,
cursos.nome
from alunos
inner join matriculas
on alunos.id_aluno = matriculas.id_aluno
inner join cursos
on matriculas.id_curso = cursos.id_curso;

select
clientes.nome,
pedidos. produto
from clientes
left join pedidos
on clientes.id_cliente = pedidos.id_cliente;

select
clientes.nome
from clientes
left join pedidos
on clientes.id_cliente = pedidos.id_cliente
where pedidos.id_cliente is null;




select
clientes.nome,
pedidos.produto
from clientes
right join pedidos
on clientes.id_cliente = pedidos.id_cliente;