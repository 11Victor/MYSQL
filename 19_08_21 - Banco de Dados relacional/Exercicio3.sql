create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment,
tipo varchar (255) not null,
fabricante varchar (255) not null,
tamanho varchar (255) not null,
primary key (id)
);

insert into tb_categoria (tipo, fabricante, tamanho) values ("Cosmético", "L'Oréal", "Pequeno");
insert into tb_categoria (tipo, fabricante, tamanho) values ("Cosmético", "L'Oréal", "Médio");
insert into tb_categoria (tipo, fabricante, tamanho) values ("Cosmético", "L'Oréal", "Grande");
insert into tb_categoria (tipo, fabricante, tamanho) values ("Saúde", "Biolab", "Pequeno");
insert into tb_categoria (tipo, fabricante, tamanho) values ("Saúde", "Biolab", "Médio");
insert into tb_categoria (tipo, fabricante, tamanho) values ("Saúde", "Biolab", "Grande");

select * from tb_categoria;

create table tb_produto(
id bigint auto_increment,
nome varchar(255) not null,
preco decimal(8,2) not null,
descricao varchar(255) not null,
quantidade int not null,
estoque int not null,
num_produto bigint,
primary key (id),
FOREIGN KEY (num_produto) REFERENCES tb_categoria(id)
);

insert into tb_produto(nome, preco, descricao, quantidade, estoque, num_produto) values("Shampoo Antiqueda", 119.90, "Reduz a queda e Fortalece a fibra capilar", 1, 52, 2);
insert into tb_produto(nome, preco, descricao, quantidade, estoque, num_produto) values("Condicionador", 59.90, "Para cabelos danificados por químicas ou agressões térmicas", 2, 80, 3);
insert into tb_produto(nome, preco, descricao, quantidade, estoque, num_produto) values("Creme Hidratante", 66.39, "repara qualquer tipo de pele", 5, 30, 1);
insert into tb_produto(nome, preco, descricao, quantidade, estoque, num_produto) values("Protetor Solar", 73.49, "Alta proteção contra raios UVA/UVB", 1, 45, 2);
insert into tb_produto(nome, preco, descricao, quantidade, estoque, num_produto) values("Suplemento Alimentar", 21.90, "Fonte de fibras alimentares", 2, 57, 5);
insert into tb_produto(nome, preco, descricao, quantidade, estoque, num_produto) values("Vitamina C", 29.90, "Auxilia no sistema imunológico e antioxidante", 6, 60, 6);
insert into tb_produto(nome, preco, descricao, quantidade, estoque, num_produto) values("Eno sabor laranja", 119.90, "Reduz a queda e Fortalece a fibra capilar", 1, 52, 5);
insert into tb_produto(nome, preco, descricao, quantidade, estoque, num_produto) values("Shampoo Antiqueda", 3.88, "É indicado para alívio de azia", 1, 100, 4);

select * from tb_produto;

select * from tb_produto where preco > 50;

select * from tb_produto where preco between 3 and 60;

select * from tb_produto where nome like "%b%";

select * from tb_produto inner join tb_categoria on tb_produto.num_produto = tb_categoria.id order by tb_produto.id;

select * from tb_produto inner join tb_categoria on tb_produto.num_produto = tb_categoria.id where tb_categoria.id = 5;


