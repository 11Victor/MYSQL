create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categoria(
id bigint auto_increment,
marca varchar (255) not null,
acabamento varchar (255) not null,
cor varchar (255) not null,
primary key (id)
);

insert into tb_categoria (marca,acabamento,cor) values ("Tramontina", "Liso", "Preto");
insert into tb_categoria (marca,acabamento,cor) values ("Tramontina", "Zincado", "Preto");
insert into tb_categoria (marca,acabamento,cor) values ("Tramontina", "Envernizado", "Preto");
insert into tb_categoria (marca,acabamento,cor) values ("Cortag", "Liso", "Preto");
insert into tb_categoria (marca,acabamento,cor) values ("Cortag", "Zincado", "Preto");
insert into tb_categoria (marca,acabamento,cor) values ("Cortag", "Envernizado", "Preto");

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

insert into tb_produto(nome, preco, descricao, quantidade, estoque, num_produto) values("Ventosa dupla", 119.90, "Transportar peças planas lisas: vidros, chapas, espelhos, portas, etc.", 1, 30, 1);
insert into tb_produto(nome, preco, descricao, quantidade, estoque, num_produto) values("Espátula", 7.00, "Ideal para aplicação de massas", 2, 60, 6);
insert into tb_produto(nome, preco, descricao, quantidade, estoque, num_produto) values("Cavalete", 34.90, "Ideal para suportar mesa", 4, 15, 3);
insert into tb_produto(nome, preco, descricao, quantidade, estoque, num_produto) values("Tinta Coral", 164.00, "Tinta acrílica lavável, antimofo, econômica e com ótima resistência.", 1, 23, 4);
insert into tb_produto(nome, preco, descricao, quantidade, estoque, num_produto) values("Luminária", 60.00, "Esse é um produto moderno e ideal para leituras e estudos", 1, 29, 1);
insert into tb_produto(nome, preco, descricao, quantidade, estoque, num_produto) values("Raspador de rejunte ", 25.00, "é direcionado para a remoção dos rejuntes", 3, 60, 5);
insert into tb_produto(nome, preco, descricao, quantidade, estoque, num_produto) values("Desempenadeira", 16.90, "Ideal para manipular cimento", 5, 52, 6);
insert into tb_produto(nome, preco, descricao, quantidade, estoque, num_produto) values("Espaçador", 5.88, "Espaçar o piso", 6, 100, 4);

select * from tb_produto;

select * from tb_produto where preco > 50;

select * from tb_produto where preco between 3 and 60;

select * from tb_produto where nome like "%c%";

select * from tb_produto inner join tb_categoria on tb_produto.num_produto = tb_categoria.id order by tb_produto.id;

select * from tb_produto inner join tb_categoria on tb_produto.num_produto = tb_categoria.id where tb_categoria.id = 1;

