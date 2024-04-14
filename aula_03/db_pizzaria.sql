create database db_pizzaria_legal;
use db_pizzaria_legal;
create table tb_categorias(
id bigint auto_increment primary key,
tamanho varchar(255) not null,
borda varchar(255)
);

create table tb_pizzas(
id bigint auto_increment primary key,
tipo varchar(255) not null,
sabor varchar(255) not null,
acompanhamento varchar(255),
preco decimal (6,2) not null,
categoria_id bigint
);

alter table tb_pizzas add constraint fk_categorias_id
foreign key(categoria_id) references tb_categorias(id);

insert into tb_categorias (tamanho,borda)
values
("grande","catupiry"),
("pequena","nutella"),
("pequena","cheddar"),
("grande","ouro branco"),
("pequena","catupiry");
select * from tb_categorias;
insert into tb_pizzas (tipo, sabor, acompanhamento, preco, categoria_id)
values ('grande', 'Calabresa', 'Bacon', 30.00, 1),
       ('grande', 'Marguerita', 'Tomate', 25.00, 1),
       ('grande', 'Frango com Catupiry', 'Milho', 35.00, 1),
       ('grande', 'Portuguesa', 'Ovo', 32.00, 1),
		('pequena', 'Quatro Queijos', 'Tomate', 20.00, 5),
       ('pequena', 'Chocolate', 'Morango', 18.00, 2),
       ('pequena', 'Calabresa', 'Cebola', 22.00, 3),
       ('pequena', 'Vegetariana', 'Pimentão', 23.00, 5);
insert into tb_pizzas (tipo, sabor, acompanhamento, preco, categoria_id)
values ('grande', 'Especial de Frutos do Mar', 'Lula', 90.00, 4),
       ('grande', 'Quatro Estações Premium', 'Presunto Parma', 45.00, 4),
       ('grande', 'Gourmet de Camarão', 'Rúcula', 50.00, 4),
       ('grande', 'Premium de Trufas', 'Cogumelos', 35.00, 4),
       ('grande', 'Suprema de Carne Seca', 'Queijo Coalho', 37.00, 4);
select * from tb_pizzas;
select * from tb_pizzas where preco > 45;
select * from tb_pizzas where preco between 50 and 100;
select * from tb_pizzas where tipo like "%grande%";
select * from tb_pizzas inner join tb_categorias on tb_pizzas.categoria_id  = tb_categorias.id;
select * from tb_pizzas inner join tb_categorias on tb_pizzas.categoria_id  = tb_categorias.id
where tb_categorias.id =4;

