create database campeonato_esports;
use campeonato_esports;

create table alunos (
id int primary key,
nome varchar(100)
);

create table inscricoes (
id int primary key,
aluno_id int,
campeonato varchar(100),
taxa decimal(10,2),
foreign key (aluno_id) references alunos(id)

);
insert into alunos (id, nome) values 
(1, "Lucas"),
(2, "Mariana"),
(3, "Gabriel");

select * from alunos;

-- 1. Inicie uma transação
start transaction; 

-- 2. Registre a inscriçao de lucas no campeonato de valorant
insert into inscricoes values (1, 1, "Valorant", 10.00 ); 

-- 3 Crie um savepoint chamando inscricao_lucas
savepoint inscricao_lucas; 

-- 4. Registre a inscriçao de mariana no campeonato de fifa
insert into inscricoes values (2, 2, "Fifa", 10.00 ); 

-- 5 Crie um savepoint chamando inscricao_mariana
savepoint inscricao_mariana; 

-- 6. Registrei a inscriçao de gabriel no campeonato de Counter-Strike
insert into inscricoes values (3, 3, "Counter-Strike", 10.00 ); 

-- 7. Execute o rollback to savepoint inscricao_mariana
rollback to savepoint inscricao_mariana; 

 -- 8 Consulte todas as inscriçoes existentes
select * from inscricoes;

-- 9 Utilize o commit para confimar a insscriçoes restantes
commit; 
