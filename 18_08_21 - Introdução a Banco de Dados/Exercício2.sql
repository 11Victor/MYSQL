create database db_vendas;

use db_vendas;

create table produtos(
id bigint auto_increment,
nome varchar(255) not null,
quantidade int,
durabilidade int not null,
versao varchar(255) not null,
preco decimal(8,2) not null,
primary key (id)
);

insert into produtos(nome, quantidade, durabilidade, versao, preco) values("Samsung S10", 0, 5, "v5.1.0", 2500.00);
insert into produtos(nome, quantidade, durabilidade, versao, preco) values("Samsung S9", 3, 5, "v8.1.0", 1500.00);
insert into produtos(nome, quantidade, durabilidade, versao, preco) values("Samsung A12", 2, 3, "v11.1.0", 1000.00);
insert into produtos(nome, quantidade, durabilidade, versao, preco) values("Samsung A32", 1, 2, "v6.1.0", 1449.00);
insert into produtos(nome, quantidade, durabilidade, versao, preco) values("Samsung J4 Core", 4, 2, "v9.1.0", 498.00);
insert into produtos(nome, quantidade, durabilidade, versao, preco) values("Xiaomi Redmi Go", 1, 3, "v9.3.0", 499.00);
insert into produtos(nome, quantidade, durabilidade, versao, preco) values("LG K9 TV", 1, 1, "v6.3.0", 399.00);
insert into produtos(nome, quantidade, durabilidade, versao, preco) values("Motorola Moto E5 Play", 2, 3, "v1.3.0", 484.00);


select * from produtos where preco > 500;
select * from produtos where preco < 500;

update produtos set quantidade = 4 where id = 1;
