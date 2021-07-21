create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(50),
tamanho varchar (50),
estoque boolean,
primary key (id)
);


insert into tb_categoria (descricao, tamanho, estoque) values ("Salgada", "Média", true);
insert into tb_categoria (descricao, tamanho, estoque) values ("Salgada", "Grande", true);
insert into tb_categoria (descricao, tamanho, estoque) values ("Salgada", "Pequena", true);
insert into tb_categoria (descricao, tamanho, estoque) values ("Doce", "Broto", true);
insert into tb_categoria (descricao, tamanho, estoque) values ("Doce", "Média", true);
insert into tb_categoria (descricao, tamanho, estoque) values ("Especiais", "Média", true);

select * from tb_categoria;


create table tb_pizza(
id bigint auto_increment,
sabor varchar(50),
vegana boolean,
formato varchar(50),
vegetariana boolean,
preco decimal(8,2),
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_pizza (sabor, vegana, formato, vegetariana, preco, categoria_id) values ("Frango", false, "quadrada",false, 34.90, 1);
insert into tb_pizza (sabor, vegana, formato, vegetariana, preco, categoria_id) values ("Morango c/ Chocolate", true, "redonda",true, 55.00, 4);
insert into tb_pizza (sabor, vegana, formato, vegetariana, preco, categoria_id) values ("Mussarela", false, "redonda",true, 29.99, 1);
insert into tb_pizza (sabor, vegana, formato, vegetariana, preco, categoria_id) values ("Calabresa", false, "redonda",false, 32.90, 2);
insert into tb_pizza (sabor, vegana, formato, vegetariana, preco, categoria_id) values ("Alho", false, "quadrada",true, 29.99, 6);
insert into tb_pizza (sabor, vegana, formato, vegetariana, preco, categoria_id) values ("Atum", false, "redonda",false, 57.00, 2);
insert into tb_pizza (sabor, vegana, formato, vegetariana, preco, categoria_id) values ("Abacaxi", true, "quadrada",true, 65.00, 5);
insert into tb_pizza (sabor, vegana, formato, vegetariana, preco, categoria_id) values ("Veggie", true, "redonda",true, 69.90, 6);

select * from tb_pizza;

select * from tb_pizza where preco > 45.00;

select * from tb_pizza where preco > 29.00 and preco < 60.00;

select * from tb_pizza where sabor like "%c%"; 

select tb_pizza.sabor, tb_pizza.preco, tb_categoria.descricao , tb_categoria.tamanho from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id;

select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id where tb_categoria.id = 4;