-- crio o banco de dados
create database OficinaDB; 

 -- coloco para usar ele
use OficinaDB;

-- crio a tabela clientes_oficina
create table clientes_oficina ( 
cliente_id int auto_increment primary key,
nome varchar(20) not null,
telefone varchar(20) not null
);

-- crio a tabela veiculos
create table veiculos ( 
veiculo_id int auto_increment primary key,
modelo varchar(20) not null,
placa varchar(20) not null,
cliente_id int,
FOREIGN KEY (cliente_id) REFERENCES clientes_oficina (cliente_id)
);

-- crio a tabela ordens_servico
create table ordens_servico ( 
descricao_servico varchar(100) not null,
valor decimal not null,
veiculo_id int,
FOREIGN KEY (veiculo_id) references veiculos(veiculo_id)
);

 -- insiro os dados na tabela clientes_oficina
insert into clientes_oficina (nome, telefone) values       
("Felipe", "(16) 99589-5678"),
("Victor", "(16) 99334-5134"),
("Maria", "(16) 99632-9356"),
("Arthur", "(16) 99743-1347"),
("Guilherme", "(16) 99782-7483"),
("Raica", "(16) 998423-5604"),
("Rafael", "(16) 99765-2367"),
("Pietra", "(16) 99567-4021"),
("Luiza", "(16) 99234-0954"),
("Ana", "(16) 99676-4353");

-- insiro os dados na tabela veiculos
insert into veiculos (modelo, placa, cliente_id) values 
("Onix", "ABC1D21", 1), 
("Gol", "FGH2I32", 2), 
("HB20", "JKL3M43", 3), 
("Compass", "NOP4Q54", 4), 
("Tracker", "RST5U65", 5), 
("Creta", "VWX6Y76", 6), 
("Mobi", "ZAB7C87", 7), 
("Argo", "DEF8G98", 8), 
("Renegade", "HIJ9K09", 9), 
("Nivus", "LMN0O10", 10);

-- insiro os dados na ordens_servico
insert into ordens_servico (descricao_servico, valor, veiculo_id) values 
("Troca Da Suspenção", 700 , 1),
("Troca Da vela", 300 , 2),
("Troca De Oleo", 500 , 3),
("Troca De Pneu", 1000 , 4),
("Troca Do Filtro De Oleo", 200 , 5),
("Troca Do Filtro de Ar", 200 , 6),
("Troca Do Radiador", 500 , 7),
("Troca Da Calota", 100 , 8),
("Troca Do Rolamento", 700 , 9),
("Troca Da Pastilha De Freio", 700 , 10);

-- crio os usuarios
create user "mecanico_chefe"@"localhost" identified by "mcanico_chefe@123"; 
create user "mecanico"@"localhost" identified by "mecanico@123";
create user "recepcionista"@"localhost" identified by "recepcionista@123";

-- dou permissão para os usuarios
grant select, insert, delete, update on OficinaDB.* to "mecanico_chefe"@"localhost";
grant select on OficinaDB.* to "mecanico"@"localhost";
grant update on OficinaDB.ordens_servico to "mecanico"@"localhost";
grant select, insert on OficinaDB.clientes_oficina to "recepcionista"@"localhost";
grant select, insert on OficinaDB.veiculos to "recepcionista"@"localhost";
