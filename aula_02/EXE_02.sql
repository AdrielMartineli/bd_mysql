-- 1
create database db_ecommerce;

-- 2
use db_ecommerce;
create table tb_produtos(
id bigint auto_increment primary key,
nome varchar(255) not null,
preco decimal(6,2) not null,
marca varchar(255),
quantidade int not null
);
-- 3
insert into tb_produtos(nome, preco, marca, quantidade)
values
("monitor mt loco",700,"LG",40),
("gabinete epico",400,"Corsair",60),
("teclado",200,"KNUP", 30),
("headset",600,"JBL",56),
("mouse",200,"Redragon", 70),
("microfone",400,"Gravadora epica", 30),
("Placa de video", 3000, "NVIDIA", 24),
("Processador", 400, "AMD", 15);
-- 4
select * from tb_produtos;
select * from tb_produtos where preco > 500;
-- 5 
select * from tb_produtos where preco < 500;
-- 6
update tb_produtos set quantidade = 90 where id = 2;