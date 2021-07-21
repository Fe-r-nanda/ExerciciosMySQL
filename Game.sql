create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
id bigint auto_increment,
genero varchar (50) not null,
estoque boolean not null,
interativo boolean not null,
primary key (id)
);

insert into tb_classe (genero, estoque, interativo) values ("aventura", true, false);
insert into tb_classe (genero, estoque, interativo) values ("terror", true, false);
insert into tb_classe (genero, estoque, interativo) values ("arcade", true, false);
insert into tb_classe (genero, estoque, interativo) values ("batalha", true, true);
insert into tb_classe (genero, estoque, interativo) values ("açao", true, true);

select * from tb_classe;

create table tb_personagem(
id bigint auto_increment,
nome varchar (50),
forca int,
ataque int,
cura int,
velocidade int,
defesa int,
classe_id bigint,
primary key (id),
FOREIGN KEY (classe_id) REFERENCES tb_classe (id) 
);

insert into tb_personagem (nome, forca, ataque, cura, velocidade, defesa, classe_id) values ("Adam", 5000, 3000, 1000, 1000, 900,5);
insert into tb_personagem (nome, forca, ataque, cura, velocidade, defesa, classe_id) values ("Beth", 900, 3000, 2000, 4000, 5000,2);
insert into tb_personagem (nome, forca, ataque, cura, velocidade, defesa, classe_id) values ("Cristopher", 8000, 5000, 2000, 4000, 2000,1);
insert into tb_personagem (nome, forca, ataque, cura, velocidade, defesa, classe_id) values ("Dylan", 1000, 2000, 7000, 3000, 9000,3);
insert into tb_personagem (nome, forca, ataque, cura, velocidade, defesa, classe_id) values ("Elliot", 2000, 3000, 4000, 3000, 2000,4);
insert into tb_personagem (nome, forca, ataque, cura, velocidade, defesa, classe_id) values ("Fergie", 1000, 1000, 3000, 4000, 2000,1);
insert into tb_personagem (nome, forca, ataque, cura, velocidade, defesa, classe_id) values ("Gale", 5000, 2000, 5000, 7000, 4000,2);

select * from tb_personagem;

select * from tb_personagem where ataque > 2000;

select * from tb_personagem where defesa between 1000 and 2000;

select * from tb_personagem where nome like "%c%";

select tb_personagem.nome, tb_personagem.ataque, tb_personagem. defesa, tb_classe.genero from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id;

select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id where tb_classe.id = 2;