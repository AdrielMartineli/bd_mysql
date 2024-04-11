-- ATIVIDADE 1
-- 1
create database db_rh;

-- 2
use db_rh;
create table tb_colaboradores(
id bigint auto_increment primary key,
nome varchar(255) not null,
cargo varchar(255) not null,
idade int,
salario int not null
);

-- 3
insert into tb_colaboradores(nome, cargo, idade,salario)
values
("Wellington Rato", "Supervisor", 24, 5000),
("Rogerio Ceni", "Repositor", 19, 1500),
("Lucas Moura", "Social Media", 23, 1800),
("Dorival Jr", "Técnico Geral", 55, 10000),
("Jonathan Calleri", "Vendedor", 30, 2000),
("Alishow","Vendedor",24,2000);

-- 4
select * from tb_colaboradores;
select * from tb_colaboradores where salario > 2000;
-- 5
select * from tb_colaboradores where salario < 2000;
-- 6
update tb_colaboradores 
set salario = 6000 where id = 3;

