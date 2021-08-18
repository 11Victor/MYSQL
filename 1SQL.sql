-- Cria o banco de dados
create database db_brecho;

-- Abaixo de use ele vai usar o banco de dados db_brecho
use db_brecho;

-- Cria planilha
create table produtos(
id bigint auto_increment,
nome varchar(255) not null,
quantidade int,
preco decimal not null,
primary key (id)
);

insert into produtos(nome, quantidade, preco) values ("camiseta", 50, 20.00);
insert into produtos(nome, quantidade, preco) values ("calça", 60, 1.50);
insert into produtos(nome, quantidade, preco) values ("camiseta", 50, 20.00);

select * from produtos;

alter table produtos modify preco decimal(8,2);

update produtos set preco = 1.50 where id = 2;

delete from produtos where id = 3;

insert into produtos(nome, quantidade, preco) values ("bermuda", 50, 15.30);

alter table produtos add descricao varchar (255);

alter table produtos drop descricao;

alter table produtos change nome nomeproduto varchar(255);