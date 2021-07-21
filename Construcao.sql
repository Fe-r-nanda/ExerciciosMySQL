create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categoria(
id bigint auto_increment,
area varchar(50),
estoque boolean,
ferramenta boolean,
primary key (id)
);

insert into tb_categoria (area, estoque, ferramenta) values ("Residencial", true, true);
insert into tb_categoria (area, estoque, ferramenta) values ("Empresarial", true, false);
insert into tb_categoria (area, estoque, ferramenta) values ("Comércio", true, false);
insert into tb_categoria (area, estoque, ferramenta) values ("Residencial", true, false);
insert into tb_categoria (area, estoque, ferramenta) values ("Empresarial", true, true);


select * from tb_categoria;

create table tb_produto(
id bigint auto_increment,
nome varchar(50),
eletronico boolean,
preco decimal(8,2),
quantidade int,
entrega boolean,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_produto (nome, eletronico, preco, quantidade, entrega, categoria_id) values ("Saco de areia", false, 20.00, 5, true,2);
insert into tb_produto (nome, eletronico, preco, quantidade, entrega, categoria_id) values ("Chave de fenda", false, 34.90, 3, false,1);
insert into tb_produto (nome, eletronico, preco, quantidade, entrega, categoria_id) values ("Saco de cimento", false, 29.99, 10, true,2);
insert into tb_produto (nome, eletronico, preco, quantidade, entrega, categoria_id) values ("Furadeira", true, 149.90, 1, false,3);
insert into tb_produto (nome, eletronico, preco, quantidade, entrega, categoria_id) values ("Multímetro", true, 50.00, 2, false,5);
insert into tb_produto (nome, eletronico, preco, quantidade, entrega, categoria_id) values ("Telha cimento", false, 42.80, 72, true,4);
insert into tb_produto (nome, eletronico, preco, quantidade, entrega, categoria_id) values ("Escada alumínio", false, 210.50, 1, false,3);
insert into tb_produto (nome, eletronico, preco, quantidade, entrega, categoria_id) values ("Rolo de pintura", false, 26.90, 10, true,4);


select * from tb_produto;

select * from tb_produto where preco > 50.00;

select * from tb_produto where preco > 3.00 and preco < 60.00;

select * from tb_produto where sabor like "%c%"; 

select tb_produto.nome, tb_produto.preco, tb_categoria.estoque , tb_categoria.area from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where tb_categoria.id = 3;