create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
borda varchar(255) not null,
massa varchar(255) not null,
tipo varchar(255) not null,
primary key (id)
);

insert into tb_categoria (borda, massa, tipo) values ("catupiry", "fina", "pizza salgada");
insert into tb_categoria (borda, massa, tipo) values ("cheddar", "fina", "pizza salgada");

insert into tb_categoria (borda, massa, tipo) values ("catupiry", "grossa", "pizza salgada");
insert into tb_categoria (borda, massa, tipo) values ("cheddar", "grossa", "pizza salgada");

insert into tb_categoria (borda, massa, tipo) values ("sem recheio", "fina", "pizza doce");
insert into tb_categoria (borda, massa, tipo) values ("sem recheio", "grossa", "pizza doce");

select * from tb_categoria;

create table tb_pizza(
id bigint auto_increment,
nome varchar(50) not null,
preco decimal(8,2) not null,
ingredientes varchar(50) not null,
tamanho varchar(50) not null,
tempo_entrega varchar(50) not null,
num_pizza bigint,
primary key (id),
FOREIGN KEY (num_pizza) REFERENCES tb_categoria (id)
);

insert into tb_pizza (nome, preco, ingredientes, tamanho, tempo_entrega, num_pizza) values("AMERICANA", 29.00, "MUSSARELA, BACON, CALABRESA, OVOS E CEBOLA", "Broto", "40 min", 1);
insert into tb_pizza (nome, preco, ingredientes, tamanho, tempo_entrega, num_pizza) values("MILHO", 29.00, "MOLHO DE TOMATE, MUSSARELA E MILHO", "Broto", "50 min", 1);
insert into tb_pizza (nome, preco, ingredientes, tamanho, tempo_entrega, num_pizza) values("MUSSARELA", 33.00, "MOLHO DE TOMATE E MUSSARELA (2 CAMADAS)", "Média", "30 min", 2);
insert into tb_pizza (nome, preco, ingredientes, tamanho, tempo_entrega, num_pizza) values("BACON", 33.00, "MOLHO DE TOMATE, MUSSARELA E BACON", "Média", "59 min", 2);
insert into tb_pizza (nome, preco, ingredientes, tamanho, tempo_entrega, num_pizza) values("CALABRESA", 36.00, "MOLHO DE TOMATE, MUSSARELA E CALABRESA", "Média", "55 min", 3);
insert into tb_pizza (nome, preco, ingredientes, tamanho, tempo_entrega, num_pizza) values("NAPOLITANA", 36.00, "MOLHO DE TOMATE, TOMATES, PROVOLONE E MUSSARELA", "Média", "35 min", 4);
insert into tb_pizza (nome, preco, ingredientes, tamanho, tempo_entrega, num_pizza) values("TOSCANA", 36.00, "MOLHO DE TOMATE, MUSSARELA, CALABRESA E OVOS", "Media", "25 min", 3);
insert into tb_pizza (nome, preco, ingredientes, tamanho, tempo_entrega, num_pizza) values("CAMPESTRE", 65.00, "MOLHO DE TOMATE, MUSSARELA, CALABRESA E OVOS", "Grande", "15 min", 4);
insert into tb_pizza (nome, preco, ingredientes, tamanho, tempo_entrega, num_pizza) values("PRESTIGIO", 40.00, "CHOCOLATE PRETO E CÔCO RALADO", "Grande", "19 min", 5);
insert into tb_pizza (nome, preco, ingredientes, tamanho, tempo_entrega, num_pizza) values("CALIFÓRNIA", 51.00, "CREME DE LEITE, FRUTAS EM CALDA E BANANA", "Grande", "27 min", 6);

select * from tb_pizza;

select * from tb_pizza where preco > 45;

select * from tb_pizza where preco between 29 and 60;

select * from tb_pizza where nome like "%c%";

select * from tb_pizza inner join tb_categoria on tb_pizza.num_pizza = tb_categoria.id;

select * from tb_pizza inner join tb_categoria on tb_pizza.num_pizza = tb_categoria.id where tb_categoria.id = 5;






