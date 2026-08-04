create database Mercado;

use mercado;

create table produtos (
ID_Produto int primary key auto_increment,
Nome varchar(30),
Categoria varchar(30),
Preço decimal(4,2),
Quantidade int
);

insert into produtos(nome,categoria,preço,quantidade)
values
("Papel toalha", "Higiene", 19.99, 100),
("Arroz", "Alimentos", 32.90, 80),
("Feijão", "Alimentos", 8.49, 120),
("Refrigerante", "Bebidas", 9.99, 60),
("Leite", "Laticínios", 5.79, 150),
("Queijo", "Laticínios", 24.90, 40),
("Detergente", "Limpeza", 3.49, 200),
("Sabão em Pó", "Limpeza", 18.99, 75),
("Desinfetante", "Limpeza", 12.99, 90),
("Shampoo", "Higiene", 16.90, 70),
("Condicionador", "Higiene", 17.90, 65),
("Escova de Dente", "Higiene", 7.99, 180),
("Café", "Alimentos", 21.50, 85),
("Açúcar", "Alimentos", 5.49, 140),
("Óleo de Soja", "Alimentos", 7.89, 110),
("Macarrão", "Alimentos", 4.99, 130),
("Suco de Laranja", "Bebidas", 8.99, 95),
("Água Mineral", "Bebidas", 3.50, 250),
("Biscoito Recheado", "Mercearia", 4.29, 160),
("Chocolate ao Leite", "Doces", 6.99, 100);

select * from produtos;
