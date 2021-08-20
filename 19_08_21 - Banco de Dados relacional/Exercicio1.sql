create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
id bigint auto_increment,
nome_classe varchar(255) not null,
hp int not null,
idade int not null,
primary key (id)
);

insert into tb_classe(nome_classe, hp, idade) values("Valquíria", 100, 27);
insert into tb_classe(nome_classe, hp, idade) values("Espadachim", 90, 25);
insert into tb_classe(nome_classe, hp, idade) values("Mago", 40, 50);

select * from tb_classe;

create table tb_personagem(
id bigint auto_increment,
nome_personagem varchar(255) not null,
nivel int not null,
ataque int not null,
defesa int not null,
velocidade int not null,
inteligencia int not null,
golpe varchar(50) not null,
mana int not null,
arma varchar(50) not null,

id_personagem bigint,
primary key (id),
FOREIGN KEY (id_personagem) REFERENCES tb_classe (id)
);

insert into tb_personagem(nome_personagem, nivel, ataque, defesa, velocidade, inteligencia, golpe, mana, arma, id_personagem) values("Amanda", 40, 100, 60, 110, 600, "Giratório", 0, "machado", 1); 
insert into tb_personagem(nome_personagem, nivel, ataque, defesa, velocidade, inteligencia, golpe, mana, arma, id_personagem) values("Stephany", 25, 90, 40, 40, 550, "Meteoro do Dragão", 200, "bastão", 3);
insert into tb_personagem(nome_personagem, nivel, ataque, defesa, velocidade, inteligencia, golpe, mana, arma, id_personagem) values("Amora", 60, 2500, 900, 200, 10, "Morder", 0, "espada", 2);
insert into tb_personagem(nome_personagem, nivel, ataque, defesa, velocidade, inteligencia, golpe, mana, arma, id_personagem) values("Lua", 100, 1000, 1500, 10, 100, "Dormir", 2, "lança", 1);
insert into tb_personagem(nome_personagem, nivel, ataque, defesa, velocidade, inteligencia, golpe, mana, arma, id_personagem) values("Sol", 70, 2600, 1900, 300, 400, "Soco", 0, "cobertor", 2);
insert into tb_personagem(nome_personagem, nivel, ataque, defesa, velocidade, inteligencia, golpe, mana, arma, id_personagem) values("Frida", 90, 2000, 3000, 700, 150, "Mortal carpado", 900, "bastão ocean", 3);
insert into tb_personagem(nome_personagem, nivel, ataque, defesa, velocidade, inteligencia, golpe, mana, arma, id_personagem) values("Estrela", 75, 60, 10, 50, 0, "Sair desperada", 400, "brilhar", 3);
insert into tb_personagem(nome_personagem, nivel, ataque, defesa, velocidade, inteligencia, golpe, mana, arma, id_personagem) values("Jorge", 40, 400, 500, 800, 400, "Nadar", 0, "escalibur", 2);
insert into tb_personagem(nome_personagem, nivel, ataque, defesa, velocidade, inteligencia, golpe, mana, arma, id_personagem) values("Victor", 100, 8000, 6500, 10000, 9000, "Super-velocidade", 50, "Raio", 3);

select * from tb_personagem;

select * from tb_personagem where ataque > 2000;

select * from tb_personagem where defesa between 1000 and 2000;

select * from tb_personagem where nome_personagem like "%c%" ;

select * from tb_personagem inner join tb_classe on tb_personagem.id_personagem = tb_classe.id;

select tb_personagem.nome_personagem, tb_classe.nome_classe from tb_personagem inner join tb_classe on tb_personagem.id_personagem = tb_classe.id where tb_classe.id = 3;

select * from tb_personagem inner join tb_classe on tb_personagem.id_personagem = tb_classe.id where tb_classe.id = 3;

 