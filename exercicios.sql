CREATE DATABASE exercicios_sala_617;
USE exercicios_sala_617;

CREATE TABLE clientes (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE produtos (
    id_produto INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    categoria VARCHAR(50)
);

CREATE TABLE vendedores (
    id_vendedor INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE regioes (
    id_regiao INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE pedidos (
    id_pedido INT PRIMARY KEY,
    id_cliente INT,
    produto VARCHAR(100)
);

CREATE TABLE funcionarios (
    id_funcionario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    salario DECIMAL(10, 2) NOT NULL,
    setor VARCHAR(50)
);

CREATE TABLE alunos (
    id_aluno INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE cursos (
    id_curso INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE matriculas (
    id_matricula INT PRIMARY KEY AUTO_INCREMENT,
    id_aluno INT,
    id_curso INT,
    FOREIGN KEY (id_aluno) REFERENCES alunos(id_aluno),
    FOREIGN KEY (id_curso) REFERENCES cursos(id_curso)
);

INSERT INTO clientes (id_cliente, nome) VALUES
(1, "Rodrigo"),
(2, "Camila"),
(3, "Felipe"),
(4, "Juliana");

INSERT INTO produtos (id_produto, nome, categoria) VALUES
(20, "Tablet Gráfico", "Periféricos"),
(21, "Headset Gamer", "Periféricos"),
(22, "Estante de Aço", "Armazenamento"),
(23, "Luminária Articulada", "Iluminação"),
(24, "Projetor 4K", "Multimídia");

INSERT INTO vendedores (nome) VALUES
("Renata"),
("Otávio"),
("Tatiane");

INSERT INTO regioes (nome) VALUES
("Nordeste"),
("Sudeste"),
("Centro-Oeste"),
("Sul");

INSERT INTO pedidos (id_pedido, id_cliente, produto) VALUES
(202, 2, "Headset Gamer"),
(203, 1, "Luminária Articulada"),
(204, 4, "Projetor 4K"),
(205, NULL, "Luminária Articulada");

INSERT INTO funcionarios (id_funcionario, nome, salario, setor) VALUES
(1, "Rodrigo", 3200.00, "Suporte"),
(2, "Camila", 4800.00, "Suporte"),
(3, "Felipe", 2700.00, "Financeiro"),
(4, "Juliana", 6500.00, "Suporte");

INSERT INTO alunos (nome) VALUES
("Larissa"),
("Matheus"),
("Sabrina");

INSERT INTO cursos (nome) values
("Modelagem SQL"),
("Desenvolvimento Web"),
("Redes de Computadores");

INSERT INTO matriculas (id_aluno, id_curso) VALUES
(1, 1),
(1, 2),
(2, 1);

-- exercicio 1
select
    vendedores.nome as nome_vendedor,
    regioes.nome as nome_regiao
from vendedores
cross join regioes;

select
    clientes.nome as nome_cliente,
    pedidos.id_pedido,
    pedidos.produto
from clientes
inner join pedidos on clientes.id_cliente = pedidos.id_cliente;

-- exercicio 2
select
    clientes.nome as nome_cliente
from clientes
left join pedidos on clientes.id_cliente = pedidos.id_cliente
where pedidos.id_pedido is null;

select
    clientes.nome as nome_cliente,
    pedidos.id_pedido,
    pedidos.produto
from clientes
right join pedidos on clientes.id_cliente = pedidos.id_cliente;

-- exercicio 3
select
    funcionarios.nome,
    funcionarios.salario
from funcionarios
where funcionarios.salario > (select avg(salario) from funcionarios);

select
    clientes.id_cliente,
    clientes.nome
from clientes
where clientes.id_cliente in (select pedidos.id_cliente from pedidos where pedidos.id_cliente is not null);

-- exercicio 4
select
    alunos.nome as nome_aluno,
    cursos.nome as nome_curso
from alunos
inner join matriculas on alunos.id_aluno = matriculas.id_aluno
inner join cursos on matriculas.id_curso = cursos.id_curso;

-- exercicio 5
select
    clientes.id_cliente,
    clientes.nome
from clientes
where clientes.id_cliente not in (
    select pedidos.id_cliente
    from pedidos
    where pedidos.id_cliente is not null
);

-- exercicio 6
select
    funcionarios.nome,
    funcionarios.salario
from funcionarios
where funcionarios.salario > all (
    select funcionarios.salario
    from funcionarios
    where funcionarios.setor = "Suporte"
);

-- exercicio 7
select
    cursos.nome as nome_curso
from cursos
left join matriculas on cursos.id_curso = matriculas.id_curso
where matriculas.id_matricula is null;

-- exercicio 8
select
    clientes.nome
from clientes
where exists (
    select 1
    from pedidos
    where pedidos.id_cliente = clientes.id_cliente
);

-- questoes

SELECT * FROM pedidos;

insert into clientes (id_cliente, nome) values
(5, "Felipe de Sá Ribeiro");

SELECT AVG(salario) FROM funcionarios;

SELECT * FROM produtos WHERE categoria in ("Perifericos");