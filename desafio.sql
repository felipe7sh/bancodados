create database evento;
use evento;

create table eventos (
	id int primary key auto_increment,
    nome varchar(100),
    tipo varchar(100),
    valor_ingresso decimal(10,2),
    publico_estimado int
);

insert into eventos (nome, tipo, valor_ingresso, publico_estimado) values
("Festival de Música", "Musica", 85, 450),
("Workshop de Tecnologia", "Workshop", 120, 80),
("Feira Gastronomica", "Gastronomia", 45, 320),
("Congresso de Negocios", "Corporativo", 180, 150),
("Encontro de Fotografia", "Workshop", 70, 95);

select nome, tipo, valor_ingresso, publico_estimado, (valor_ingresso * publico_estimado) as receita_potencial from eventos; -- sem todos eventos
select nome, tipo, valor_ingresso, publico_estimado, (valor_ingresso * publico_estimado) as receita_potencial from eventos where (valor_ingresso * publico_estimado) > 20000.00; -- apenas maiores que 20000