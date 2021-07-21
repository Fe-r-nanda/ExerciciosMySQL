create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(50),
modo varchar(50),
turno varchar(50),
primary key (id)
);

insert into tb_categoria (descricao,modo, turno) values ("Idiomas", "Presencial", "Noturno");
insert into tb_categoria (descricao,modo, turno) values ("Idiomas", "Online", "Noturno");
insert into tb_categoria (descricao,modo, turno) values ("Idiomas", "Presencial", "Matutino");
insert into tb_categoria (descricao,modo, turno) values ("Exatas", "Presencial", "Noturno");
insert into tb_categoria (descricao,modo, turno) values ("Exatas", "Presencial", "Matutino");

select * from tb_categoria;

create table tb_produto(
id bigint auto_increment,
nome varchar(50),
mensalidade decimal(8,2),
inicial boolean,
avancado boolean,
grupo varchar(50),
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_produto (nome, mensalidade, inicial, avancado, grupo, categoria_id) values ("Inglês", 350.00, true, false, "Adulto", 3);
insert into tb_produto (nome, mensalidade, inicial, avancado, grupo, categoria_id) values ("Francês", 380.00, false, true, "Adulto", 2);
insert into tb_produto (nome, mensalidade, inicial, avancado, grupo, categoria_id) values ("Japonês", 400.00, true, false, "Infantil", 3);
insert into tb_produto (nome, mensalidade, inicial, avancado, grupo, categoria_id) values ("Espanhol", 59.90, true, false, "Adolescente", 1);
insert into tb_produto (nome, mensalidade, inicial, avancado, grupo, categoria_id) values ("Matemática", 150.90, true, false, "Infantil", 5);
insert into tb_produto (nome, mensalidade, inicial, avancado, grupo, categoria_id) values ("Física", 250.00, true, false, "Adolescente", 4);
insert into tb_produto (nome, mensalidade, inicial, avancado, grupo, categoria_id) values ("Português", 260.00, false, true, "Infantil", 1);
insert into tb_produto (nome, mensalidade, inicial, avancado, grupo, categoria_id) values ("Matemática ll", 199.90, false, true, "Adulto", 4);

select * from tb_produto;

select * from tb_produto where mensalidade > 50.00;

select * from tb_produto where mensalidade > 3.00 and mensalidade < 60.00;

select * from tb_produto where nome like "%j%"; 

select tb_produto.nome, tb_produto.mensalidade, tb_categoria.descricao , tb_categoria.modo from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where tb_categoria.id = 4; 
