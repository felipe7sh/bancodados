create database lojas;
use loja;

create table produtos (
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(100),
categoria VARCHAR(50),
preco DECIMAL(10,2),
estoque INT,
data_cadastro DATE
);

INSERT INTO produtos
(nome, categoria, preco, estoque, data_cadastro) VALUES
('Notebook Dell', 'Informática', 3500.00, 10, '2026-01-15'),
('Mouse Logitech', 'Informática', 120.00, 25, '2026-02-10'),
('Teclado Mecânico', 'Informática', 350.00, 15, '2026-02-20'),
('Monitor LG', 'Informática', 1200.00, 8, '2026-03-05'),
('Cadeira Gamer', 'Móveis', 1500.00, 5, '2026-03-10'),
('Mesa Escritório', 'Móveis', 800.00, 7, '2026-03-15'),
('Headset JBL', 'Áudio', 250.00, 20, '2026-04-01'),
('Webcam Full HD', 'Informática', 300.00, 12, '2026-04-05');

select nome, preco, preco * 1.10 as preco_com_aumento from produtos;
-- selecionar nome e preco e preco vezes 1.10 com nome preco_com_aumento da tabela produtos

select * from produtos where preco > 500 and estoque < 10;

select * from produtos where categoria = "Móveis" or categoria = "Áudio";

select * from produtos where not categoria = "Informática";

select * from produtos where preco between 100 and 500;

select * from produtos where categoria in("Informática", "Móveis", "Áudio");

select * from produtos where nome like ("M%");

select * from produtos where nome like ("%er");

select * from produtos where nome like ("%teclado%");

select * from produtos where categoria is not null;


SELECT ROUND(125.678543 ,2); -- arredonda o numero. o ,2 sao quantas casas depois do . ira manter
select ceil(125.1); -- arredonda o numero para cima (out: 126)
SELECT FLOOR(125.9); -- arredonda o numero para baixo (out: 125)
SELECT MOD(10, 3); -- retorna o resto da divisao (out: 1)

SELECT UPPER(nome) FROM produtos; -- Converte para maiúsculas.
SELECT LOWER(nome) FROM produtos; -- --Converte para minúsculas.
SELECT nome, LENGTH(nome) AS quantidade_caracteres FROM produtos; -- Retorna a quantidade de caracteres.



-- Função | O que faz

-- Count | Conta
-- SUM | Soma
-- AVG | Media
-- MAX | Maior Valor
-- MIN | Menor Valor

SELECT COUNT(*) AS quantidade_produtos FROM produtos; -- retorna o numero total de produtos
SELECT SUM(preco * estoque) AS valor_total_estoque FROM produtos; -- retorna a soma de todo o estoque
SELECT AVG(preco) AS preco_medio FROM produtos; -- retorna o preço medio
SELECT MAX(preco) AS maior_preco FROM produtos; -- retorna o preço mais alto
SELECT MIN(preco) AS menor_preco FROM produtos; -- retorna o preço mais baixo