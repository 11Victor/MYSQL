create database db_RH;

use db_RH;

create table funcionarios(
id bigint auto_increment,
nome varchar(255) not null,
idade int,
setor varchar(255) not null,
salario decimal(8,2) not null,
primary key (id) 
);

insert into funcionarios(nome ,idade, setor, salario) values("Victor", 21, "Programer", 5000.00);
insert into funcionarios(nome ,idade, setor, salario) values("Stephany", 26, "Arquitetura", 5000.00);
insert into funcionarios(nome ,idade, setor, salario) values("Luiz", 18, "Logistica", 1800.00);
insert into funcionarios(nome ,idade, setor, salario) values("Dandara", 23, "Administração", 1500.00);


select * from funcionarios where salario>2000;
select * from funcionarios where salario<2000;

update funcionarios set salario = 1900.00 where id = 7;

delete from funcionarios where id = 4 or id = 5 or id = 6;

select * from funcionarios;


