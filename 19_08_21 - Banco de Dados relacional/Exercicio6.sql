create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria(
id bigint auto_increment,
linguagem varchar (255) not null,
bloco varchar (255) not null,
instrutor varchar (255) not null,
primary key (id)
);

insert into tb_categoria (linguagem,bloco,instrutor) values ("Python", "Bloco 1", "Nico Steppat");
insert into tb_categoria (linguagem,bloco,instrutor) values ("Python", "Bloco 2", "Nico Steppat");
insert into tb_categoria (linguagem,bloco,instrutor) values ("Python", "Bloco 3", "Nico Steppat");
insert into tb_categoria (linguagem,bloco,instrutor) values ("Java", "Bloco 1", "Fernando Furtado");
insert into tb_categoria (linguagem,bloco,instrutor) values ("Java", "Bloco 2", "Fernando Furtado");
insert into tb_categoria (linguagem,bloco,instrutor) values ("Java", "Bloco 3", "Fernando Furtado");

select * from tb_categoria; 

create table tb_produto(
id bigint auto_increment,
sala int not null,
preco decimal(8,2) not null,
descricao varchar(255) not null,
aula int not null,
carga_horaria varchar(255) not null,
num_produto bigint,
primary key (id),
FOREIGN KEY (num_produto) REFERENCES tb_categoria(id)
);

insert into tb_produto(sala, preco, descricao, aula, carga_horaria, num_produto) values(2, 150, "Crie um jogo para aprender os recursos fundamentais do Python", 1, "12h", 1);
insert into tb_produto(sala, preco, descricao, aula, carga_horaria, num_produto) values(1, 150, "Crie um jogo para aprender os recursos fundamentais do Python", 2, "12h", 3);
insert into tb_produto(sala, preco, descricao, aula, carga_horaria, num_produto) values(3, 150, "Crie um jogo para aprender os recursos fundamentais do Python", 4, "12h", 2);
insert into tb_produto(sala, preco, descricao, aula, carga_horaria, num_produto) values(2, 150, "Crie um jogo para aprender os recursos fundamentais do Python", 1, "12h", 2);
insert into tb_produto(sala, preco, descricao, aula, carga_horaria, num_produto) values(2, 200, "Crie uma CRUD completa e faço o deploy com Tomcat", 1, "10h", 4);
insert into tb_produto(sala, preco, descricao, aula, carga_horaria, num_produto) values(3, 200, "Crie uma CRUD completa e faço o deploy com Tomcat", 2, "10h", 5);
insert into tb_produto(sala, preco, descricao, aula, carga_horaria, num_produto) values(1, 200, "Crie uma CRUD completa e faço o deploy com Tomcat", 3, "10h", 6);
insert into tb_produto(sala, preco, descricao, aula, carga_horaria, num_produto) values(2, 55, "Crie uma CRUD completa e faço o deploy com Tomcat", 2, "10h", 6);

select * from tb_produto;

select * from tb_produto where preco > 50;

select * from tb_produto where preco between 3 and 60;

select * from tb_produto where descricao like "%j%";

select * from tb_produto inner join tb_categoria on tb_produto.num_produto = tb_categoria.id order by tb_produto.id;

select * from tb_produto inner join tb_categoria on tb_produto.num_produto = tb_categoria.id where tb_categoria.id = 1;

