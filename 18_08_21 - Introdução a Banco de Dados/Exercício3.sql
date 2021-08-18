create database db_escola;

use db_escola;

create table alunos(
id bigint auto_increment,
nome varchar(50) not null,
idade int not null,
ano varchar(50) not null,
nota_final decimal(8,2) not null,
computador varchar(50) not null,
primary key (id)
);

insert into alunos(nome, idade, ano, nota_final, computador) values("Victor", 21, "3° ano Ensino Médio", 8.5, "Possui computador");
insert into alunos(nome, idade, ano, nota_final, computador) values("Stephany", 25, "2° ano Ensino Médio", 9.5, "Possui computador");
insert into alunos(nome, idade, ano, nota_final, computador) values("Nathalia", 27, "3° ano Ensino Médio", 9.5, "Possui computador");
insert into alunos(nome, idade, ano, nota_final, computador) values("João", 15, "2° ano Ensino Médio", 7.5, "Não possui computador");
insert into alunos(nome, idade, ano, nota_final, computador) values("Jubileu", 17, "1° ano Ensino Médio", 6.5, "Possui computador");
insert into alunos(nome, idade, ano, nota_final, computador) values("Lucas", 21, "3° ano Ensino Médio", 5.0, "Possui computador");
insert into alunos(nome, idade, ano, nota_final, computador) values("José", 20, "3° ano Ensino Médio", 4.5, "Não possui computador");
insert into alunos(nome, idade, ano, nota_final, computador) values("Valeriano", 18, "2° ano Ensino Médio", 3.0, "Não possui computador");

select * from alunos where nota_final > 7;
select * from alunos where nota_final < 7;

update alunos set idade = 18 where id = 5;

