create database db_cidade_das_frutas;

use db_cidade_das_frutas;

create table tb_categoria(
id bigint auto_increment,
transportadora varchar (255) not null,
cuidado_frutas varchar (255) not null,
tamanho varchar (255) not null,
primary key (id)
);

insert into tb_categoria (transportadora, cuidado_frutas, tamanho) values ("GCB", "alto", "Pequeno");
insert into tb_categoria (transportadora, cuidado_frutas, tamanho) values ("GCB", "medio", "Medio");
insert into tb_categoria (transportadora, cuidado_frutas, tamanho) values ("GCB", "baixo", "Grande");
insert into tb_categoria (transportadora, cuidado_frutas, tamanho) values ("Proe", "alto", "Pequeno");
insert into tb_categoria (transportadora, cuidado_frutas, tamanho) values ("Proe", "medio", "Medio");
insert into tb_categoria (transportadora, cuidado_frutas, tamanho) values ("Proe", "baixo", "Grande");

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

insert into tb_produto(nome, preco, descricao, quantidade, estoque, num_produto) values("Abacate", 6.50, "Originário da América Central, o abacate possui vitaminas A, B, C, D, E", 1, 30, 2);
insert into tb_produto(nome, preco, descricao, quantidade, estoque, num_produto) values("Abacaxi", 7.00, "O abacaxi é rico em vitamina C e contribui para o funcionamento do sistema imunológico", 2, 25, 5);
insert into tb_produto(nome, preco, descricao, quantidade, estoque, num_produto) values("Açaí", 5.00, "O açaí é um alimento altamente energético, rico em cálcio", 5, 200, 1);
insert into tb_produto(nome, preco, descricao, quantidade, estoque, num_produto) values("Melancia", 70.00, "Originária da África, a melancia é rica em água, o que a torna muito refrescante", 5, 23, 6);
insert into tb_produto(nome, preco, descricao, quantidade, estoque, num_produto) values("Melão", 11.00, "O melão é uma fruta rica em água e possui quantidades significativas de cálcio, fósforo e ferro", 2, 29, 2);
insert into tb_produto(nome, preco, descricao, quantidade, estoque, num_produto) values("Morango", 15.00, "O morango possui vitaminas C, A, E, B5 e B6", 5, 60, 1);
insert into tb_produto(nome, preco, descricao, quantidade, estoque, num_produto) values("Pera", 5, "A pera é uma fruta rica em sódio, potássio, ferro, magnésio e cálcio", 5, 52, 4);
insert into tb_produto(nome, preco, descricao, quantidade, estoque, num_produto) values("Pitanga", 3.88, "Apresenta como principais nutrientes o potássio, sais minerais e vitamina C", 6, 100, 4);

select * from tb_produto;

select * from tb_produto where preco > 50;

select * from tb_produto where preco between 3 and 60;

select * from tb_produto where nome like "%c%";

select * from tb_produto inner join tb_categoria on tb_produto.num_produto = tb_categoria.id order by tb_produto.id;

select * from tb_produto inner join tb_categoria on tb_produto.num_produto = tb_categoria.id where tb_categoria.id = 1;

