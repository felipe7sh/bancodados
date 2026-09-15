create database escola;
use escola;

create table Cursos (
CursoID int primary key auto_increment,
NomeCurso varchar(20),
Duracao int 
);

create table Alunos (
ID int auto_increment primary key,
Nome varchar(20),
Idade int,
CursoID int,
FOREIGN KEY (CursoID) REFERENCES Cursos (CursoID)
);

insert into Cursos (NomeCurso, Duracao) values
("Engenharia", 60),
("Direito", 60),
("Administração", 48);

insert into Alunos (Nome, Idade, CursoID) values
("Felipe", 17, 1),
("Victor", 18, 2),
("Ana", 17, 2),
("Maria", 17, 3);

update Cursos set Duracao = 50 where CursoID = 3;

select * from Alunos where CursoID = 1;

DELETE FROM Cursos WHERE CursoID = 2;

insert into Alunos (Nome, Idade, CursoID) values
("Guilherme", 17 , 1),
("Luiza", 17, 2);

delete from Alunos where ID = 5;
delete from Alunos where ID = 6;

create user "joao"@"localhost"
identified by "joao@123";

grant select on Escola.Cursos to "joao@123"