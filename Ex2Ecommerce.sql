create database db_ecommerce;

use db_ecommerce;

create table tb_produtos(
id bigint auto_increment,
marca varchar(255),
nome varchar(255),
modelo varchar(255),
versao int,
preco decimal,
primary key(id)
);

insert into tb_produtos(marca, nome, modelo, versao, preco) values ("Apple", "celular", "IPhone", 12, 6000.00);
insert into tb_produtos(marca, nome, modelo, versao, preco) values ("Motorola", "celular", "MotoG", 3, 750.00);
insert into tb_produtos(marca, nome, modelo, versao, preco) values ("Samsung", "tablet", "S6", 2021, 2500.00);
insert into tb_produtos(marca, nome, modelo, versao, preco) values ("Xiaomi", "celular", "Redmi", 9, 700.00);
insert into tb_produtos(marca, nome, modelo, versao, preco) values ("Dell", "notebook", "Inspiron", 15, 2400.00);
insert into tb_produtos(marca, nome, modelo, versao, preco) values ("JBL", "fone", "T500BT", 2021, 300.00);
insert into tb_produtos(marca, nome, modelo, versao, preco) values ("LG", "televisão", "Smart UHD 4K", 55, 2800.00);
insert into tb_produtos(marca, nome, modelo, versao, preco) values ("Amazon", "autofalante", "AlexaEcoDot", 4, 375.00);

alter table tb_produtos modify preco decimal(8,2);

select * from tb_produtos where preco < 500.00;

select * from tb_produtos where preco > 500.00;

update tb_produtos set preco = 2650.00 where id = 6;

select * from tb_produtos;
