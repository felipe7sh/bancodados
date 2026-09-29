create database cursos;
use cursos;

create table cursos (
	id int primary key auto_increment,
    nome varchar(100),
    area varchar(50),
    valor decimal(10,2),
    alunos_matriculados int,
    data_inicio date
);

insert into cursos
(nome, area, valor, alunos_matriculados, data_inicio) values
("Desenvolvimento Web", "Tecnologia", 780.00, 32, "2026-08-12"),
("Gestao de Projetos", "Adminnistração", 620.00, 24, '2026-09-03'),
("Desing Digital", "Criativiade", 540.00, 18, '2026-09-15'),
("Banco de Dados", "Tecnologia", 890.00, 27, '2026-10-05'),
("Marketing Estrategico", "Negocios", 460.00, 35, '2026-10-18');

select nome, area, valor, UPPER(nome), LOWER(nome), year(data_inicio), alunos_matriculados from cursos; 

select concat(nome, " - ", area) as curso_formatado from cursos;

select 
	sum(alunos_matriculados ) as Total_Alunos,
    avg(alunos_matriculados) as Media_alunos_curso,
    max(alunos_matriculados) as Maior_alunos_cursos,
    min(alunos_matriculados) as Menor_alunos_cursos,
    count(area) as Quantidade_cursos
from cursos;

select area,
	count(*) as quantidade_de_cursos,
    sum(alunos_matriculados) as total_alunos,
    avg(alunos_matriculados) as media_alunos
from cursos group by area;

select alunos_matriculados from cursos;