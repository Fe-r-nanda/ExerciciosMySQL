create database db_escola;

use db_escola;

create table tb_estudantes(
id bigint auto_increment, 
nome varchar(255),
idade int,
turma int,
turno varchar(255),
nota float,
primary key(id)
);

insert into tb_estudantes(nome, idade, turma, turno, nota) values ("Alice", 7, 22, "manhã", 9.80);
insert into tb_estudantes(nome, idade, turma, turno, nota) values ("Bernardo", 10, 15, "tarde", 6.90);
insert into tb_estudantes(nome, idade, turma, turno, nota) values ("Chloe", 13, 6, "manhã", 8.50);
insert into tb_estudantes(nome, idade, turma, turno, nota) values ("Daniel", 9, 20, "manhã", 5.80);
insert into tb_estudantes(nome, idade, turma, turno, nota) values ("Emilly", 10, 15, "tarde", 7.70);
insert into tb_estudantes(nome, idade, turma, turno, nota) values ("Felipe", 8, 12, "manhã", 7.60);
insert into tb_estudantes(nome, idade, turma, turno, nota) values ("Gabiela", 11, 5, "tarde", 4.80);
insert into tb_estudantes(nome, idade, turma, turno, nota) values ("Henrique", 12, 7, "manhã", 3.60);

alter table tb_estudantes modify nota decimal(8,2);

select * from tb_estudantes;

select * from tb_estudantes where nota < 7.00;

select * from tb_estudantes where nota > 7.00;

update tb_estudantes set turno = "tarde" where id = 8;

select * from tb_estudantes;