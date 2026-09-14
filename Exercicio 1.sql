create database escola_tecnica;
use escola_tecnica;
create table alunos (
id_aluno int primary key auto_increment,
nome varchar(20) not null,
email varchar(20) not null,
curso varchar(20) not null,
data_nasc date
);

insert into alunos (nome, email, curso, data_nasc) values
("felipe","felipe@gmail.com","ADM", "2009-09-01"),
("ana","ana@gmail.com","ADS", "2009-09-02"),
("jose","jose@gmail.com","ADM", "2009-09-03"),
("victor","victor@gmail.com","ADS", "2009-09-04"),
("maria","maria@gmail.com","ADS", "2009-09-05"),
("vitoria","vitoria@gmail.com","Alimentos", "2009-09-06"),
("rafael","rafael@gmail.com","Alimentos", "2009-09-07"),
("marlon","marlon@gmail.com","ADS", "2009-09-08"),
("daniel","daniel@gmail.com","Eletronica", "2009-09-09"),
("giovana","giovana@gmail.com","Eletronica", "2009-09-10");

select * from alunos;