create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(50),
estoque boolean, 
grupo varchar(50),
primary key (id)
);

insert into tb_categoria (descricao, estoque, grupo) values ("Remédio genérico", true, "todas as idades");
insert into tb_categoria (descricao, estoque, grupo) values ("Remédio genérico", true, "infantil");
insert into tb_categoria (descricao, estoque, grupo) values ("Cosmético", true, "todas as idades");
insert into tb_categoria (descricao, estoque, grupo) values ("Remédio manipulado", true, "todas as idades");
insert into tb_categoria (descricao, estoque, grupo) values ("Higiene", true, "Todas as idades");

select * from tb_categoria;

create table tb_produto(
id bigint auto_increment,
nome varchar (50),
preco decimal(6,2),
receita boolean,
injecao boolean,
gratuito boolean,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_produto (nome, preco, receita, injecao, gratuito, categoria_id) values ("Neosoro", 10.90, false, false, false, 1);
insert into tb_produto (nome, preco, receita, injecao, gratuito, categoria_id) values ("Buscopan", 15.90, false, false, false, 1);
insert into tb_produto (nome, preco, receita, injecao, gratuito, categoria_id) values ("Tylenol", 3.80, false, false, false, 1);
insert into tb_produto (nome, preco, receita, injecao, gratuito, categoria_id) values ("Depomes", 44.90, true, true, false, 4);
insert into tb_produto (nome, preco, receita, injecao, gratuito, categoria_id) values ("Melhoral infantil", 5.90, false, false, false, 2);
insert into tb_produto (nome, preco, receita, injecao, gratuito, categoria_id) values ("Hidratante Vichy", 95.50, false, false, false, 3);
insert into tb_produto (nome, preco, receita, injecao, gratuito, categoria_id) values ("Shampoo Salon Line", 29.90, false, false, false, 5);
insert into tb_produto (nome, preco, receita, injecao, gratuito, categoria_id) values ("Absorvente", 26.99, false, false, false, 1);

select * from tb_produto;

select * from tb_produto where preco > 50.00;

select * from tb_produto where preco > 3.00 and preco < 60.00;

select * from tb_produto where nome like "%b%"; 

select tb_produto.nome, tb_produto.preco, tb_categoria.descricao , tb_categoria.estoque from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where tb_categoria.id = 1;