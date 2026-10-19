CREATE DATABASE academia_db;
USE academia_db;

CREATE TABLE planos (
id_plano INT PRIMARY KEY,
nome_plano VARCHAR(80),
modalidade VARCHAR(50),
valor_mensal DECIMAL(10,2),
data_cadastro DATE,
quantidade_alunos INT
);

INSERT INTO planos
(id_plano, nome_plano, modalidade, valor_mensal, data_cadastro, quantidade_alunos)
VALUES
(1, 'Musculacao', 'Treinamento', 119.90, '2026-01-15', 42),
(2, 'Pilates', 'Saude', 149.90, '2026-02-10', 28),
(3, 'Funcional', 'Treinamento', 99.90, '2026-03-05', 35),
(4, 'Yoga', 'Bem-Estar', 89.90, '2025-11-20', 18),
(5, 'Spinning', 'Cardio', 109.90, '2026-01-28', 31),
(6, 'Cross Training', 'Treinamento', 139.90, '2026-04-12', 26),
(7, 'Danca', 'Bem-Estar', 79.90, '2025-12-03', 22),
(8, 'Natação', 'Cardio', 159.90, '2026-02-22', 39),
(9, 'Alongamento', 'Saude', 69.90, '2026-05-18', 15),
(10, 'Personal Fit', 'Treinamento', 199.90, '2026-06-02', 12);

select * from planos;

select nome_plano, modalidade, valor_mensal, upper(nome_plano), lower(nome_plano), year(data_cadastro), quantidade_alunos from planos;

select upper(concat(nome_plano, " - ", modalidade)) as plano_formatado from planos;

select 
	sum(quantidade_alunos) as total_Alunos, 
	avg(quantidade_alunos) as media_por_curso, 
	max(quantidade_alunos) as maior_quantidade_alunos, 
	min(quantidade_alunos) as menor_quantidade_alunos ,
    count(nome_plano) as planos_cadastrados
from planos;

select 
	modalidade,
	count(nome_plano) as planos,
	sum(quantidade_alunos) as total_Alunos, 
	avg(quantidade_alunos) as media_por_curso
from planos group by modalidade;