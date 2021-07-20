create database db_rh;

use db_rh;

create table tb_func(
id bigint auto_increment,
nome varchar(255),
idade int,
formacao boolean,
cargo varchar(255),
salario decimal,
primary key(id)
);

insert into tb_func(nome, idade, formacao, cargo, salario) values ("Sandra", 32, true, "gerente", 3000.00);
insert into tb_func(nome, idade, formacao, cargo, salario) values ("Eder", 38, true, "coordenador", 2800.00);
insert into tb_func(nome, idade, formacao, cargo, salario) values ("Olivia", 22, false, "assistente", 1800.00);
insert into tb_func(nome, idade, formacao, cargo, salario) values ("Davi", 24, true, "assistente", 2200.00);
insert into tb_func(nome, idade, formacao, cargo, salario) values ("Thomas", 19, false, "auxiliar", 1600.00);

select * from tb_func where salario < 2000.00;

select * from tb_func where salario > 2000.00;

delete from tb_func where id = 1;

select * from tb_func;

update tb_func set cargo = "analista" where id = 5;

alter table tb_func modify salario decimal(8,2);

